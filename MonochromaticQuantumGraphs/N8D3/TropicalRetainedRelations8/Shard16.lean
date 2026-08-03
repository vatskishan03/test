import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard16.Row4

/-! Lightweight dispatch for first-overlap rows 80--84. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 16. -/
def tropicalOverlapProvenance8Shard16 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row80,
  tropicalOverlapProvenance8Row81,
  tropicalOverlapProvenance8Row82,
  tropicalOverlapProvenance8Row83,
  tropicalOverlapProvenance8Row84
]

/-- Explicit targets for the five independently replayed rows in shard 16. -/
def tropicalOverlapRelation8Shard16 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row80,
  tropicalOverlapRelation8Row81,
  tropicalOverlapRelation8Row82,
  tropicalOverlapRelation8Row83,
  tropicalOverlapRelation8Row84
]

/-- Collect the five one-row provenance replays in shard 16. -/
theorem tropicalOverlapRelation8_provenance_shard16 (i : Fin 5) :
    tropicalOverlapRelation8Shard16 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard16 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard16,
      tropicalOverlapProvenance8Shard16] using
      tropicalOverlapRelation8_provenance_row80
  · simpa [tropicalOverlapRelation8Shard16,
      tropicalOverlapProvenance8Shard16] using
      tropicalOverlapRelation8_provenance_row81
  · simpa [tropicalOverlapRelation8Shard16,
      tropicalOverlapProvenance8Shard16] using
      tropicalOverlapRelation8_provenance_row82
  · simpa [tropicalOverlapRelation8Shard16,
      tropicalOverlapProvenance8Shard16] using
      tropicalOverlapRelation8_provenance_row83
  · simpa [tropicalOverlapRelation8Shard16,
      tropicalOverlapProvenance8Shard16] using
      tropicalOverlapRelation8_provenance_row84

end

end MonochromaticQuantumGraphs.N8D3
