import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 239. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row239 :
    tropicalOverlapRelation8Row239 =
      tropicalOverlapSourceCombination8Row239 := by
  simp [tropicalOverlapRelation8Row239,
    tropicalOverlapSourceCombination8Row239,
    tropicalOverlapProvenance8Row239,
    tropicalOverlapSourceIExponent8Row239,
    tropicalOverlapSourceJExponent8Row239, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
