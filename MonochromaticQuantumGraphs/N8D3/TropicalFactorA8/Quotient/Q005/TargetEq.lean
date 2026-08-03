import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q005.Uses

/-!
# Component-A quotient row 5: normalized target equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient005

theorem target_eq :
    (∑ k : Fin 12,
      Finsupp.single (use k).targetExponent
    (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      (1 : ℤ) • relation := by
  simp [use, use00, use01, use02, use03, use04, use05, use06, use07, use08, use09, use10, use11, TropicalFactorA8.Internal.useOfReduction,
    monomial00, monomial01, monomial02, monomial03, monomial04, monomial05, monomial06, monomial07, monomial08, monomial09, monomial10, monomial11, relation,
    signedCoefficient, Fin.sum_univ_succ] <;> abel

end TropicalFactorA8.Internal.Quotient005

end

end MonochromaticQuantumGraphs.N8D3
