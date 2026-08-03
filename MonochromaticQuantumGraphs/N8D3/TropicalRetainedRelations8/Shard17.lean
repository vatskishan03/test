import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard17.Row4

/-! Lightweight dispatch for first-overlap rows 85--89. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 17. -/
def tropicalOverlapProvenance8Shard17 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row85,
  tropicalOverlapProvenance8Row86,
  tropicalOverlapProvenance8Row87,
  tropicalOverlapProvenance8Row88,
  tropicalOverlapProvenance8Row89
]

/-- Explicit targets for the five independently replayed rows in shard 17. -/
def tropicalOverlapRelation8Shard17 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row85,
  tropicalOverlapRelation8Row86,
  tropicalOverlapRelation8Row87,
  tropicalOverlapRelation8Row88,
  tropicalOverlapRelation8Row89
]

/-- Collect the five one-row provenance replays in shard 17. -/
theorem tropicalOverlapRelation8_provenance_shard17 (i : Fin 5) :
    tropicalOverlapRelation8Shard17 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard17 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard17,
      tropicalOverlapProvenance8Shard17] using
      tropicalOverlapRelation8_provenance_row85
  · simpa [tropicalOverlapRelation8Shard17,
      tropicalOverlapProvenance8Shard17] using
      tropicalOverlapRelation8_provenance_row86
  · simpa [tropicalOverlapRelation8Shard17,
      tropicalOverlapProvenance8Shard17] using
      tropicalOverlapRelation8_provenance_row87
  · simpa [tropicalOverlapRelation8Shard17,
      tropicalOverlapProvenance8Shard17] using
      tropicalOverlapRelation8_provenance_row88
  · simpa [tropicalOverlapRelation8Shard17,
      tropicalOverlapProvenance8Shard17] using
      tropicalOverlapRelation8_provenance_row89

end

end MonochromaticQuantumGraphs.N8D3
