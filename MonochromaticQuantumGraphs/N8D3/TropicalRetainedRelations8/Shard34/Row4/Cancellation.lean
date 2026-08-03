import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 174. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row174 :
    tropicalOverlapRelation8Row174 =
      tropicalOverlapSourceCombination8Row174 := by
  simp [tropicalOverlapRelation8Row174,
    tropicalOverlapSourceCombination8Row174,
    tropicalOverlapProvenance8Row174,
    tropicalOverlapSourceIExponent8Row174,
    tropicalOverlapSourceJExponent8Row174, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
