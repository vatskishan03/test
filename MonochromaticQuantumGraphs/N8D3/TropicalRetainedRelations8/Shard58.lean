import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard58.Row4

/-! Lightweight dispatch for first-overlap rows 290--294. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 58. -/
def tropicalOverlapProvenance8Shard58 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row290,
  tropicalOverlapProvenance8Row291,
  tropicalOverlapProvenance8Row292,
  tropicalOverlapProvenance8Row293,
  tropicalOverlapProvenance8Row294
]

/-- Explicit targets for the five independently replayed rows in shard 58. -/
def tropicalOverlapRelation8Shard58 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row290,
  tropicalOverlapRelation8Row291,
  tropicalOverlapRelation8Row292,
  tropicalOverlapRelation8Row293,
  tropicalOverlapRelation8Row294
]

/-- Collect the five one-row provenance replays in shard 58. -/
theorem tropicalOverlapRelation8_provenance_shard58 (i : Fin 5) :
    tropicalOverlapRelation8Shard58 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard58 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard58,
      tropicalOverlapProvenance8Shard58] using
      tropicalOverlapRelation8_provenance_row290
  · simpa [tropicalOverlapRelation8Shard58,
      tropicalOverlapProvenance8Shard58] using
      tropicalOverlapRelation8_provenance_row291
  · simpa [tropicalOverlapRelation8Shard58,
      tropicalOverlapProvenance8Shard58] using
      tropicalOverlapRelation8_provenance_row292
  · simpa [tropicalOverlapRelation8Shard58,
      tropicalOverlapProvenance8Shard58] using
      tropicalOverlapRelation8_provenance_row293
  · simpa [tropicalOverlapRelation8Shard58,
      tropicalOverlapProvenance8Shard58] using
      tropicalOverlapRelation8_provenance_row294

end

end MonochromaticQuantumGraphs.N8D3
