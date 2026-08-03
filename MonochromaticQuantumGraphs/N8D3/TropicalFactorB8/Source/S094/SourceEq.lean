import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S094.Uses

/-!
# Source 94 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source094

/-- Sparse source-polynomial equality for source reduction 94. -/
theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      sourcePolynomial := by
  simp [uses, monomial00,
    monomial01,
    monomial02,
    monomial03,
    monomial04,
    monomial05, sourcePolynomial,
    tropicalBaseRelation8, Fin.sum_univ_succ, tropicalOverlapRelation8Row226] <;> abel

end TropicalFactorB8.Internal.Source094

end

end MonochromaticQuantumGraphs.N8D3
