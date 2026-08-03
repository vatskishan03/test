import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard61.Row4

/-! Lightweight dispatch for first-overlap rows 305--309. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 61. -/
def tropicalOverlapProvenance8Shard61 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row305,
  tropicalOverlapProvenance8Row306,
  tropicalOverlapProvenance8Row307,
  tropicalOverlapProvenance8Row308,
  tropicalOverlapProvenance8Row309
]

/-- Explicit targets for the five independently replayed rows in shard 61. -/
def tropicalOverlapRelation8Shard61 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row305,
  tropicalOverlapRelation8Row306,
  tropicalOverlapRelation8Row307,
  tropicalOverlapRelation8Row308,
  tropicalOverlapRelation8Row309
]

/-- Collect the five one-row provenance replays in shard 61. -/
theorem tropicalOverlapRelation8_provenance_shard61 (i : Fin 5) :
    tropicalOverlapRelation8Shard61 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard61 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard61,
      tropicalOverlapProvenance8Shard61] using
      tropicalOverlapRelation8_provenance_row305
  · simpa [tropicalOverlapRelation8Shard61,
      tropicalOverlapProvenance8Shard61] using
      tropicalOverlapRelation8_provenance_row306
  · simpa [tropicalOverlapRelation8Shard61,
      tropicalOverlapProvenance8Shard61] using
      tropicalOverlapRelation8_provenance_row307
  · simpa [tropicalOverlapRelation8Shard61,
      tropicalOverlapProvenance8Shard61] using
      tropicalOverlapRelation8_provenance_row308
  · simpa [tropicalOverlapRelation8Shard61,
      tropicalOverlapProvenance8Shard61] using
      tropicalOverlapRelation8_provenance_row309

end

end MonochromaticQuantumGraphs.N8D3
