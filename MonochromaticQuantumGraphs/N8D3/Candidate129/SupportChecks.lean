import MonochromaticQuantumGraphs.N8D3.Candidate129.SupportCombinatorics

/-! Pure finite support checks, without importing the full official environment. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem lookup_forward (i : Fin 143) : localIndex (supportGlobal i) = some i := by
  revert i
  decide

theorem lookup_backward (g : Fin 252) :
    (localIndex g).map supportGlobal = (localIndex g).map (fun _ => g) := by
  revert g
  decide

theorem matching_edge_lt (m : Fin 105) (k : Fin 4) :
    (matchingPairs m k).1 < (matchingPairs m k).2 := by
  revert m k
  decide

theorem decodeCoordinate_coordinate {u v : Fin 8} (huv : u < v) (a b : Fin 3) :
    decodeCoordinate (coordinate u v a b) = (u, v, a, b) := by
  revert u v a b
  decide

end MonochromaticQuantumGraphs.N8D3.Candidate129
