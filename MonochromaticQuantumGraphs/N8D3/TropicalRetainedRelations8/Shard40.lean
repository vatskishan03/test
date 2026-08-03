import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard40.Row4

/-! Lightweight dispatch for first-overlap rows 200--204. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 40. -/
def tropicalOverlapProvenance8Shard40 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row200,
  tropicalOverlapProvenance8Row201,
  tropicalOverlapProvenance8Row202,
  tropicalOverlapProvenance8Row203,
  tropicalOverlapProvenance8Row204
]

/-- Explicit targets for the five independently replayed rows in shard 40. -/
def tropicalOverlapRelation8Shard40 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row200,
  tropicalOverlapRelation8Row201,
  tropicalOverlapRelation8Row202,
  tropicalOverlapRelation8Row203,
  tropicalOverlapRelation8Row204
]

/-- Collect the five one-row provenance replays in shard 40. -/
theorem tropicalOverlapRelation8_provenance_shard40 (i : Fin 5) :
    tropicalOverlapRelation8Shard40 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard40 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard40,
      tropicalOverlapProvenance8Shard40] using
      tropicalOverlapRelation8_provenance_row200
  · simpa [tropicalOverlapRelation8Shard40,
      tropicalOverlapProvenance8Shard40] using
      tropicalOverlapRelation8_provenance_row201
  · simpa [tropicalOverlapRelation8Shard40,
      tropicalOverlapProvenance8Shard40] using
      tropicalOverlapRelation8_provenance_row202
  · simpa [tropicalOverlapRelation8Shard40,
      tropicalOverlapProvenance8Shard40] using
      tropicalOverlapRelation8_provenance_row203
  · simpa [tropicalOverlapRelation8Shard40,
      tropicalOverlapProvenance8Shard40] using
      tropicalOverlapRelation8_provenance_row204

end

end MonochromaticQuantumGraphs.N8D3
