import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 271. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row271 :
    tropicalOverlapRelation8Row271 =
      tropicalOverlapSourceCombination8Row271 := by
  simp [tropicalOverlapRelation8Row271,
    tropicalOverlapSourceCombination8Row271,
    tropicalOverlapProvenance8Row271,
    tropicalOverlapSourceIExponent8Row271,
    tropicalOverlapSourceJExponent8Row271, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
