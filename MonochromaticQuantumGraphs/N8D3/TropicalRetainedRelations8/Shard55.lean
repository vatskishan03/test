import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard55.Row4

/-! Lightweight dispatch for first-overlap rows 275--279. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 55. -/
def tropicalOverlapProvenance8Shard55 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row275,
  tropicalOverlapProvenance8Row276,
  tropicalOverlapProvenance8Row277,
  tropicalOverlapProvenance8Row278,
  tropicalOverlapProvenance8Row279
]

/-- Explicit targets for the five independently replayed rows in shard 55. -/
def tropicalOverlapRelation8Shard55 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row275,
  tropicalOverlapRelation8Row276,
  tropicalOverlapRelation8Row277,
  tropicalOverlapRelation8Row278,
  tropicalOverlapRelation8Row279
]

/-- Collect the five one-row provenance replays in shard 55. -/
theorem tropicalOverlapRelation8_provenance_shard55 (i : Fin 5) :
    tropicalOverlapRelation8Shard55 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard55 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard55,
      tropicalOverlapProvenance8Shard55] using
      tropicalOverlapRelation8_provenance_row275
  · simpa [tropicalOverlapRelation8Shard55,
      tropicalOverlapProvenance8Shard55] using
      tropicalOverlapRelation8_provenance_row276
  · simpa [tropicalOverlapRelation8Shard55,
      tropicalOverlapProvenance8Shard55] using
      tropicalOverlapRelation8_provenance_row277
  · simpa [tropicalOverlapRelation8Shard55,
      tropicalOverlapProvenance8Shard55] using
      tropicalOverlapRelation8_provenance_row278
  · simpa [tropicalOverlapRelation8Shard55,
      tropicalOverlapProvenance8Shard55] using
      tropicalOverlapRelation8_provenance_row279

end

end MonochromaticQuantumGraphs.N8D3
