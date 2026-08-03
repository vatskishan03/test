import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E026.Uses

/-!
# Factor edge 26 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor026

/-- Sparse source equality for factor edge 26. -/
theorem source_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourceRelation := by
  simp [uses, monomial00,
    monomial01,
    monomial02,
    monomial03, sourceRelation,
    TropicalFactorB8.Internal.Quotient027.relation,
    Fin.sum_univ_succ] <;> abel

end TropicalFactorB8.Internal.Factor026

end

end MonochromaticQuantumGraphs.N8D3
