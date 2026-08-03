import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard23.Row4

/-! Lightweight dispatch for first-overlap rows 115--119. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 23. -/
def tropicalOverlapProvenance8Shard23 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row115,
  tropicalOverlapProvenance8Row116,
  tropicalOverlapProvenance8Row117,
  tropicalOverlapProvenance8Row118,
  tropicalOverlapProvenance8Row119
]

/-- Explicit targets for the five independently replayed rows in shard 23. -/
def tropicalOverlapRelation8Shard23 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row115,
  tropicalOverlapRelation8Row116,
  tropicalOverlapRelation8Row117,
  tropicalOverlapRelation8Row118,
  tropicalOverlapRelation8Row119
]

/-- Collect the five one-row provenance replays in shard 23. -/
theorem tropicalOverlapRelation8_provenance_shard23 (i : Fin 5) :
    tropicalOverlapRelation8Shard23 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard23 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard23,
      tropicalOverlapProvenance8Shard23] using
      tropicalOverlapRelation8_provenance_row115
  · simpa [tropicalOverlapRelation8Shard23,
      tropicalOverlapProvenance8Shard23] using
      tropicalOverlapRelation8_provenance_row116
  · simpa [tropicalOverlapRelation8Shard23,
      tropicalOverlapProvenance8Shard23] using
      tropicalOverlapRelation8_provenance_row117
  · simpa [tropicalOverlapRelation8Shard23,
      tropicalOverlapProvenance8Shard23] using
      tropicalOverlapRelation8_provenance_row118
  · simpa [tropicalOverlapRelation8Shard23,
      tropicalOverlapProvenance8Shard23] using
      tropicalOverlapRelation8_provenance_row119

end

end MonochromaticQuantumGraphs.N8D3
