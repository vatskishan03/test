import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard53.Row4

/-! Lightweight dispatch for first-overlap rows 265--269. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 53. -/
def tropicalOverlapProvenance8Shard53 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row265,
  tropicalOverlapProvenance8Row266,
  tropicalOverlapProvenance8Row267,
  tropicalOverlapProvenance8Row268,
  tropicalOverlapProvenance8Row269
]

/-- Explicit targets for the five independently replayed rows in shard 53. -/
def tropicalOverlapRelation8Shard53 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row265,
  tropicalOverlapRelation8Row266,
  tropicalOverlapRelation8Row267,
  tropicalOverlapRelation8Row268,
  tropicalOverlapRelation8Row269
]

/-- Collect the five one-row provenance replays in shard 53. -/
theorem tropicalOverlapRelation8_provenance_shard53 (i : Fin 5) :
    tropicalOverlapRelation8Shard53 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard53 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard53,
      tropicalOverlapProvenance8Shard53] using
      tropicalOverlapRelation8_provenance_row265
  · simpa [tropicalOverlapRelation8Shard53,
      tropicalOverlapProvenance8Shard53] using
      tropicalOverlapRelation8_provenance_row266
  · simpa [tropicalOverlapRelation8Shard53,
      tropicalOverlapProvenance8Shard53] using
      tropicalOverlapRelation8_provenance_row267
  · simpa [tropicalOverlapRelation8Shard53,
      tropicalOverlapProvenance8Shard53] using
      tropicalOverlapRelation8_provenance_row268
  · simpa [tropicalOverlapRelation8Shard53,
      tropicalOverlapProvenance8Shard53] using
      tropicalOverlapRelation8_provenance_row269

end

end MonochromaticQuantumGraphs.N8D3
