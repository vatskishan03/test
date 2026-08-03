import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S031.Uses

/-!
# Component-A source reduction 31: original polynomial equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source031

theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      sourcePolynomial := by
  simp [use, monomial00, monomial01, monomial02, monomial03, monomial04, monomial05, sourcePolynomial, tropicalOverlapRelation8Row74,
    tropicalOverlapDegreeFiveExponent8, Fin.sum_univ_succ] <;> abel

end TropicalFactorA8.Internal.Source031

end

end MonochromaticQuantumGraphs.N8D3
