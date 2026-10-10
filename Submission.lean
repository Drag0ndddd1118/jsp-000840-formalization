import Challenge
import JSP_000840

namespace JSP000840

/-- DefEq bridge proving JSP-000840. -/
theorem jsp_000840_solved : jsp000840Statement := by
  intro k hk
  exact JSP_000840.jsp_000840_sharpness k hk

#print axioms jsp_000840_solved

end JSP000840
