import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard63.Row4

/-! Lightweight dispatch for first-overlap rows 315--319. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 63. -/
def tropicalOverlapProvenance8Shard63 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row315,
  tropicalOverlapProvenance8Row316,
  tropicalOverlapProvenance8Row317,
  tropicalOverlapProvenance8Row318,
  tropicalOverlapProvenance8Row319
]

/-- Explicit targets for the five independently replayed rows in shard 63. -/
def tropicalOverlapRelation8Shard63 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row315,
  tropicalOverlapRelation8Row316,
  tropicalOverlapRelation8Row317,
  tropicalOverlapRelation8Row318,
  tropicalOverlapRelation8Row319
]

/-- Collect the five one-row provenance replays in shard 63. -/
theorem tropicalOverlapRelation8_provenance_shard63 (i : Fin 5) :
    tropicalOverlapRelation8Shard63 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard63 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard63,
      tropicalOverlapProvenance8Shard63] using
      tropicalOverlapRelation8_provenance_row315
  · simpa [tropicalOverlapRelation8Shard63,
      tropicalOverlapProvenance8Shard63] using
      tropicalOverlapRelation8_provenance_row316
  · simpa [tropicalOverlapRelation8Shard63,
      tropicalOverlapProvenance8Shard63] using
      tropicalOverlapRelation8_provenance_row317
  · simpa [tropicalOverlapRelation8Shard63,
      tropicalOverlapProvenance8Shard63] using
      tropicalOverlapRelation8_provenance_row318
  · simpa [tropicalOverlapRelation8Shard63,
      tropicalOverlapProvenance8Shard63] using
      tropicalOverlapRelation8_provenance_row319

end

end MonochromaticQuantumGraphs.N8D3
