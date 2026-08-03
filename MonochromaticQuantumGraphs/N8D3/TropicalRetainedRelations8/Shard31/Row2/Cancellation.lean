import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 157. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row157 :
    tropicalOverlapRelation8Row157 =
      tropicalOverlapSourceCombination8Row157 := by
  simp [tropicalOverlapRelation8Row157,
    tropicalOverlapSourceCombination8Row157,
    tropicalOverlapProvenance8Row157,
    tropicalOverlapSourceIExponent8Row157,
    tropicalOverlapSourceJExponent8Row157, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
