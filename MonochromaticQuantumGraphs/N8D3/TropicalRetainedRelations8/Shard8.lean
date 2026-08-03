import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard8.Row4

/-! Lightweight dispatch for first-overlap rows 40--44. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 8. -/
def tropicalOverlapProvenance8Shard8 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row40,
  tropicalOverlapProvenance8Row41,
  tropicalOverlapProvenance8Row42,
  tropicalOverlapProvenance8Row43,
  tropicalOverlapProvenance8Row44
]

/-- Explicit targets for the five independently replayed rows in shard 8. -/
def tropicalOverlapRelation8Shard8 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row40,
  tropicalOverlapRelation8Row41,
  tropicalOverlapRelation8Row42,
  tropicalOverlapRelation8Row43,
  tropicalOverlapRelation8Row44
]

/-- Collect the five one-row provenance replays in shard 8. -/
theorem tropicalOverlapRelation8_provenance_shard8 (i : Fin 5) :
    tropicalOverlapRelation8Shard8 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard8 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard8,
      tropicalOverlapProvenance8Shard8] using
      tropicalOverlapRelation8_provenance_row40
  · simpa [tropicalOverlapRelation8Shard8,
      tropicalOverlapProvenance8Shard8] using
      tropicalOverlapRelation8_provenance_row41
  · simpa [tropicalOverlapRelation8Shard8,
      tropicalOverlapProvenance8Shard8] using
      tropicalOverlapRelation8_provenance_row42
  · simpa [tropicalOverlapRelation8Shard8,
      tropicalOverlapProvenance8Shard8] using
      tropicalOverlapRelation8_provenance_row43
  · simpa [tropicalOverlapRelation8Shard8,
      tropicalOverlapProvenance8Shard8] using
      tropicalOverlapRelation8_provenance_row44

end

end MonochromaticQuantumGraphs.N8D3
