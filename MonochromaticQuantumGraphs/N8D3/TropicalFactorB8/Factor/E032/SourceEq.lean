import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E032.Uses

/-!
# Factor edge 32 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor032

/-- Sparse source equality for factor edge 32. -/
theorem source_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourceRelation := by
  simp [uses, monomial00,
    monomial01,
    monomial02,
    monomial03, sourceRelation,
    TropicalFactorB8.Internal.Quotient023.relation,
    Fin.sum_univ_succ] <;> abel

end TropicalFactorB8.Internal.Factor032

end

end MonochromaticQuantumGraphs.N8D3
