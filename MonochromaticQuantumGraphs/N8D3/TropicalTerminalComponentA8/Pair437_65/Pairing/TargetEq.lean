import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Pairing.Uses

/-! Structural 437/65 Pairing target equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the Pairing reduction target. -/
theorem terminalA437_65PairingReduction_target_eq :
    (∑ k : Fin 16,
      Finsupp.single (terminalA437_65PairingReductionUse8 k).targetExponent
        (signedCoefficient (terminalA437_65PairingReductionUse8 k).reduction.signExponent
          (terminalA437_65PairingReductionUse8 k).coefficient)) = 0 := by
  simp [terminalA437_65PairingReductionUse8, Fin.sum_univ_succ, signedCoefficient]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
