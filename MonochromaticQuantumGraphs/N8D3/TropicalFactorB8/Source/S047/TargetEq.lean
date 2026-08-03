import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S047.Uses

/-!
# Source 47 sparse target equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source047

/-- Sparse signed target-polynomial equality. -/
theorem target_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).targetExponent
        (signedCoefficient (uses k).reduction.signExponent
          (uses k).coefficient)) =
      (-1 : ℤ) • reduced := by
  simp [uses, use00,
    use01,
    use02,
    use03,
    use04,
    use05,
    TropicalFactorB8.Internal.useOfReduction,
    monomial00,
    monomial01,
    monomial02,
    monomial03,
    monomial04,
    monomial05, reduced,
    signedCoefficient, Fin.sum_univ_succ] <;> abel

end TropicalFactorB8.Internal.Source047

end

end MonochromaticQuantumGraphs.N8D3
