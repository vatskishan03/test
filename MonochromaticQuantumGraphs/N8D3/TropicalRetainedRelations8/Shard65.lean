import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard65.Row4

/-! Lightweight dispatch for first-overlap rows 325--329. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 65. -/
def tropicalOverlapProvenance8Shard65 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row325,
  tropicalOverlapProvenance8Row326,
  tropicalOverlapProvenance8Row327,
  tropicalOverlapProvenance8Row328,
  tropicalOverlapProvenance8Row329
]

/-- Explicit targets for the five independently replayed rows in shard 65. -/
def tropicalOverlapRelation8Shard65 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row325,
  tropicalOverlapRelation8Row326,
  tropicalOverlapRelation8Row327,
  tropicalOverlapRelation8Row328,
  tropicalOverlapRelation8Row329
]

/-- Collect the five one-row provenance replays in shard 65. -/
theorem tropicalOverlapRelation8_provenance_shard65 (i : Fin 5) :
    tropicalOverlapRelation8Shard65 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard65 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard65,
      tropicalOverlapProvenance8Shard65] using
      tropicalOverlapRelation8_provenance_row325
  · simpa [tropicalOverlapRelation8Shard65,
      tropicalOverlapProvenance8Shard65] using
      tropicalOverlapRelation8_provenance_row326
  · simpa [tropicalOverlapRelation8Shard65,
      tropicalOverlapProvenance8Shard65] using
      tropicalOverlapRelation8_provenance_row327
  · simpa [tropicalOverlapRelation8Shard65,
      tropicalOverlapProvenance8Shard65] using
      tropicalOverlapRelation8_provenance_row328
  · simpa [tropicalOverlapRelation8Shard65,
      tropicalOverlapProvenance8Shard65] using
      tropicalOverlapRelation8_provenance_row329

end

end MonochromaticQuantumGraphs.N8D3
