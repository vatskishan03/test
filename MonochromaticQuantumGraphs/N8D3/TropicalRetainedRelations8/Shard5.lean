import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard5.Row4

/-! Lightweight dispatch for first-overlap rows 25--29. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 5. -/
def tropicalOverlapProvenance8Shard5 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row25,
  tropicalOverlapProvenance8Row26,
  tropicalOverlapProvenance8Row27,
  tropicalOverlapProvenance8Row28,
  tropicalOverlapProvenance8Row29
]

/-- Explicit targets for the five independently replayed rows in shard 5. -/
def tropicalOverlapRelation8Shard5 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row25,
  tropicalOverlapRelation8Row26,
  tropicalOverlapRelation8Row27,
  tropicalOverlapRelation8Row28,
  tropicalOverlapRelation8Row29
]

/-- Collect the five one-row provenance replays in shard 5. -/
theorem tropicalOverlapRelation8_provenance_shard5 (i : Fin 5) :
    tropicalOverlapRelation8Shard5 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard5 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard5,
      tropicalOverlapProvenance8Shard5] using
      tropicalOverlapRelation8_provenance_row25
  · simpa [tropicalOverlapRelation8Shard5,
      tropicalOverlapProvenance8Shard5] using
      tropicalOverlapRelation8_provenance_row26
  · simpa [tropicalOverlapRelation8Shard5,
      tropicalOverlapProvenance8Shard5] using
      tropicalOverlapRelation8_provenance_row27
  · simpa [tropicalOverlapRelation8Shard5,
      tropicalOverlapProvenance8Shard5] using
      tropicalOverlapRelation8_provenance_row28
  · simpa [tropicalOverlapRelation8Shard5,
      tropicalOverlapProvenance8Shard5] using
      tropicalOverlapRelation8_provenance_row29

end

end MonochromaticQuantumGraphs.N8D3
