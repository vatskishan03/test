import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 96. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row96 :
    tropicalOverlapRelation8Row96 =
      tropicalOverlapSourceCombination8Row96 := by
  simp [tropicalOverlapRelation8Row96,
    tropicalOverlapSourceCombination8Row96,
    tropicalOverlapProvenance8Row96,
    tropicalOverlapSourceIExponent8Row96,
    tropicalOverlapSourceJExponent8Row96, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
