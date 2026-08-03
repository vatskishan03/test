import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E036.Uses

/-!
# Factor edge 36 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor036

/-- Sparse source equality for factor edge 36. -/
theorem source_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourceRelation := by
  simp [uses, monomial00,
    monomial01,
    monomial02,
    monomial03, sourceRelation,
    TropicalFactorB8.Internal.Quotient034.relation,
    Fin.sum_univ_succ] <;> abel

end TropicalFactorB8.Internal.Factor036

end

end MonochromaticQuantumGraphs.N8D3
