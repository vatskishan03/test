import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row2.Data

/-! Explicit coefficient cancellation for first-overlap row 212. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row212 :
    tropicalOverlapRelation8Row212 =
      tropicalOverlapSourceCombination8Row212 := by
  simp [tropicalOverlapRelation8Row212,
    tropicalOverlapSourceCombination8Row212,
    tropicalOverlapProvenance8Row212,
    tropicalOverlapSourceIExponent8Row212,
    tropicalOverlapSourceJExponent8Row212, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
