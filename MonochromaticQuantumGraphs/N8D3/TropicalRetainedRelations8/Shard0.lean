import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard0.Row4

/-! Lightweight dispatch for first-overlap rows 0--4. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 0. -/
def tropicalOverlapProvenance8Shard0 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row0,
  tropicalOverlapProvenance8Row1,
  tropicalOverlapProvenance8Row2,
  tropicalOverlapProvenance8Row3,
  tropicalOverlapProvenance8Row4
]

/-- Explicit targets for the five independently replayed rows in shard 0. -/
def tropicalOverlapRelation8Shard0 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row0,
  tropicalOverlapRelation8Row1,
  tropicalOverlapRelation8Row2,
  tropicalOverlapRelation8Row3,
  tropicalOverlapRelation8Row4
]

/-- Collect the five one-row provenance replays in shard 0. -/
theorem tropicalOverlapRelation8_provenance_shard0 (i : Fin 5) :
    tropicalOverlapRelation8Shard0 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard0 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard0,
      tropicalOverlapProvenance8Shard0] using
      tropicalOverlapRelation8_provenance_row0
  · simpa [tropicalOverlapRelation8Shard0,
      tropicalOverlapProvenance8Shard0] using
      tropicalOverlapRelation8_provenance_row1
  · simpa [tropicalOverlapRelation8Shard0,
      tropicalOverlapProvenance8Shard0] using
      tropicalOverlapRelation8_provenance_row2
  · simpa [tropicalOverlapRelation8Shard0,
      tropicalOverlapProvenance8Shard0] using
      tropicalOverlapRelation8_provenance_row3
  · simpa [tropicalOverlapRelation8Shard0,
      tropicalOverlapProvenance8Shard0] using
      tropicalOverlapRelation8_provenance_row4

end

end MonochromaticQuantumGraphs.N8D3
