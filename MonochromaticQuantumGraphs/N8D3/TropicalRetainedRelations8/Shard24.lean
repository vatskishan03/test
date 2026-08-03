import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard24.Row4

/-! Lightweight dispatch for first-overlap rows 120--124. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 24. -/
def tropicalOverlapProvenance8Shard24 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row120,
  tropicalOverlapProvenance8Row121,
  tropicalOverlapProvenance8Row122,
  tropicalOverlapProvenance8Row123,
  tropicalOverlapProvenance8Row124
]

/-- Explicit targets for the five independently replayed rows in shard 24. -/
def tropicalOverlapRelation8Shard24 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row120,
  tropicalOverlapRelation8Row121,
  tropicalOverlapRelation8Row122,
  tropicalOverlapRelation8Row123,
  tropicalOverlapRelation8Row124
]

/-- Collect the five one-row provenance replays in shard 24. -/
theorem tropicalOverlapRelation8_provenance_shard24 (i : Fin 5) :
    tropicalOverlapRelation8Shard24 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard24 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard24,
      tropicalOverlapProvenance8Shard24] using
      tropicalOverlapRelation8_provenance_row120
  · simpa [tropicalOverlapRelation8Shard24,
      tropicalOverlapProvenance8Shard24] using
      tropicalOverlapRelation8_provenance_row121
  · simpa [tropicalOverlapRelation8Shard24,
      tropicalOverlapProvenance8Shard24] using
      tropicalOverlapRelation8_provenance_row122
  · simpa [tropicalOverlapRelation8Shard24,
      tropicalOverlapProvenance8Shard24] using
      tropicalOverlapRelation8_provenance_row123
  · simpa [tropicalOverlapRelation8Shard24,
      tropicalOverlapProvenance8Shard24] using
      tropicalOverlapRelation8_provenance_row124

end

end MonochromaticQuantumGraphs.N8D3
