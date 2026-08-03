import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard33.Row4

/-! Lightweight dispatch for first-overlap rows 165--169. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 33. -/
def tropicalOverlapProvenance8Shard33 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row165,
  tropicalOverlapProvenance8Row166,
  tropicalOverlapProvenance8Row167,
  tropicalOverlapProvenance8Row168,
  tropicalOverlapProvenance8Row169
]

/-- Explicit targets for the five independently replayed rows in shard 33. -/
def tropicalOverlapRelation8Shard33 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row165,
  tropicalOverlapRelation8Row166,
  tropicalOverlapRelation8Row167,
  tropicalOverlapRelation8Row168,
  tropicalOverlapRelation8Row169
]

/-- Collect the five one-row provenance replays in shard 33. -/
theorem tropicalOverlapRelation8_provenance_shard33 (i : Fin 5) :
    tropicalOverlapRelation8Shard33 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard33 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard33,
      tropicalOverlapProvenance8Shard33] using
      tropicalOverlapRelation8_provenance_row165
  · simpa [tropicalOverlapRelation8Shard33,
      tropicalOverlapProvenance8Shard33] using
      tropicalOverlapRelation8_provenance_row166
  · simpa [tropicalOverlapRelation8Shard33,
      tropicalOverlapProvenance8Shard33] using
      tropicalOverlapRelation8_provenance_row167
  · simpa [tropicalOverlapRelation8Shard33,
      tropicalOverlapProvenance8Shard33] using
      tropicalOverlapRelation8_provenance_row168
  · simpa [tropicalOverlapRelation8Shard33,
      tropicalOverlapProvenance8Shard33] using
      tropicalOverlapRelation8_provenance_row169

end

end MonochromaticQuantumGraphs.N8D3
