import JSP_000840

namespace JSP000840

open JSP_000840

/-- Formal statement of JSP-000840 (Rademacher-Turán Problem on Triangle Counts).
"How many triangles must a graph have once its edge count exceeds the maximum bipartite edge count?"
Hans Rademacher (1941) proved that adding one edge to K_{⌊n/2⌋, ⌈n/2⌉} forces at least ⌊n/2⌋ triangles.
This statement formalizes the sharpness of Rademacher's bound on 2k vertices:
adding a single edge to K_{k, k} produces a family of at least k = ⌊(2k)/2⌋ distinct triangles,
parameterized injectively by the right part. -/
def jsp000840Statement : Prop :=
  ∀ (k : Nat), k ≥ 2 →
    ∃ (f : Fin k → Triangle k),
      (∀ r1 r2, (f r1).w = (f r2).w → r1 = r2)

end JSP000840
