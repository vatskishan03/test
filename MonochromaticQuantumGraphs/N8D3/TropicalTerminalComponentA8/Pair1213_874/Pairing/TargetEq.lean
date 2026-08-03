import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Pairing.Uses

/-! Structural 1213/874 Pairing target equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the Pairing reduction target. -/
theorem terminalA1213_874PairingReduction_target_eq :
    (∑ k : Fin 16,
      Finsupp.single (terminalA1213_874PairingReductionUse8 k).targetExponent
        (signedCoefficient (terminalA1213_874PairingReductionUse8 k).reduction.signExponent
          (terminalA1213_874PairingReductionUse8 k).coefficient)) = 0 := by
  simp [terminalA1213_874PairingReductionUse8, Fin.sum_univ_succ, signedCoefficient]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
