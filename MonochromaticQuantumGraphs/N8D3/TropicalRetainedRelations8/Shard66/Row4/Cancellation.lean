import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row4.Data

/-! Explicit coefficient cancellation for first-overlap row 334. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Coefficientwise cancellation of the three common translated faces. -/
theorem tropicalOverlapRelation8_sourceCombination_row334 :
    tropicalOverlapRelation8Row334 =
      tropicalOverlapSourceCombination8Row334 := by
  simp [tropicalOverlapRelation8Row334,
    tropicalOverlapSourceCombination8Row334,
    tropicalOverlapProvenance8Row334,
    tropicalOverlapSourceIExponent8Row334,
    tropicalOverlapSourceJExponent8Row334, Fin.sum_univ_succ]
  abel

end

end MonochromaticQuantumGraphs.N8D3
