import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard48.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard48.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard48.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard48.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard48.Row4

/-! Lightweight dispatch for first-overlap rows 240--244. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 48. -/
def tropicalOverlapProvenance8Shard48 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row240,
  tropicalOverlapProvenance8Row241,
  tropicalOverlapProvenance8Row242,
  tropicalOverlapProvenance8Row243,
  tropicalOverlapProvenance8Row244
]

/-- Explicit targets for the five independently replayed rows in shard 48. -/
def tropicalOverlapRelation8Shard48 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row240,
  tropicalOverlapRelation8Row241,
  tropicalOverlapRelation8Row242,
  tropicalOverlapRelation8Row243,
  tropicalOverlapRelation8Row244
]

/-- Collect the five one-row provenance replays in shard 48. -/
theorem tropicalOverlapRelation8_provenance_shard48 (i : Fin 5) :
    tropicalOverlapRelation8Shard48 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard48 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard48,
      tropicalOverlapProvenance8Shard48] using
      tropicalOverlapRelation8_provenance_row240
  · simpa [tropicalOverlapRelation8Shard48,
      tropicalOverlapProvenance8Shard48] using
      tropicalOverlapRelation8_provenance_row241
  · simpa [tropicalOverlapRelation8Shard48,
      tropicalOverlapProvenance8Shard48] using
      tropicalOverlapRelation8_provenance_row242
  · simpa [tropicalOverlapRelation8Shard48,
      tropicalOverlapProvenance8Shard48] using
      tropicalOverlapRelation8_provenance_row243
  · simpa [tropicalOverlapRelation8Shard48,
      tropicalOverlapProvenance8Shard48] using
      tropicalOverlapRelation8_provenance_row244

end

end MonochromaticQuantumGraphs.N8D3
