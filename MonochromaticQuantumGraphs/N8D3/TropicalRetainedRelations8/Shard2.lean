import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard2.Row4

/-! Lightweight dispatch for first-overlap rows 10--14. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 2. -/
def tropicalOverlapProvenance8Shard2 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row10,
  tropicalOverlapProvenance8Row11,
  tropicalOverlapProvenance8Row12,
  tropicalOverlapProvenance8Row13,
  tropicalOverlapProvenance8Row14
]

/-- Explicit targets for the five independently replayed rows in shard 2. -/
def tropicalOverlapRelation8Shard2 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row10,
  tropicalOverlapRelation8Row11,
  tropicalOverlapRelation8Row12,
  tropicalOverlapRelation8Row13,
  tropicalOverlapRelation8Row14
]

/-- Collect the five one-row provenance replays in shard 2. -/
theorem tropicalOverlapRelation8_provenance_shard2 (i : Fin 5) :
    tropicalOverlapRelation8Shard2 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard2 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard2,
      tropicalOverlapProvenance8Shard2] using
      tropicalOverlapRelation8_provenance_row10
  · simpa [tropicalOverlapRelation8Shard2,
      tropicalOverlapProvenance8Shard2] using
      tropicalOverlapRelation8_provenance_row11
  · simpa [tropicalOverlapRelation8Shard2,
      tropicalOverlapProvenance8Shard2] using
      tropicalOverlapRelation8_provenance_row12
  · simpa [tropicalOverlapRelation8Shard2,
      tropicalOverlapProvenance8Shard2] using
      tropicalOverlapRelation8_provenance_row13
  · simpa [tropicalOverlapRelation8Shard2,
      tropicalOverlapProvenance8Shard2] using
      tropicalOverlapRelation8_provenance_row14

end

end MonochromaticQuantumGraphs.N8D3
