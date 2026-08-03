import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard62.Row4

/-! Lightweight dispatch for first-overlap rows 310--314. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 62. -/
def tropicalOverlapProvenance8Shard62 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row310,
  tropicalOverlapProvenance8Row311,
  tropicalOverlapProvenance8Row312,
  tropicalOverlapProvenance8Row313,
  tropicalOverlapProvenance8Row314
]

/-- Explicit targets for the five independently replayed rows in shard 62. -/
def tropicalOverlapRelation8Shard62 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row310,
  tropicalOverlapRelation8Row311,
  tropicalOverlapRelation8Row312,
  tropicalOverlapRelation8Row313,
  tropicalOverlapRelation8Row314
]

/-- Collect the five one-row provenance replays in shard 62. -/
theorem tropicalOverlapRelation8_provenance_shard62 (i : Fin 5) :
    tropicalOverlapRelation8Shard62 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard62 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard62,
      tropicalOverlapProvenance8Shard62] using
      tropicalOverlapRelation8_provenance_row310
  · simpa [tropicalOverlapRelation8Shard62,
      tropicalOverlapProvenance8Shard62] using
      tropicalOverlapRelation8_provenance_row311
  · simpa [tropicalOverlapRelation8Shard62,
      tropicalOverlapProvenance8Shard62] using
      tropicalOverlapRelation8_provenance_row312
  · simpa [tropicalOverlapRelation8Shard62,
      tropicalOverlapProvenance8Shard62] using
      tropicalOverlapRelation8_provenance_row313
  · simpa [tropicalOverlapRelation8Shard62,
      tropicalOverlapProvenance8Shard62] using
      tropicalOverlapRelation8_provenance_row314

end

end MonochromaticQuantumGraphs.N8D3
