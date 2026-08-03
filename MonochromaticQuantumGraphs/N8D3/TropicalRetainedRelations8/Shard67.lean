import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard67.Row4

/-! Lightweight dispatch for first-overlap rows 335--339. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 67. -/
def tropicalOverlapProvenance8Shard67 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row335,
  tropicalOverlapProvenance8Row336,
  tropicalOverlapProvenance8Row337,
  tropicalOverlapProvenance8Row338,
  tropicalOverlapProvenance8Row339
]

/-- Explicit targets for the five independently replayed rows in shard 67. -/
def tropicalOverlapRelation8Shard67 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row335,
  tropicalOverlapRelation8Row336,
  tropicalOverlapRelation8Row337,
  tropicalOverlapRelation8Row338,
  tropicalOverlapRelation8Row339
]

/-- Collect the five one-row provenance replays in shard 67. -/
theorem tropicalOverlapRelation8_provenance_shard67 (i : Fin 5) :
    tropicalOverlapRelation8Shard67 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard67 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard67,
      tropicalOverlapProvenance8Shard67] using
      tropicalOverlapRelation8_provenance_row335
  · simpa [tropicalOverlapRelation8Shard67,
      tropicalOverlapProvenance8Shard67] using
      tropicalOverlapRelation8_provenance_row336
  · simpa [tropicalOverlapRelation8Shard67,
      tropicalOverlapProvenance8Shard67] using
      tropicalOverlapRelation8_provenance_row337
  · simpa [tropicalOverlapRelation8Shard67,
      tropicalOverlapProvenance8Shard67] using
      tropicalOverlapRelation8_provenance_row338
  · simpa [tropicalOverlapRelation8Shard67,
      tropicalOverlapProvenance8Shard67] using
      tropicalOverlapRelation8_provenance_row339

end

end MonochromaticQuantumGraphs.N8D3
