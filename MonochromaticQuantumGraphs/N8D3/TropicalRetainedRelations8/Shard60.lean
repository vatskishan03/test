import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard60.Row4

/-! Lightweight dispatch for first-overlap rows 300--304. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 60. -/
def tropicalOverlapProvenance8Shard60 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row300,
  tropicalOverlapProvenance8Row301,
  tropicalOverlapProvenance8Row302,
  tropicalOverlapProvenance8Row303,
  tropicalOverlapProvenance8Row304
]

/-- Explicit targets for the five independently replayed rows in shard 60. -/
def tropicalOverlapRelation8Shard60 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row300,
  tropicalOverlapRelation8Row301,
  tropicalOverlapRelation8Row302,
  tropicalOverlapRelation8Row303,
  tropicalOverlapRelation8Row304
]

/-- Collect the five one-row provenance replays in shard 60. -/
theorem tropicalOverlapRelation8_provenance_shard60 (i : Fin 5) :
    tropicalOverlapRelation8Shard60 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard60 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard60,
      tropicalOverlapProvenance8Shard60] using
      tropicalOverlapRelation8_provenance_row300
  · simpa [tropicalOverlapRelation8Shard60,
      tropicalOverlapProvenance8Shard60] using
      tropicalOverlapRelation8_provenance_row301
  · simpa [tropicalOverlapRelation8Shard60,
      tropicalOverlapProvenance8Shard60] using
      tropicalOverlapRelation8_provenance_row302
  · simpa [tropicalOverlapRelation8Shard60,
      tropicalOverlapProvenance8Shard60] using
      tropicalOverlapRelation8_provenance_row303
  · simpa [tropicalOverlapRelation8Shard60,
      tropicalOverlapProvenance8Shard60] using
      tropicalOverlapRelation8_provenance_row304

end

end MonochromaticQuantumGraphs.N8D3
