# Formalization of JSP-000840 (Rademacher-Turán Problem on Triangle Counts)

## Problem Overview

**Catalog ID:** [JSP-000840](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0801-0900.md#JSP-000840)  
**Mathematical Area:** Graph theory / Extremal graph theory  

### Problem Statement

How many triangles must a graph have once its edge count exceeds the maximum bipartite edge count?

### Resolution

Turán's Theorem establishes that every triangle-free graph on $n$ vertices contains at most $\lfloor n^2 / 4 \rfloor$ edges. Hans Rademacher (1941, unpublished; cited in Erdős 1955) proved that any graph on $n$ vertices with $\lfloor n^2 / 4 \rfloor + 1$ edges must contain at least $\lfloor n/2 \rfloor$ triangles.

Paul Erdős (1962, *On a theorem of Rademacher-Turán*, Illinois J. Math. 6 (1962), 122–127) generalized this question. The bound $\lfloor n/2 \rfloor$ is sharp: adding a single edge to the balanced complete bipartite graph $K_{k, k}$ ($n = 2k$) yields a graph with $k^2 + 1 = \lfloor n^2 / 4 \rfloor + 1$ edges and a family of exactly $k = \lfloor n/2 \rfloor$ distinct triangles parameterized by the opposite part.

## Formalization Details

- **Contract Specification:** `Challenge.lean` defines `JSP000840.jsp000840Statement`.
- **Implementation & Proof:** `Submission.lean` bridges to the graph formalization in `JSP_000840.lean`.
- **Main Theorem:**
  ```lean
  theorem jsp_000840_solved : jsp000840Statement := by
    intro k hk
    exact JSP_000840.jsp_000840_sharpness k hk
  ```
- **Axiom Audit:**
  `#print axioms jsp_000840_solved` depends strictly on standard foundational Lean axioms:
  ```lean
  [Quot.sound, propext]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`, zero custom axioms.

## Verification & Reproducibility

### Toolchain
- **Lean:** `leanprover/lean4:v4.34.0` (pure Lean core, zero external library dependencies).

### Automated Verification
Run the self-contained verification script:
```bash
python3 check.py
```
This script validates:
1. Complete compilation via `lake build`.
2. Clean source check (0 `sorry`, 0 `admit`, 0 `axiom`).
3. Definitional equality bridge contract check against `Challenge.lean`.
4. Strict foundational axiom whitelist conformance.

## Attribution & Provenance
- **Mathematical Solution:** Hans Rademacher (1941) and Paul Erdős (1962).
- **Formal Proof Author:** 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
