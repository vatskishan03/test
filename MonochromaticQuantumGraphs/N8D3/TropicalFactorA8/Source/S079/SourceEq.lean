import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S079.Uses

/-!
# Component-A source reduction 79: original polynomial equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source079

theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      sourcePolynomial := by
  simp [use, use00, use01, use02, use03, use04, use05, TropicalFactorA8.Internal.useOfReduction,
    sourcePolynomial, tropicalOverlapRelation8Row224,
    tropicalOverlapDegreeFiveExponent8, Fin.sum_univ_succ] <;> abel_nf

end TropicalFactorA8.Internal.Source079

end

end MonochromaticQuantumGraphs.N8D3
