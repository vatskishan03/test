import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard47.Row4

/-! Lightweight dispatch for first-overlap rows 235--239. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 47. -/
def tropicalOverlapProvenance8Shard47 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row235,
  tropicalOverlapProvenance8Row236,
  tropicalOverlapProvenance8Row237,
  tropicalOverlapProvenance8Row238,
  tropicalOverlapProvenance8Row239
]

/-- Explicit targets for the five independently replayed rows in shard 47. -/
def tropicalOverlapRelation8Shard47 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row235,
  tropicalOverlapRelation8Row236,
  tropicalOverlapRelation8Row237,
  tropicalOverlapRelation8Row238,
  tropicalOverlapRelation8Row239
]

/-- Collect the five one-row provenance replays in shard 47. -/
theorem tropicalOverlapRelation8_provenance_shard47 (i : Fin 5) :
    tropicalOverlapRelation8Shard47 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard47 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard47,
      tropicalOverlapProvenance8Shard47] using
      tropicalOverlapRelation8_provenance_row235
  · simpa [tropicalOverlapRelation8Shard47,
      tropicalOverlapProvenance8Shard47] using
      tropicalOverlapRelation8_provenance_row236
  · simpa [tropicalOverlapRelation8Shard47,
      tropicalOverlapProvenance8Shard47] using
      tropicalOverlapRelation8_provenance_row237
  · simpa [tropicalOverlapRelation8Shard47,
      tropicalOverlapProvenance8Shard47] using
      tropicalOverlapRelation8_provenance_row238
  · simpa [tropicalOverlapRelation8Shard47,
      tropicalOverlapProvenance8Shard47] using
      tropicalOverlapRelation8_provenance_row239

end

end MonochromaticQuantumGraphs.N8D3
