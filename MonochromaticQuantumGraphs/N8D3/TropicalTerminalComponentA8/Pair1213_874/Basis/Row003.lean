import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Data

/-! Bounded 1213/874 frozen basis row 3 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded frozen-basis replay for row 3. -/
theorem terminalA1213_874BasisRow8_eq_frozen_row003 :
    terminalA1213_874BasisRow8 (3 : Fin 31) =
      terminalA1213_874FrozenBasisRow8 (3 : Fin 31) := by
  apply SignedCharacterRow.ext <;> decide

end

end MonochromaticQuantumGraphs.N8D3
