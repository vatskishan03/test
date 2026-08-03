import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard41.Row4

/-! Lightweight dispatch for first-overlap rows 205--209. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 41. -/
def tropicalOverlapProvenance8Shard41 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row205,
  tropicalOverlapProvenance8Row206,
  tropicalOverlapProvenance8Row207,
  tropicalOverlapProvenance8Row208,
  tropicalOverlapProvenance8Row209
]

/-- Explicit targets for the five independently replayed rows in shard 41. -/
def tropicalOverlapRelation8Shard41 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row205,
  tropicalOverlapRelation8Row206,
  tropicalOverlapRelation8Row207,
  tropicalOverlapRelation8Row208,
  tropicalOverlapRelation8Row209
]

/-- Collect the five one-row provenance replays in shard 41. -/
theorem tropicalOverlapRelation8_provenance_shard41 (i : Fin 5) :
    tropicalOverlapRelation8Shard41 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard41 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard41,
      tropicalOverlapProvenance8Shard41] using
      tropicalOverlapRelation8_provenance_row205
  · simpa [tropicalOverlapRelation8Shard41,
      tropicalOverlapProvenance8Shard41] using
      tropicalOverlapRelation8_provenance_row206
  · simpa [tropicalOverlapRelation8Shard41,
      tropicalOverlapProvenance8Shard41] using
      tropicalOverlapRelation8_provenance_row207
  · simpa [tropicalOverlapRelation8Shard41,
      tropicalOverlapProvenance8Shard41] using
      tropicalOverlapRelation8_provenance_row208
  · simpa [tropicalOverlapRelation8Shard41,
      tropicalOverlapProvenance8Shard41] using
      tropicalOverlapRelation8_provenance_row209

end

end MonochromaticQuantumGraphs.N8D3
