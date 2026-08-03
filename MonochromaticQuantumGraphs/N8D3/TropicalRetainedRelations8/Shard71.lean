import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard71.Row4

/-! Lightweight dispatch for first-overlap rows 355--359. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 71. -/
def tropicalOverlapProvenance8Shard71 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row355,
  tropicalOverlapProvenance8Row356,
  tropicalOverlapProvenance8Row357,
  tropicalOverlapProvenance8Row358,
  tropicalOverlapProvenance8Row359
]

/-- Explicit targets for the five independently replayed rows in shard 71. -/
def tropicalOverlapRelation8Shard71 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row355,
  tropicalOverlapRelation8Row356,
  tropicalOverlapRelation8Row357,
  tropicalOverlapRelation8Row358,
  tropicalOverlapRelation8Row359
]

/-- Collect the five one-row provenance replays in shard 71. -/
theorem tropicalOverlapRelation8_provenance_shard71 (i : Fin 5) :
    tropicalOverlapRelation8Shard71 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard71 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard71,
      tropicalOverlapProvenance8Shard71] using
      tropicalOverlapRelation8_provenance_row355
  · simpa [tropicalOverlapRelation8Shard71,
      tropicalOverlapProvenance8Shard71] using
      tropicalOverlapRelation8_provenance_row356
  · simpa [tropicalOverlapRelation8Shard71,
      tropicalOverlapProvenance8Shard71] using
      tropicalOverlapRelation8_provenance_row357
  · simpa [tropicalOverlapRelation8Shard71,
      tropicalOverlapProvenance8Shard71] using
      tropicalOverlapRelation8_provenance_row358
  · simpa [tropicalOverlapRelation8Shard71,
      tropicalOverlapProvenance8Shard71] using
      tropicalOverlapRelation8_provenance_row359

end

end MonochromaticQuantumGraphs.N8D3
