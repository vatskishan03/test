import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard50.Row4

/-! Lightweight dispatch for first-overlap rows 250--254. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 50. -/
def tropicalOverlapProvenance8Shard50 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row250,
  tropicalOverlapProvenance8Row251,
  tropicalOverlapProvenance8Row252,
  tropicalOverlapProvenance8Row253,
  tropicalOverlapProvenance8Row254
]

/-- Explicit targets for the five independently replayed rows in shard 50. -/
def tropicalOverlapRelation8Shard50 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row250,
  tropicalOverlapRelation8Row251,
  tropicalOverlapRelation8Row252,
  tropicalOverlapRelation8Row253,
  tropicalOverlapRelation8Row254
]

/-- Collect the five one-row provenance replays in shard 50. -/
theorem tropicalOverlapRelation8_provenance_shard50 (i : Fin 5) :
    tropicalOverlapRelation8Shard50 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard50 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard50,
      tropicalOverlapProvenance8Shard50] using
      tropicalOverlapRelation8_provenance_row250
  · simpa [tropicalOverlapRelation8Shard50,
      tropicalOverlapProvenance8Shard50] using
      tropicalOverlapRelation8_provenance_row251
  · simpa [tropicalOverlapRelation8Shard50,
      tropicalOverlapProvenance8Shard50] using
      tropicalOverlapRelation8_provenance_row252
  · simpa [tropicalOverlapRelation8Shard50,
      tropicalOverlapProvenance8Shard50] using
      tropicalOverlapRelation8_provenance_row253
  · simpa [tropicalOverlapRelation8Shard50,
      tropicalOverlapProvenance8Shard50] using
      tropicalOverlapRelation8_provenance_row254

end

end MonochromaticQuantumGraphs.N8D3
