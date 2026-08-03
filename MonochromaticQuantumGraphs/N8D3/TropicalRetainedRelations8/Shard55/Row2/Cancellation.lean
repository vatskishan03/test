import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 277. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row277 :
    tropicalOverlapRelation8Row277 =
      tropicalOverlapSourceCombination8Row277 := by
  simp [tropicalOverlapRelation8Row277,
    tropicalOverlapSourceCombination8Row277,
    tropicalOverlapProvenance8Row277,
    tropicalOverlapSourceIExponent8Row277,
    tropicalOverlapSourceJExponent8Row277, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
