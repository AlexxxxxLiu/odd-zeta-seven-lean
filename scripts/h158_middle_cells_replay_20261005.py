"""Replay generated middle-cell modules with ordinary Lean kernel checking.

Invoke under `lake env`. Each successful module receives its normal olean;
failures are reported with their exact Lean diagnostics, never admitted.
"""

import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import json
from pathlib import Path
import subprocess
import time


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--jobs", type=int, default=1)
    parser.add_argument("--threads", type=int, default=1,
                        help="Lean threads per module; defaults to one to limit memory pressure")
    parser.add_argument("--memory", type=int, default=4096,
                        help="Lean per-module memory limit in megabytes")
    parser.add_argument("--start", type=int, default=0,
                        help="First zero-based module index in the sorted match list")
    parser.add_argument("--stop", type=int,
                        help="Exclusive zero-based module index in the sorted match list")
    parser.add_argument("--limit", type=int)
    parser.add_argument("--pattern", default="H158MiddleCellsData[0-9][0-9][0-9].lean")
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    sources = sorted((root / "OddZetaMixed").glob(args.pattern))
    sources = sources[args.start:args.stop]
    if args.limit is not None:
        sources = sources[:args.limit]
    deps = [root / ".lake/build/lib/lean/OddZetaMixed" / f"{name}.olean" for name in
            ("H158MiddleCellsStep", "H158MiddleCells", "H158MiddleCellsGrid",
             "H158MiddleCellsFastGrid")]
    dep_time = max(p.stat().st_mtime for p in deps)
    start = time.monotonic()

    def replay(source):
        target = root / ".lake/build/lib/lean/OddZetaMixed" / (source.stem + ".olean")
        if target.exists() and target.stat().st_mtime >= max(source.stat().st_mtime, dep_time):
            return source.name, True, "cached"
        result = subprocess.run(["lean", f"-j{args.threads}", f"-M{args.memory}",
                                 "-o", str(target), str(source)], cwd=root,
                                text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        return source.name, result.returncode == 0, result.stdout

    failures = []
    with ThreadPoolExecutor(max_workers=args.jobs) as workers:
        futures = [workers.submit(replay, source) for source in sources]
        for done, future in enumerate(as_completed(futures), 1):
            name, ok, output = future.result()
            if not ok:
                failures.append(name)
                print(json.dumps(dict(failed=name, output=output)), flush=True)
            if done == 1 or done % 8 == 0 or done == len(sources):
                print(json.dumps(dict(completed=done, total=len(sources), failures=failures,
                                      elapsed_seconds=round(time.monotonic() - start, 1))), flush=True)
    raise SystemExit(bool(failures))


if __name__ == "__main__":
    main()
