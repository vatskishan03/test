import MonochromaticQuantumGraphs.N8D3.TropicalSupportCoordinates8.Data

/-! Bounded enumeration replay for the canonical N8D3 support table. -/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000

/-- The explicit local table contains no repeated global coordinate. -/
theorem tropicalSupportGlobalCoordinate8_injective :
    Function.Injective tropicalSupportGlobalCoordinate8 := by
  decide

/-- The local table is exactly the support mask, not merely a 144-element
subset of it. -/
theorem tropicalSupportGlobalCoordinate8_mem_iff (x : Fin 252) :
    tropicalSupportCoord8 x = true ↔
      ∃ i : Fin 144, tropicalSupportGlobalCoordinate8 i = x := by
  revert x
  decide

end MonochromaticQuantumGraphs.N8D3
