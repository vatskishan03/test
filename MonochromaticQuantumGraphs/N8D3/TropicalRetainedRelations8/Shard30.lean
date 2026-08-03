import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard30.Row4

/-! Lightweight dispatch for first-overlap rows 150--154. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 30. -/
def tropicalOverlapProvenance8Shard30 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row150,
  tropicalOverlapProvenance8Row151,
  tropicalOverlapProvenance8Row152,
  tropicalOverlapProvenance8Row153,
  tropicalOverlapProvenance8Row154
]

/-- Explicit targets for the five independently replayed rows in shard 30. -/
def tropicalOverlapRelation8Shard30 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row150,
  tropicalOverlapRelation8Row151,
  tropicalOverlapRelation8Row152,
  tropicalOverlapRelation8Row153,
  tropicalOverlapRelation8Row154
]

/-- Collect the five one-row provenance replays in shard 30. -/
theorem tropicalOverlapRelation8_provenance_shard30 (i : Fin 5) :
    tropicalOverlapRelation8Shard30 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard30 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard30,
      tropicalOverlapProvenance8Shard30] using
      tropicalOverlapRelation8_provenance_row150
  · simpa [tropicalOverlapRelation8Shard30,
      tropicalOverlapProvenance8Shard30] using
      tropicalOverlapRelation8_provenance_row151
  · simpa [tropicalOverlapRelation8Shard30,
      tropicalOverlapProvenance8Shard30] using
      tropicalOverlapRelation8_provenance_row152
  · simpa [tropicalOverlapRelation8Shard30,
      tropicalOverlapProvenance8Shard30] using
      tropicalOverlapRelation8_provenance_row153
  · simpa [tropicalOverlapRelation8Shard30,
      tropicalOverlapProvenance8Shard30] using
      tropicalOverlapRelation8_provenance_row154

end

end MonochromaticQuantumGraphs.N8D3
