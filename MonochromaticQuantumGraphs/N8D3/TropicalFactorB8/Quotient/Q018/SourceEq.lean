import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q018.Uses

/-!
# Quotient 18 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient018

/-- Sparse source equality for the quotient character reduction. -/
theorem source_eq :
    (∑ k : Fin 12,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      intermediate := by
  simp [uses, use00,
    use01,
    use02,
    use03,
    use04,
    use05,
    use06,
    use07,
    use08,
    use09,
    use10,
    use11,
    TropicalFactorB8.Internal.useOfReduction, intermediate,
    Fin.sum_univ_succ] <;> abel

end TropicalFactorB8.Internal.Quotient018

end

end MonochromaticQuantumGraphs.N8D3
