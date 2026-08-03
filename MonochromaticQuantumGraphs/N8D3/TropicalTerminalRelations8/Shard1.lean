import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8.Data

/-! Bounded support-filter replay shard 1 for the official terminal rows. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem tropicalTerminalSupportedMatchingSet8_row4 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 4) m = true) =
        tropicalTerminalMatchingSet8 4 := by
  decide

theorem tropicalTerminalSupportedMatchingSet8_row5 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 5) m = true) =
        tropicalTerminalMatchingSet8 5 := by
  decide

theorem tropicalTerminalSupportedMatchingSet8_row6 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 6) m = true) =
        tropicalTerminalMatchingSet8 6 := by
  decide

theorem tropicalTerminalSupportedMatchingSet8_row7 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 7) m = true) =
        tropicalTerminalMatchingSet8 7 := by
  decide

end

end MonochromaticQuantumGraphs.N8D3
