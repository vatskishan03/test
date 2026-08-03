import MonochromaticQuantumGraphs.N8D3.TropicalSupportCoordinates8.Data

/-! Bounded decoder replay for the canonical N8D3 support coordinates. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph

set_option maxRecDepth 100000

/-- Decoding and then re-encoding a global coordinate is the identity. -/
theorem tropicalCoordinate8_edgeOfGlobalCoordinate8 (x : Fin 252) :
    let e := tropicalEdgeOfGlobalCoordinate8 x
    tropicalCoordinate8 e.u e.v e.i e.j = x := by
  revert x
  decide

/-- The decoder is also a left inverse on every canonically ordered edge. -/
theorem tropicalEdgeOfGlobalCoordinate8_coordinate8
    {u v : Fin 8} (huv : u < v) (a b : Fin 3) :
    tropicalEdgeOfGlobalCoordinate8 (tropicalCoordinate8 u v a b) =
      mkEdge u v a b := by
  revert u v a b
  decide

end MonochromaticQuantumGraphs.N8D3
