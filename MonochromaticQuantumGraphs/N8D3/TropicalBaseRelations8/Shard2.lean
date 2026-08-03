import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Data

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000

set_option maxHeartbeats 10000000 in
theorem tropicalBaseSupportedMatchingSet8_shard2 (i : Fin 20) :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8
        (tropicalBaseColoring8 (tropicalBaseRowOfShard8 2 i)) m = true) =
      tropicalBaseMatchingSet8 := by
  revert i
  decide

end MonochromaticQuantumGraphs.N8D3
