import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 293. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row293 :
    tropicalOverlapRelation8Row293 =
      tropicalOverlapSourceCombination8Row293 := by
  simp [tropicalOverlapRelation8Row293,
    tropicalOverlapSourceCombination8Row293,
    tropicalOverlapProvenance8Row293,
    tropicalOverlapSourceIExponent8Row293,
    tropicalOverlapSourceJExponent8Row293, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
