import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q036.Uses

/-!
# Component-A quotient row 36: intermediate source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient036

theorem source_eq :
    (∑ k : Fin 12,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      tropicalComponentAQuotientIntermediate8 36 := by
  simp [use, tropicalComponentAQuotientIntermediate8, Fin.sum_univ_succ] <;> abel

end TropicalFactorA8.Internal.Quotient036

end

end MonochromaticQuantumGraphs.N8D3
