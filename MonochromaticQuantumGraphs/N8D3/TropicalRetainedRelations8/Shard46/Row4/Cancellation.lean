import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 234. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row234 :
    tropicalOverlapRelation8Row234 =
      tropicalOverlapSourceCombination8Row234 := by
  simp [tropicalOverlapRelation8Row234,
    tropicalOverlapSourceCombination8Row234,
    tropicalOverlapProvenance8Row234,
    tropicalOverlapSourceIExponent8Row234,
    tropicalOverlapSourceJExponent8Row234, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
