import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard26.Row4

/-! Lightweight dispatch for first-overlap rows 130--134. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 26. -/
def tropicalOverlapProvenance8Shard26 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row130,
  tropicalOverlapProvenance8Row131,
  tropicalOverlapProvenance8Row132,
  tropicalOverlapProvenance8Row133,
  tropicalOverlapProvenance8Row134
]

/-- Explicit targets for the five independently replayed rows in shard 26. -/
def tropicalOverlapRelation8Shard26 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row130,
  tropicalOverlapRelation8Row131,
  tropicalOverlapRelation8Row132,
  tropicalOverlapRelation8Row133,
  tropicalOverlapRelation8Row134
]

/-- Collect the five one-row provenance replays in shard 26. -/
theorem tropicalOverlapRelation8_provenance_shard26 (i : Fin 5) :
    tropicalOverlapRelation8Shard26 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard26 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard26,
      tropicalOverlapProvenance8Shard26] using
      tropicalOverlapRelation8_provenance_row130
  · simpa [tropicalOverlapRelation8Shard26,
      tropicalOverlapProvenance8Shard26] using
      tropicalOverlapRelation8_provenance_row131
  · simpa [tropicalOverlapRelation8Shard26,
      tropicalOverlapProvenance8Shard26] using
      tropicalOverlapRelation8_provenance_row132
  · simpa [tropicalOverlapRelation8Shard26,
      tropicalOverlapProvenance8Shard26] using
      tropicalOverlapRelation8_provenance_row133
  · simpa [tropicalOverlapRelation8Shard26,
      tropicalOverlapProvenance8Shard26] using
      tropicalOverlapRelation8_provenance_row134

end

end MonochromaticQuantumGraphs.N8D3
