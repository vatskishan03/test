import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard45.Row4

/-! Lightweight dispatch for first-overlap rows 225--229. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 45. -/
def tropicalOverlapProvenance8Shard45 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row225,
  tropicalOverlapProvenance8Row226,
  tropicalOverlapProvenance8Row227,
  tropicalOverlapProvenance8Row228,
  tropicalOverlapProvenance8Row229
]

/-- Explicit targets for the five independently replayed rows in shard 45. -/
def tropicalOverlapRelation8Shard45 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row225,
  tropicalOverlapRelation8Row226,
  tropicalOverlapRelation8Row227,
  tropicalOverlapRelation8Row228,
  tropicalOverlapRelation8Row229
]

/-- Collect the five one-row provenance replays in shard 45. -/
theorem tropicalOverlapRelation8_provenance_shard45 (i : Fin 5) :
    tropicalOverlapRelation8Shard45 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard45 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard45,
      tropicalOverlapProvenance8Shard45] using
      tropicalOverlapRelation8_provenance_row225
  · simpa [tropicalOverlapRelation8Shard45,
      tropicalOverlapProvenance8Shard45] using
      tropicalOverlapRelation8_provenance_row226
  · simpa [tropicalOverlapRelation8Shard45,
      tropicalOverlapProvenance8Shard45] using
      tropicalOverlapRelation8_provenance_row227
  · simpa [tropicalOverlapRelation8Shard45,
      tropicalOverlapProvenance8Shard45] using
      tropicalOverlapRelation8_provenance_row228
  · simpa [tropicalOverlapRelation8Shard45,
      tropicalOverlapProvenance8Shard45] using
      tropicalOverlapRelation8_provenance_row229

end

end MonochromaticQuantumGraphs.N8D3
