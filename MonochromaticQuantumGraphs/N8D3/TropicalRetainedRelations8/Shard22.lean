import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard22.Row4

/-! Lightweight dispatch for first-overlap rows 110--114. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 22. -/
def tropicalOverlapProvenance8Shard22 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row110,
  tropicalOverlapProvenance8Row111,
  tropicalOverlapProvenance8Row112,
  tropicalOverlapProvenance8Row113,
  tropicalOverlapProvenance8Row114
]

/-- Explicit targets for the five independently replayed rows in shard 22. -/
def tropicalOverlapRelation8Shard22 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row110,
  tropicalOverlapRelation8Row111,
  tropicalOverlapRelation8Row112,
  tropicalOverlapRelation8Row113,
  tropicalOverlapRelation8Row114
]

/-- Collect the five one-row provenance replays in shard 22. -/
theorem tropicalOverlapRelation8_provenance_shard22 (i : Fin 5) :
    tropicalOverlapRelation8Shard22 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard22 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard22,
      tropicalOverlapProvenance8Shard22] using
      tropicalOverlapRelation8_provenance_row110
  · simpa [tropicalOverlapRelation8Shard22,
      tropicalOverlapProvenance8Shard22] using
      tropicalOverlapRelation8_provenance_row111
  · simpa [tropicalOverlapRelation8Shard22,
      tropicalOverlapProvenance8Shard22] using
      tropicalOverlapRelation8_provenance_row112
  · simpa [tropicalOverlapRelation8Shard22,
      tropicalOverlapProvenance8Shard22] using
      tropicalOverlapRelation8_provenance_row113
  · simpa [tropicalOverlapRelation8Shard22,
      tropicalOverlapProvenance8Shard22] using
      tropicalOverlapRelation8_provenance_row114

end

end MonochromaticQuantumGraphs.N8D3
