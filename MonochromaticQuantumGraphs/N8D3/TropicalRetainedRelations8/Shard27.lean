import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard27.Row4

/-! Lightweight dispatch for first-overlap rows 135--139. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 27. -/
def tropicalOverlapProvenance8Shard27 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row135,
  tropicalOverlapProvenance8Row136,
  tropicalOverlapProvenance8Row137,
  tropicalOverlapProvenance8Row138,
  tropicalOverlapProvenance8Row139
]

/-- Explicit targets for the five independently replayed rows in shard 27. -/
def tropicalOverlapRelation8Shard27 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row135,
  tropicalOverlapRelation8Row136,
  tropicalOverlapRelation8Row137,
  tropicalOverlapRelation8Row138,
  tropicalOverlapRelation8Row139
]

/-- Collect the five one-row provenance replays in shard 27. -/
theorem tropicalOverlapRelation8_provenance_shard27 (i : Fin 5) :
    tropicalOverlapRelation8Shard27 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard27 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard27,
      tropicalOverlapProvenance8Shard27] using
      tropicalOverlapRelation8_provenance_row135
  · simpa [tropicalOverlapRelation8Shard27,
      tropicalOverlapProvenance8Shard27] using
      tropicalOverlapRelation8_provenance_row136
  · simpa [tropicalOverlapRelation8Shard27,
      tropicalOverlapProvenance8Shard27] using
      tropicalOverlapRelation8_provenance_row137
  · simpa [tropicalOverlapRelation8Shard27,
      tropicalOverlapProvenance8Shard27] using
      tropicalOverlapRelation8_provenance_row138
  · simpa [tropicalOverlapRelation8Shard27,
      tropicalOverlapProvenance8Shard27] using
      tropicalOverlapRelation8_provenance_row139

end

end MonochromaticQuantumGraphs.N8D3
