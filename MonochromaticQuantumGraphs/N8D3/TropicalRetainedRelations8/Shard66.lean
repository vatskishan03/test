import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard66.Row4

/-! Lightweight dispatch for first-overlap rows 330--334. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 66. -/
def tropicalOverlapProvenance8Shard66 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row330,
  tropicalOverlapProvenance8Row331,
  tropicalOverlapProvenance8Row332,
  tropicalOverlapProvenance8Row333,
  tropicalOverlapProvenance8Row334
]

/-- Explicit targets for the five independently replayed rows in shard 66. -/
def tropicalOverlapRelation8Shard66 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row330,
  tropicalOverlapRelation8Row331,
  tropicalOverlapRelation8Row332,
  tropicalOverlapRelation8Row333,
  tropicalOverlapRelation8Row334
]

/-- Collect the five one-row provenance replays in shard 66. -/
theorem tropicalOverlapRelation8_provenance_shard66 (i : Fin 5) :
    tropicalOverlapRelation8Shard66 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard66 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard66,
      tropicalOverlapProvenance8Shard66] using
      tropicalOverlapRelation8_provenance_row330
  · simpa [tropicalOverlapRelation8Shard66,
      tropicalOverlapProvenance8Shard66] using
      tropicalOverlapRelation8_provenance_row331
  · simpa [tropicalOverlapRelation8Shard66,
      tropicalOverlapProvenance8Shard66] using
      tropicalOverlapRelation8_provenance_row332
  · simpa [tropicalOverlapRelation8Shard66,
      tropicalOverlapProvenance8Shard66] using
      tropicalOverlapRelation8_provenance_row333
  · simpa [tropicalOverlapRelation8Shard66,
      tropicalOverlapProvenance8Shard66] using
      tropicalOverlapRelation8_provenance_row334

end

end MonochromaticQuantumGraphs.N8D3
