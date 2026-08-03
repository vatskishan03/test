import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard35.Row4

/-! Lightweight dispatch for first-overlap rows 175--179. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 35. -/
def tropicalOverlapProvenance8Shard35 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row175,
  tropicalOverlapProvenance8Row176,
  tropicalOverlapProvenance8Row177,
  tropicalOverlapProvenance8Row178,
  tropicalOverlapProvenance8Row179
]

/-- Explicit targets for the five independently replayed rows in shard 35. -/
def tropicalOverlapRelation8Shard35 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row175,
  tropicalOverlapRelation8Row176,
  tropicalOverlapRelation8Row177,
  tropicalOverlapRelation8Row178,
  tropicalOverlapRelation8Row179
]

/-- Collect the five one-row provenance replays in shard 35. -/
theorem tropicalOverlapRelation8_provenance_shard35 (i : Fin 5) :
    tropicalOverlapRelation8Shard35 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard35 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard35,
      tropicalOverlapProvenance8Shard35] using
      tropicalOverlapRelation8_provenance_row175
  · simpa [tropicalOverlapRelation8Shard35,
      tropicalOverlapProvenance8Shard35] using
      tropicalOverlapRelation8_provenance_row176
  · simpa [tropicalOverlapRelation8Shard35,
      tropicalOverlapProvenance8Shard35] using
      tropicalOverlapRelation8_provenance_row177
  · simpa [tropicalOverlapRelation8Shard35,
      tropicalOverlapProvenance8Shard35] using
      tropicalOverlapRelation8_provenance_row178
  · simpa [tropicalOverlapRelation8Shard35,
      tropicalOverlapProvenance8Shard35] using
      tropicalOverlapRelation8_provenance_row179

end

end MonochromaticQuantumGraphs.N8D3
