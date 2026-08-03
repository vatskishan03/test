import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair1213_874.Data

/-! Bounded 1213/874 frozen basis row 17 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded frozen-basis replay for row 17. -/
theorem terminalA1213_874BasisRow8_eq_frozen_row017 :
    terminalA1213_874BasisRow8 (17 : Fin 31) =
      terminalA1213_874FrozenBasisRow8 (17 : Fin 31) := by
  apply SignedCharacterRow.ext <;> decide

/-- Bounded class-membership replay for raw basis row 12. -/
theorem terminalA1213_874RawFactorId8_mem_row012 :
    terminalA1213_874RawFactorId8 (12 : Fin 26) ∈
      tropicalComponentAClassMembers8 2 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
