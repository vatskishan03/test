import MonochromaticQuantumGraphs.N8D3.TropicalSupportCoordinates8.Data

/-! Bounded support-membership replay for the N8D3 local table. -/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000

/-- Support lookup commutes with the global-coordinate decoder. -/
theorem tropicalEdgeSupported8_edgeOfGlobalCoordinate8 (x : Fin 252) :
    tropicalEdgeSupported8 (tropicalEdgeOfGlobalCoordinate8 x) =
      tropicalSupportCoord8 x := by
  revert x
  decide

/-- Every entry in the explicit local table is a declared support coordinate. -/
theorem tropicalSupportGlobalCoordinate8_supported (i : Fin 144) :
    tropicalSupportCoord8 (tropicalSupportGlobalCoordinate8 i) = true := by
  revert i
  decide

end MonochromaticQuantumGraphs.N8D3
