import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard64.Row4

/-! Lightweight dispatch for first-overlap rows 320--324. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 64. -/
def tropicalOverlapProvenance8Shard64 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row320,
  tropicalOverlapProvenance8Row321,
  tropicalOverlapProvenance8Row322,
  tropicalOverlapProvenance8Row323,
  tropicalOverlapProvenance8Row324
]

/-- Explicit targets for the five independently replayed rows in shard 64. -/
def tropicalOverlapRelation8Shard64 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row320,
  tropicalOverlapRelation8Row321,
  tropicalOverlapRelation8Row322,
  tropicalOverlapRelation8Row323,
  tropicalOverlapRelation8Row324
]

/-- Collect the five one-row provenance replays in shard 64. -/
theorem tropicalOverlapRelation8_provenance_shard64 (i : Fin 5) :
    tropicalOverlapRelation8Shard64 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard64 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard64,
      tropicalOverlapProvenance8Shard64] using
      tropicalOverlapRelation8_provenance_row320
  · simpa [tropicalOverlapRelation8Shard64,
      tropicalOverlapProvenance8Shard64] using
      tropicalOverlapRelation8_provenance_row321
  · simpa [tropicalOverlapRelation8Shard64,
      tropicalOverlapProvenance8Shard64] using
      tropicalOverlapRelation8_provenance_row322
  · simpa [tropicalOverlapRelation8Shard64,
      tropicalOverlapProvenance8Shard64] using
      tropicalOverlapRelation8_provenance_row323
  · simpa [tropicalOverlapRelation8Shard64,
      tropicalOverlapProvenance8Shard64] using
      tropicalOverlapRelation8_provenance_row324

end

end MonochromaticQuantumGraphs.N8D3
