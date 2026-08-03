import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row0.Data

/-! Explicit coefficient cancellation for first-overlap row 25. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row25 :
    tropicalOverlapRelation8Row25 =
      tropicalOverlapSourceCombination8Row25 := by
  simp [tropicalOverlapRelation8Row25,
    tropicalOverlapSourceCombination8Row25,
    tropicalOverlapProvenance8Row25,
    tropicalOverlapSourceIExponent8Row25,
    tropicalOverlapSourceJExponent8Row25, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
