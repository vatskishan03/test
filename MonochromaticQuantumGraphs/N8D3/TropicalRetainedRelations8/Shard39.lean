import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard39.Row4

/-! Lightweight dispatch for first-overlap rows 195--199. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 39. -/
def tropicalOverlapProvenance8Shard39 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row195,
  tropicalOverlapProvenance8Row196,
  tropicalOverlapProvenance8Row197,
  tropicalOverlapProvenance8Row198,
  tropicalOverlapProvenance8Row199
]

/-- Explicit targets for the five independently replayed rows in shard 39. -/
def tropicalOverlapRelation8Shard39 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row195,
  tropicalOverlapRelation8Row196,
  tropicalOverlapRelation8Row197,
  tropicalOverlapRelation8Row198,
  tropicalOverlapRelation8Row199
]

/-- Collect the five one-row provenance replays in shard 39. -/
theorem tropicalOverlapRelation8_provenance_shard39 (i : Fin 5) :
    tropicalOverlapRelation8Shard39 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard39 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard39,
      tropicalOverlapProvenance8Shard39] using
      tropicalOverlapRelation8_provenance_row195
  · simpa [tropicalOverlapRelation8Shard39,
      tropicalOverlapProvenance8Shard39] using
      tropicalOverlapRelation8_provenance_row196
  · simpa [tropicalOverlapRelation8Shard39,
      tropicalOverlapProvenance8Shard39] using
      tropicalOverlapRelation8_provenance_row197
  · simpa [tropicalOverlapRelation8Shard39,
      tropicalOverlapProvenance8Shard39] using
      tropicalOverlapRelation8_provenance_row198
  · simpa [tropicalOverlapRelation8Shard39,
      tropicalOverlapProvenance8Shard39] using
      tropicalOverlapRelation8_provenance_row199

end

end MonochromaticQuantumGraphs.N8D3
