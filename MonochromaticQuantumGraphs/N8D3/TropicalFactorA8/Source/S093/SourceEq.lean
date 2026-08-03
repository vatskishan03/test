import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S093.Uses

/-!
# Component-A source reduction 93: original polynomial equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source093

theorem source_eq :
    (∑ k : Fin 6,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      tropicalComponentAQuotientOriginalSource8 93 := by
  simp [use, tropicalComponentAQuotientOriginalSource8, Fin.sum_univ_succ] <;> abel

end TropicalFactorA8.Internal.Source093

end

end MonochromaticQuantumGraphs.N8D3
