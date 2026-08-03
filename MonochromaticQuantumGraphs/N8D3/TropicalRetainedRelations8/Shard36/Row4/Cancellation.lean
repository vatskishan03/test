import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 184. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row184 :
    tropicalOverlapRelation8Row184 =
      tropicalOverlapSourceCombination8Row184 := by
  simp [tropicalOverlapRelation8Row184,
    tropicalOverlapSourceCombination8Row184,
    tropicalOverlapProvenance8Row184,
    tropicalOverlapSourceIExponent8Row184,
    tropicalOverlapSourceJExponent8Row184, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
