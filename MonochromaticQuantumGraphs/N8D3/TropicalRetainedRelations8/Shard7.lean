import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard7.Row4

/-! Lightweight dispatch for first-overlap rows 35--39. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 7. -/
def tropicalOverlapProvenance8Shard7 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row35,
  tropicalOverlapProvenance8Row36,
  tropicalOverlapProvenance8Row37,
  tropicalOverlapProvenance8Row38,
  tropicalOverlapProvenance8Row39
]

/-- Explicit targets for the five independently replayed rows in shard 7. -/
def tropicalOverlapRelation8Shard7 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row35,
  tropicalOverlapRelation8Row36,
  tropicalOverlapRelation8Row37,
  tropicalOverlapRelation8Row38,
  tropicalOverlapRelation8Row39
]

/-- Collect the five one-row provenance replays in shard 7. -/
theorem tropicalOverlapRelation8_provenance_shard7 (i : Fin 5) :
    tropicalOverlapRelation8Shard7 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard7 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard7,
      tropicalOverlapProvenance8Shard7] using
      tropicalOverlapRelation8_provenance_row35
  · simpa [tropicalOverlapRelation8Shard7,
      tropicalOverlapProvenance8Shard7] using
      tropicalOverlapRelation8_provenance_row36
  · simpa [tropicalOverlapRelation8Shard7,
      tropicalOverlapProvenance8Shard7] using
      tropicalOverlapRelation8_provenance_row37
  · simpa [tropicalOverlapRelation8Shard7,
      tropicalOverlapProvenance8Shard7] using
      tropicalOverlapRelation8_provenance_row38
  · simpa [tropicalOverlapRelation8Shard7,
      tropicalOverlapProvenance8Shard7] using
      tropicalOverlapRelation8_provenance_row39

end

end MonochromaticQuantumGraphs.N8D3
