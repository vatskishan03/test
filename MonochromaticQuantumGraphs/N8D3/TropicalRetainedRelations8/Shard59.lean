import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard59.Row4

/-! Lightweight dispatch for first-overlap rows 295--299. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 59. -/
def tropicalOverlapProvenance8Shard59 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row295,
  tropicalOverlapProvenance8Row296,
  tropicalOverlapProvenance8Row297,
  tropicalOverlapProvenance8Row298,
  tropicalOverlapProvenance8Row299
]

/-- Explicit targets for the five independently replayed rows in shard 59. -/
def tropicalOverlapRelation8Shard59 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row295,
  tropicalOverlapRelation8Row296,
  tropicalOverlapRelation8Row297,
  tropicalOverlapRelation8Row298,
  tropicalOverlapRelation8Row299
]

/-- Collect the five one-row provenance replays in shard 59. -/
theorem tropicalOverlapRelation8_provenance_shard59 (i : Fin 5) :
    tropicalOverlapRelation8Shard59 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard59 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard59,
      tropicalOverlapProvenance8Shard59] using
      tropicalOverlapRelation8_provenance_row295
  · simpa [tropicalOverlapRelation8Shard59,
      tropicalOverlapProvenance8Shard59] using
      tropicalOverlapRelation8_provenance_row296
  · simpa [tropicalOverlapRelation8Shard59,
      tropicalOverlapProvenance8Shard59] using
      tropicalOverlapRelation8_provenance_row297
  · simpa [tropicalOverlapRelation8Shard59,
      tropicalOverlapProvenance8Shard59] using
      tropicalOverlapRelation8_provenance_row298
  · simpa [tropicalOverlapRelation8Shard59,
      tropicalOverlapProvenance8Shard59] using
      tropicalOverlapRelation8_provenance_row299

end

end MonochromaticQuantumGraphs.N8D3
