import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S067.Uses

/-!
# Source 67 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source067

/-- Sparse source-polynomial equality for source reduction 67. -/
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
    tropicalBaseRelation8, Fin.sum_univ_succ, tropicalOverlapRelation8Row103] <;> abel

end TropicalFactorB8.Internal.Source067

end

end MonochromaticQuantumGraphs.N8D3
