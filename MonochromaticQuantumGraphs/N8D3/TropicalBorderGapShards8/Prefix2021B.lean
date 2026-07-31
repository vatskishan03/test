import MonochromaticQuantumGraphs.N8D3.TropicalBorderData8

/-! Independent bounded kernel replays for coloring prefix
`(2,0,2,1)` and fifth color(s) `2`. -/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 1000000 in
theorem tropicalGapPrefix8_20212 :
    ∀ a5 a6 a7 : Fin 3, ∀ m : Fin 105,
      TropicalGapAt8 ![2, 0, 2, 1, 2, a5, a6, a7] m := by
  unfold TropicalGapAt8
  decide


end MonochromaticQuantumGraphs.N8D3
