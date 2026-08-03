import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8.Data

/-! Bounded support-filter replay shard 0 for the official terminal rows. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem tropicalTerminalSupportedMatchingSet8_row0 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 0) m = true) =
        tropicalTerminalMatchingSet8 0 := by
  decide

theorem tropicalTerminalSupportedMatchingSet8_row1 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 1) m = true) =
        tropicalTerminalMatchingSet8 1 := by
  decide

theorem tropicalTerminalSupportedMatchingSet8_row2 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 2) m = true) =
        tropicalTerminalMatchingSet8 2 := by
  decide

theorem tropicalTerminalSupportedMatchingSet8_row3 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 3) m = true) =
        tropicalTerminalMatchingSet8 3 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
