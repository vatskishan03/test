import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row3.Data

/-! Explicit coefficient cancellation for first-overlap row 38. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row38 :
    tropicalOverlapRelation8Row38 =
      tropicalOverlapSourceCombination8Row38 := by
  simp [tropicalOverlapRelation8Row38,
    tropicalOverlapSourceCombination8Row38,
    tropicalOverlapProvenance8Row38,
    tropicalOverlapSourceIExponent8Row38,
    tropicalOverlapSourceJExponent8Row38, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
