import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 181. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row181 :
    tropicalOverlapRelation8Row181 =
      tropicalOverlapSourceCombination8Row181 := by
  simp [tropicalOverlapRelation8Row181,
    tropicalOverlapSourceCombination8Row181,
    tropicalOverlapProvenance8Row181,
    tropicalOverlapSourceIExponent8Row181,
    tropicalOverlapSourceJExponent8Row181, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
