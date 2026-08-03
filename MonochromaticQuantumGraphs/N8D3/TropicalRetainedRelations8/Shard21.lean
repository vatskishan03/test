import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard21.Row4

/-! Lightweight dispatch for first-overlap rows 105--109. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 21. -/
def tropicalOverlapProvenance8Shard21 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row105,
  tropicalOverlapProvenance8Row106,
  tropicalOverlapProvenance8Row107,
  tropicalOverlapProvenance8Row108,
  tropicalOverlapProvenance8Row109
]

/-- Explicit targets for the five independently replayed rows in shard 21. -/
def tropicalOverlapRelation8Shard21 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row105,
  tropicalOverlapRelation8Row106,
  tropicalOverlapRelation8Row107,
  tropicalOverlapRelation8Row108,
  tropicalOverlapRelation8Row109
]

/-- Collect the five one-row provenance replays in shard 21. -/
theorem tropicalOverlapRelation8_provenance_shard21 (i : Fin 5) :
    tropicalOverlapRelation8Shard21 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard21 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard21,
      tropicalOverlapProvenance8Shard21] using
      tropicalOverlapRelation8_provenance_row105
  · simpa [tropicalOverlapRelation8Shard21,
      tropicalOverlapProvenance8Shard21] using
      tropicalOverlapRelation8_provenance_row106
  · simpa [tropicalOverlapRelation8Shard21,
      tropicalOverlapProvenance8Shard21] using
      tropicalOverlapRelation8_provenance_row107
  · simpa [tropicalOverlapRelation8Shard21,
      tropicalOverlapProvenance8Shard21] using
      tropicalOverlapRelation8_provenance_row108
  · simpa [tropicalOverlapRelation8Shard21,
      tropicalOverlapProvenance8Shard21] using
      tropicalOverlapRelation8_provenance_row109

end

end MonochromaticQuantumGraphs.N8D3
