# Formal Lean 4 Verification for JSP-000840

## Problem Information
- **ID**: JSP-000840
- **Title**: How many triangles must a graph have once its edge count exceeds the maximum bipartite edge count?
- **Status**: Solved
- **Mathematical Area**: Graph Theory / Extremal Graph Theory

## Historical Background & Context
Turán's Theorem establishes that every triangle-free graph on $n$ vertices contains at most $\lfloor n^2 / 4 \rfloor$ edges. Hans Rademacher (1941, unpublished) proved that any graph on $n$ vertices with $\lfloor n^2 / 4 \rfloor + 1$ edges contains at least $\lfloor n/2 \rfloor$ triangles.

Paul Erdős (1962, *Illinois Journal of Mathematics*, 6(1), 122–127) generalized this result, conjecturing exact counts for adding multiple edges beyond the Turán threshold, resolved by Vladimir Nikiforov and Nikolai Khadzhiivanov (1981, *C. R. Acad. Bulgare Sci.*).

The threshold is sharp: adding a single edge to the balanced complete bipartite graph $K_{k, k}$ ($n = 2k$) yields a graph with $k^2 + 1 = \lfloor n^2 / 4 \rfloor + 1$ edges and exactly $k = \lfloor n/2 \rfloor$ triangles.

## Verification Details
- **Lean Version**: Lean 4 core `v4.34.0`
- **Dependencies**: None (self-contained pure Lean 4)
- **Axioms**: Standard Lean kernel axioms (`propext`, `Quot.sound`)
- **Sorry / Admit**: 0
- **Formalizer**: 赵钦 (Qin Zhao, GitHub: `@Drag0ndddd1118`)
