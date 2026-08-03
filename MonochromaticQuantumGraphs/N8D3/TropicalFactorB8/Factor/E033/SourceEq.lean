import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E033.Uses

/-!
# Factor edge 33 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor033

/-- Sparse source equality for factor edge 33. -/
theorem source_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourceRelation := by
  simp [uses, use00,
    use01,
    use02,
    use03,
    TropicalFactorB8.Internal.useOfReduction, sourceRelation,
    TropicalFactorB8.Internal.Quotient032.relation,
    Fin.sum_univ_succ] <;> abel

end TropicalFactorB8.Internal.Factor033

end

end MonochromaticQuantumGraphs.N8D3
