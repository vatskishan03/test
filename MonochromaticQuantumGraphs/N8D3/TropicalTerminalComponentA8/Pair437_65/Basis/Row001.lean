import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Bounded 437/65 frozen basis row 1 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded frozen-basis replay for row 1. -/
theorem terminalA437_65BasisRow8_eq_frozen_row001 :
    terminalA437_65BasisRow8 (1 : Fin 6) =
      terminalA437_65FrozenBasisRow8 (1 : Fin 6) := by
  apply SignedCharacterRow.ext <;> decide

end

end MonochromaticQuantumGraphs.N8D3
