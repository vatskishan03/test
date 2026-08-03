import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard25.Row4

/-! Lightweight dispatch for first-overlap rows 125--129. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 25. -/
def tropicalOverlapProvenance8Shard25 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row125,
  tropicalOverlapProvenance8Row126,
  tropicalOverlapProvenance8Row127,
  tropicalOverlapProvenance8Row128,
  tropicalOverlapProvenance8Row129
]

/-- Explicit targets for the five independently replayed rows in shard 25. -/
def tropicalOverlapRelation8Shard25 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row125,
  tropicalOverlapRelation8Row126,
  tropicalOverlapRelation8Row127,
  tropicalOverlapRelation8Row128,
  tropicalOverlapRelation8Row129
]

/-- Collect the five one-row provenance replays in shard 25. -/
theorem tropicalOverlapRelation8_provenance_shard25 (i : Fin 5) :
    tropicalOverlapRelation8Shard25 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard25 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard25,
      tropicalOverlapProvenance8Shard25] using
      tropicalOverlapRelation8_provenance_row125
  · simpa [tropicalOverlapRelation8Shard25,
      tropicalOverlapProvenance8Shard25] using
      tropicalOverlapRelation8_provenance_row126
  · simpa [tropicalOverlapRelation8Shard25,
      tropicalOverlapProvenance8Shard25] using
      tropicalOverlapRelation8_provenance_row127
  · simpa [tropicalOverlapRelation8Shard25,
      tropicalOverlapProvenance8Shard25] using
      tropicalOverlapRelation8_provenance_row128
  · simpa [tropicalOverlapRelation8Shard25,
      tropicalOverlapProvenance8Shard25] using
      tropicalOverlapRelation8_provenance_row129

end

end MonochromaticQuantumGraphs.N8D3
