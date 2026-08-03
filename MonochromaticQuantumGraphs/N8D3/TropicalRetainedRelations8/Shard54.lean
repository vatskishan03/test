import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard54.Row4

/-! Lightweight dispatch for first-overlap rows 270--274. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 54. -/
def tropicalOverlapProvenance8Shard54 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row270,
  tropicalOverlapProvenance8Row271,
  tropicalOverlapProvenance8Row272,
  tropicalOverlapProvenance8Row273,
  tropicalOverlapProvenance8Row274
]

/-- Explicit targets for the five independently replayed rows in shard 54. -/
def tropicalOverlapRelation8Shard54 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row270,
  tropicalOverlapRelation8Row271,
  tropicalOverlapRelation8Row272,
  tropicalOverlapRelation8Row273,
  tropicalOverlapRelation8Row274
]

/-- Collect the five one-row provenance replays in shard 54. -/
theorem tropicalOverlapRelation8_provenance_shard54 (i : Fin 5) :
    tropicalOverlapRelation8Shard54 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard54 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard54,
      tropicalOverlapProvenance8Shard54] using
      tropicalOverlapRelation8_provenance_row270
  · simpa [tropicalOverlapRelation8Shard54,
      tropicalOverlapProvenance8Shard54] using
      tropicalOverlapRelation8_provenance_row271
  · simpa [tropicalOverlapRelation8Shard54,
      tropicalOverlapProvenance8Shard54] using
      tropicalOverlapRelation8_provenance_row272
  · simpa [tropicalOverlapRelation8Shard54,
      tropicalOverlapProvenance8Shard54] using
      tropicalOverlapRelation8_provenance_row273
  · simpa [tropicalOverlapRelation8Shard54,
      tropicalOverlapProvenance8Shard54] using
      tropicalOverlapRelation8_provenance_row274

end

end MonochromaticQuantumGraphs.N8D3
