import MonochromaticQuantumGraphs.N8D3.TropicalBorderData8

/-! Independent bounded kernel replays for coloring prefix
`(0,0,1,2)` and fifth color(s) `0,1`. -/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 1000000 in
theorem tropicalGapPrefix8_00120 :
    ∀ a5 a6 a7 : Fin 3, ∀ m : Fin 105,
      TropicalGapAt8 ![0, 0, 1, 2, 0, a5, a6, a7] m := by
  unfold TropicalGapAt8
  decide
set_option maxRecDepth 100000 in
set_option maxHeartbeats 1000000 in
theorem tropicalGapPrefix8_00121 :
    ∀ a5 a6 a7 : Fin 3, ∀ m : Fin 105,
      TropicalGapAt8 ![0, 0, 1, 2, 1, a5, a6, a7] m := by
  unfold TropicalGapAt8
  decide


end MonochromaticQuantumGraphs.N8D3
