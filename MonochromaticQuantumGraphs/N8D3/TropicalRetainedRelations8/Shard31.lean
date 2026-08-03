import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard31.Row4

/-! Lightweight dispatch for first-overlap rows 155--159. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 31. -/
def tropicalOverlapProvenance8Shard31 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row155,
  tropicalOverlapProvenance8Row156,
  tropicalOverlapProvenance8Row157,
  tropicalOverlapProvenance8Row158,
  tropicalOverlapProvenance8Row159
]

/-- Explicit targets for the five independently replayed rows in shard 31. -/
def tropicalOverlapRelation8Shard31 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row155,
  tropicalOverlapRelation8Row156,
  tropicalOverlapRelation8Row157,
  tropicalOverlapRelation8Row158,
  tropicalOverlapRelation8Row159
]

/-- Collect the five one-row provenance replays in shard 31. -/
theorem tropicalOverlapRelation8_provenance_shard31 (i : Fin 5) :
    tropicalOverlapRelation8Shard31 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard31 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard31,
      tropicalOverlapProvenance8Shard31] using
      tropicalOverlapRelation8_provenance_row155
  · simpa [tropicalOverlapRelation8Shard31,
      tropicalOverlapProvenance8Shard31] using
      tropicalOverlapRelation8_provenance_row156
  · simpa [tropicalOverlapRelation8Shard31,
      tropicalOverlapProvenance8Shard31] using
      tropicalOverlapRelation8_provenance_row157
  · simpa [tropicalOverlapRelation8Shard31,
      tropicalOverlapProvenance8Shard31] using
      tropicalOverlapRelation8_provenance_row158
  · simpa [tropicalOverlapRelation8Shard31,
      tropicalOverlapProvenance8Shard31] using
      tropicalOverlapRelation8_provenance_row159

end

end MonochromaticQuantumGraphs.N8D3
