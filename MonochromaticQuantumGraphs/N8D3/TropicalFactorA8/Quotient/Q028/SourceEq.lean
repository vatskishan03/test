import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q028.Uses

/-!
# Component-A quotient row 28: intermediate source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient028

theorem source_eq :
    (∑ k : Fin 12,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      intermediate := by
  simp [use, use00, use01, use02, use03, use04, use05, use06, use07, use08, use09, use10, use11, TropicalFactorA8.Internal.useOfReduction,
    intermediate, Fin.sum_univ_succ] <;> abel

end TropicalFactorA8.Internal.Quotient028

end

end MonochromaticQuantumGraphs.N8D3
