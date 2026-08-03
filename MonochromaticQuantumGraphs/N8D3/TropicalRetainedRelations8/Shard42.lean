import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard42.Row4

/-! Lightweight dispatch for first-overlap rows 210--214. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 42. -/
def tropicalOverlapProvenance8Shard42 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row210,
  tropicalOverlapProvenance8Row211,
  tropicalOverlapProvenance8Row212,
  tropicalOverlapProvenance8Row213,
  tropicalOverlapProvenance8Row214
]

/-- Explicit targets for the five independently replayed rows in shard 42. -/
def tropicalOverlapRelation8Shard42 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row210,
  tropicalOverlapRelation8Row211,
  tropicalOverlapRelation8Row212,
  tropicalOverlapRelation8Row213,
  tropicalOverlapRelation8Row214
]

/-- Collect the five one-row provenance replays in shard 42. -/
theorem tropicalOverlapRelation8_provenance_shard42 (i : Fin 5) :
    tropicalOverlapRelation8Shard42 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard42 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard42,
      tropicalOverlapProvenance8Shard42] using
      tropicalOverlapRelation8_provenance_row210
  · simpa [tropicalOverlapRelation8Shard42,
      tropicalOverlapProvenance8Shard42] using
      tropicalOverlapRelation8_provenance_row211
  · simpa [tropicalOverlapRelation8Shard42,
      tropicalOverlapProvenance8Shard42] using
      tropicalOverlapRelation8_provenance_row212
  · simpa [tropicalOverlapRelation8Shard42,
      tropicalOverlapProvenance8Shard42] using
      tropicalOverlapRelation8_provenance_row213
  · simpa [tropicalOverlapRelation8Shard42,
      tropicalOverlapProvenance8Shard42] using
      tropicalOverlapRelation8_provenance_row214

end

end MonochromaticQuantumGraphs.N8D3
