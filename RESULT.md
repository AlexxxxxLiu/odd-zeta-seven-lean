# At least one of seven odd zeta values is irrational

Jingwei Liu

## Statement

There exists an integer

$$
s\in\{7,9,11,13,15,17,19\}
$$

such that $\zeta(s)$ is irrational.

Version 1 presents a growing-determinant proof and its Lean formalization.
The [manuscript](paper/seven-odd-zeta-values-v1.pdf) defines the kernel,
the seven-coordinate matrix, the primitive normalization, and the auxiliary
prime argument, with a map to the checked source declarations.

## Formal endpoint

The theorem
`OddZetaMixed.exists_irrational_riemannZeta_seven_to_nineteen` in
[`H158SevenIrrational.lean`](OddZetaMixed/H158SevenIrrational.lean)
uses Mathlib's actual `riemannZeta`. Its statement has no supplied asymptotic,
nonvanishing, divisibility, or zeta-independence hypotheses.

## Proof organization

1. A concrete rational kernel and its derivatives produce a $2n\times2n$
   matrix whose entries are affine rational combinations of the seven zeta
   values. Partial fractions, harmonic correction terms, and the reflection
   cancellations are formalized for that kernel.
2. A nonzero formal determinant is normalized as a primitive integer
   polynomial in seven formal variables; the zero case is assigned scalar
   1 and polynomial 0. Its evaluation is the same normalized determinant used
   in the analytic estimates, rather than a separate sequence.
3. Concrete arithmetic and analytic bounds give, for every sufficiently
   large natural number $n$,
   $$
   \left|\frac{\det H_n}{c_n}\right|\le e^{-n^2/2}.
   $$
   Here $H_n=\mathtt{h158Functional}\ n$ and
   $c_n=\mathtt{h158PrimitiveScalar}\ n$.
4. If all seven values were rational with common positive denominator $Q$,
   the degree bound would make
   $$
   Q^{2n}\frac{\det H_n}{c_n}
   $$
   an integer. The rational-gate argument proves nonvanishing on an unbounded
   set of admissible indices. On that same set, the global bound eventually
   makes its absolute value less than one. This contradicts its being a
   nonzero integer.

The quantitative assembly uses arithmetic ceiling $1012$ and analytic
rate $-\mathtt{analyticExpression}+2$, with a strict gap exceeding
$1/2$.

## What is certified

The source replay and no-hypothesis acceptance check are recorded in
[`audit/2026-10-06/`](audit/2026-10-06/). The transitive proof dependencies of
the accepted endpoint use only `propext`, `Classical.choice`, and `Quot.sound`.

This note accompanies the machine-checked development. See the README for
fixed versions, provenance, and replay commands.
