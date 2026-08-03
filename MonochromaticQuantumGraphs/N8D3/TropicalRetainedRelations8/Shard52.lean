import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard52.Row4

/-! Lightweight dispatch for first-overlap rows 260--264. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 52. -/
def tropicalOverlapProvenance8Shard52 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row260,
  tropicalOverlapProvenance8Row261,
  tropicalOverlapProvenance8Row262,
  tropicalOverlapProvenance8Row263,
  tropicalOverlapProvenance8Row264
]

/-- Explicit targets for the five independently replayed rows in shard 52. -/
def tropicalOverlapRelation8Shard52 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row260,
  tropicalOverlapRelation8Row261,
  tropicalOverlapRelation8Row262,
  tropicalOverlapRelation8Row263,
  tropicalOverlapRelation8Row264
]

/-- Collect the five one-row provenance replays in shard 52. -/
theorem tropicalOverlapRelation8_provenance_shard52 (i : Fin 5) :
    tropicalOverlapRelation8Shard52 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard52 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard52,
      tropicalOverlapProvenance8Shard52] using
      tropicalOverlapRelation8_provenance_row260
  · simpa [tropicalOverlapRelation8Shard52,
      tropicalOverlapProvenance8Shard52] using
      tropicalOverlapRelation8_provenance_row261
  · simpa [tropicalOverlapRelation8Shard52,
      tropicalOverlapProvenance8Shard52] using
      tropicalOverlapRelation8_provenance_row262
  · simpa [tropicalOverlapRelation8Shard52,
      tropicalOverlapProvenance8Shard52] using
      tropicalOverlapRelation8_provenance_row263
  · simpa [tropicalOverlapRelation8Shard52,
      tropicalOverlapProvenance8Shard52] using
      tropicalOverlapRelation8_provenance_row264

end

end MonochromaticQuantumGraphs.N8D3
