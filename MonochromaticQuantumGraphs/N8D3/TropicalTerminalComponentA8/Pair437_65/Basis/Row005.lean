import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8.Pair437_65.Data

/-! Bounded 437/65 frozen basis row 5 -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open FactorCoverCertificate
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

/-- Bounded frozen-basis replay for row 5. -/
theorem terminalA437_65BasisRow8_eq_frozen_row005 :
    terminalA437_65BasisRow8 (5 : Fin 6) =
      terminalA437_65FrozenBasisRow8 (5 : Fin 6) := by
  apply SignedCharacterRow.ext <;> decide

/-- Bounded class-membership replay for raw basis row 0. -/
theorem terminalA437_65RawFactorId8_mem_row000 :
    terminalA437_65RawFactorId8 (0 : Fin 1) ∈
      tropicalComponentAClassMembers8 7 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
