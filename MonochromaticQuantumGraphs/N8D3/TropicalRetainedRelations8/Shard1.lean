import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard1.Row4

/-! Lightweight dispatch for first-overlap rows 5--9. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 1. -/
def tropicalOverlapProvenance8Shard1 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row5,
  tropicalOverlapProvenance8Row6,
  tropicalOverlapProvenance8Row7,
  tropicalOverlapProvenance8Row8,
  tropicalOverlapProvenance8Row9
]

/-- Explicit targets for the five independently replayed rows in shard 1. -/
def tropicalOverlapRelation8Shard1 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row5,
  tropicalOverlapRelation8Row6,
  tropicalOverlapRelation8Row7,
  tropicalOverlapRelation8Row8,
  tropicalOverlapRelation8Row9
]

/-- Collect the five one-row provenance replays in shard 1. -/
theorem tropicalOverlapRelation8_provenance_shard1 (i : Fin 5) :
    tropicalOverlapRelation8Shard1 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard1 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard1,
      tropicalOverlapProvenance8Shard1] using
      tropicalOverlapRelation8_provenance_row5
  · simpa [tropicalOverlapRelation8Shard1,
      tropicalOverlapProvenance8Shard1] using
      tropicalOverlapRelation8_provenance_row6
  · simpa [tropicalOverlapRelation8Shard1,
      tropicalOverlapProvenance8Shard1] using
      tropicalOverlapRelation8_provenance_row7
  · simpa [tropicalOverlapRelation8Shard1,
      tropicalOverlapProvenance8Shard1] using
      tropicalOverlapRelation8_provenance_row8
  · simpa [tropicalOverlapRelation8Shard1,
      tropicalOverlapProvenance8Shard1] using
      tropicalOverlapRelation8_provenance_row9

end

end MonochromaticQuantumGraphs.N8D3
