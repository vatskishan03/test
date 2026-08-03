import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S135.Uses

/-!
# Source 135 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source135

/-- Sparse source-polynomial equality for source reduction 135. -/
theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourcePolynomial := by
  simp [uses, use00,
    use01,
    use02,
    use03,
    use04,
    use05,
    TropicalFactorB8.Internal.useOfReduction, sourcePolynomial,
    tropicalBaseRelation8, Fin.sum_univ_succ, tropicalOverlapRelation8Row318] <;> abel

end TropicalFactorB8.Internal.Source135

end

end MonochromaticQuantumGraphs.N8D3
