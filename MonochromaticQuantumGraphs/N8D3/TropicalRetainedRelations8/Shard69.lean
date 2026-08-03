import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard69.Row4

/-! Lightweight dispatch for first-overlap rows 345--349. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 69. -/
def tropicalOverlapProvenance8Shard69 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row345,
  tropicalOverlapProvenance8Row346,
  tropicalOverlapProvenance8Row347,
  tropicalOverlapProvenance8Row348,
  tropicalOverlapProvenance8Row349
]

/-- Explicit targets for the five independently replayed rows in shard 69. -/
def tropicalOverlapRelation8Shard69 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row345,
  tropicalOverlapRelation8Row346,
  tropicalOverlapRelation8Row347,
  tropicalOverlapRelation8Row348,
  tropicalOverlapRelation8Row349
]

/-- Collect the five one-row provenance replays in shard 69. -/
theorem tropicalOverlapRelation8_provenance_shard69 (i : Fin 5) :
    tropicalOverlapRelation8Shard69 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard69 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard69,
      tropicalOverlapProvenance8Shard69] using
      tropicalOverlapRelation8_provenance_row345
  · simpa [tropicalOverlapRelation8Shard69,
      tropicalOverlapProvenance8Shard69] using
      tropicalOverlapRelation8_provenance_row346
  · simpa [tropicalOverlapRelation8Shard69,
      tropicalOverlapProvenance8Shard69] using
      tropicalOverlapRelation8_provenance_row347
  · simpa [tropicalOverlapRelation8Shard69,
      tropicalOverlapProvenance8Shard69] using
      tropicalOverlapRelation8_provenance_row348
  · simpa [tropicalOverlapRelation8Shard69,
      tropicalOverlapProvenance8Shard69] using
      tropicalOverlapRelation8_provenance_row349

end

end MonochromaticQuantumGraphs.N8D3
