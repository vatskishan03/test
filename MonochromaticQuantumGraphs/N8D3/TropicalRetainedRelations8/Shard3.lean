import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard3.Row4

/-! Lightweight dispatch for first-overlap rows 15--19. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 3. -/
def tropicalOverlapProvenance8Shard3 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row15,
  tropicalOverlapProvenance8Row16,
  tropicalOverlapProvenance8Row17,
  tropicalOverlapProvenance8Row18,
  tropicalOverlapProvenance8Row19
]

/-- Explicit targets for the five independently replayed rows in shard 3. -/
def tropicalOverlapRelation8Shard3 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row15,
  tropicalOverlapRelation8Row16,
  tropicalOverlapRelation8Row17,
  tropicalOverlapRelation8Row18,
  tropicalOverlapRelation8Row19
]

/-- Collect the five one-row provenance replays in shard 3. -/
theorem tropicalOverlapRelation8_provenance_shard3 (i : Fin 5) :
    tropicalOverlapRelation8Shard3 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard3 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard3,
      tropicalOverlapProvenance8Shard3] using
      tropicalOverlapRelation8_provenance_row15
  · simpa [tropicalOverlapRelation8Shard3,
      tropicalOverlapProvenance8Shard3] using
      tropicalOverlapRelation8_provenance_row16
  · simpa [tropicalOverlapRelation8Shard3,
      tropicalOverlapProvenance8Shard3] using
      tropicalOverlapRelation8_provenance_row17
  · simpa [tropicalOverlapRelation8Shard3,
      tropicalOverlapProvenance8Shard3] using
      tropicalOverlapRelation8_provenance_row18
  · simpa [tropicalOverlapRelation8Shard3,
      tropicalOverlapProvenance8Shard3] using
      tropicalOverlapRelation8_provenance_row19

end

end MonochromaticQuantumGraphs.N8D3
