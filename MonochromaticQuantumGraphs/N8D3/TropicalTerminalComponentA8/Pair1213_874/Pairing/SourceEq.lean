import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Pairing.Uses

/-! Structural 1213/874 Pairing source equality -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Structural reconstruction of the Pairing reduction source. -/
theorem terminalA1213_874PairingReduction_source_eq :
    (∑ k : Fin 16,
      Finsupp.single (terminalA1213_874PairingReductionUse8 k).sourceExponent
        (terminalA1213_874PairingReductionUse8 k).coefficient) = terminalA1213_874PairingSource8 := by
  simp [terminalA1213_874PairingReductionUse8, Fin.sum_univ_succ, terminalA1213_874PairingSource8]
  <;> abel

end

end MonochromaticQuantumGraphs.N8D3
