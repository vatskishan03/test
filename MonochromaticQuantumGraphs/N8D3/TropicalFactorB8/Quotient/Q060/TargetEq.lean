import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q060.Uses

/-!
# Quotient 60 sparse target equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient060

/-- Sparse signed target-polynomial equality. -/
theorem target_eq :
    (∑ k : Fin 12,
      Finsupp.single (uses k).targetExponent
        (signedCoefficient (uses k).reduction.signExponent
          (uses k).coefficient)) =
      (-1 : ℤ) • relation := by
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
    TropicalFactorB8.Internal.useOfReduction,
    monomial00,
    monomial01,
    monomial02,
    monomial03,
    monomial04,
    monomial05,
    monomial06,
    monomial07,
    monomial08,
    monomial09,
    monomial10,
    monomial11, relation,
    signedCoefficient, Fin.sum_univ_succ] <;> abel

end TropicalFactorB8.Internal.Quotient060

end

end MonochromaticQuantumGraphs.N8D3
