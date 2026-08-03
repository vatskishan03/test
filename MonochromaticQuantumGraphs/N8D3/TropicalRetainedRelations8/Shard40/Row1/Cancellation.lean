import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row1.Data

/-! Explicit coefficient cancellation for first-overlap row 201. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row201 :
    tropicalOverlapRelation8Row201 =
      tropicalOverlapSourceCombination8Row201 := by
  simp [tropicalOverlapRelation8Row201,
    tropicalOverlapSourceCombination8Row201,
    tropicalOverlapProvenance8Row201,
    tropicalOverlapSourceIExponent8Row201,
    tropicalOverlapSourceJExponent8Row201, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
