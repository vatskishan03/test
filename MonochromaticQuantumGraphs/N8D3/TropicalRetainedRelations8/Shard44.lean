import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard44.Row4

/-! Lightweight dispatch for first-overlap rows 220--224. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 44. -/
def tropicalOverlapProvenance8Shard44 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row220,
  tropicalOverlapProvenance8Row221,
  tropicalOverlapProvenance8Row222,
  tropicalOverlapProvenance8Row223,
  tropicalOverlapProvenance8Row224
]

/-- Explicit targets for the five independently replayed rows in shard 44. -/
def tropicalOverlapRelation8Shard44 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row220,
  tropicalOverlapRelation8Row221,
  tropicalOverlapRelation8Row222,
  tropicalOverlapRelation8Row223,
  tropicalOverlapRelation8Row224
]

/-- Collect the five one-row provenance replays in shard 44. -/
theorem tropicalOverlapRelation8_provenance_shard44 (i : Fin 5) :
    tropicalOverlapRelation8Shard44 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard44 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard44,
      tropicalOverlapProvenance8Shard44] using
      tropicalOverlapRelation8_provenance_row220
  · simpa [tropicalOverlapRelation8Shard44,
      tropicalOverlapProvenance8Shard44] using
      tropicalOverlapRelation8_provenance_row221
  · simpa [tropicalOverlapRelation8Shard44,
      tropicalOverlapProvenance8Shard44] using
      tropicalOverlapRelation8_provenance_row222
  · simpa [tropicalOverlapRelation8Shard44,
      tropicalOverlapProvenance8Shard44] using
      tropicalOverlapRelation8_provenance_row223
  · simpa [tropicalOverlapRelation8Shard44,
      tropicalOverlapProvenance8Shard44] using
      tropicalOverlapRelation8_provenance_row224

end

end MonochromaticQuantumGraphs.N8D3
