import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard57.Row4

/-! Lightweight dispatch for first-overlap rows 285--289. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 57. -/
def tropicalOverlapProvenance8Shard57 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row285,
  tropicalOverlapProvenance8Row286,
  tropicalOverlapProvenance8Row287,
  tropicalOverlapProvenance8Row288,
  tropicalOverlapProvenance8Row289
]

/-- Explicit targets for the five independently replayed rows in shard 57. -/
def tropicalOverlapRelation8Shard57 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row285,
  tropicalOverlapRelation8Row286,
  tropicalOverlapRelation8Row287,
  tropicalOverlapRelation8Row288,
  tropicalOverlapRelation8Row289
]

/-- Collect the five one-row provenance replays in shard 57. -/
theorem tropicalOverlapRelation8_provenance_shard57 (i : Fin 5) :
    tropicalOverlapRelation8Shard57 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard57 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard57,
      tropicalOverlapProvenance8Shard57] using
      tropicalOverlapRelation8_provenance_row285
  · simpa [tropicalOverlapRelation8Shard57,
      tropicalOverlapProvenance8Shard57] using
      tropicalOverlapRelation8_provenance_row286
  · simpa [tropicalOverlapRelation8Shard57,
      tropicalOverlapProvenance8Shard57] using
      tropicalOverlapRelation8_provenance_row287
  · simpa [tropicalOverlapRelation8Shard57,
      tropicalOverlapProvenance8Shard57] using
      tropicalOverlapRelation8_provenance_row288
  · simpa [tropicalOverlapRelation8Shard57,
      tropicalOverlapProvenance8Shard57] using
      tropicalOverlapRelation8_provenance_row289

end

end MonochromaticQuantumGraphs.N8D3
