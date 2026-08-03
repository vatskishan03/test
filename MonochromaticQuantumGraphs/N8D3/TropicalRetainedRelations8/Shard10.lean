import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard10.Row4

/-! Lightweight dispatch for first-overlap rows 50--54. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 10. -/
def tropicalOverlapProvenance8Shard10 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row50,
  tropicalOverlapProvenance8Row51,
  tropicalOverlapProvenance8Row52,
  tropicalOverlapProvenance8Row53,
  tropicalOverlapProvenance8Row54
]

/-- Explicit targets for the five independently replayed rows in shard 10. -/
def tropicalOverlapRelation8Shard10 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row50,
  tropicalOverlapRelation8Row51,
  tropicalOverlapRelation8Row52,
  tropicalOverlapRelation8Row53,
  tropicalOverlapRelation8Row54
]

/-- Collect the five one-row provenance replays in shard 10. -/
theorem tropicalOverlapRelation8_provenance_shard10 (i : Fin 5) :
    tropicalOverlapRelation8Shard10 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard10 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard10,
      tropicalOverlapProvenance8Shard10] using
      tropicalOverlapRelation8_provenance_row50
  · simpa [tropicalOverlapRelation8Shard10,
      tropicalOverlapProvenance8Shard10] using
      tropicalOverlapRelation8_provenance_row51
  · simpa [tropicalOverlapRelation8Shard10,
      tropicalOverlapProvenance8Shard10] using
      tropicalOverlapRelation8_provenance_row52
  · simpa [tropicalOverlapRelation8Shard10,
      tropicalOverlapProvenance8Shard10] using
      tropicalOverlapRelation8_provenance_row53
  · simpa [tropicalOverlapRelation8Shard10,
      tropicalOverlapProvenance8Shard10] using
      tropicalOverlapRelation8_provenance_row54

end

end MonochromaticQuantumGraphs.N8D3
