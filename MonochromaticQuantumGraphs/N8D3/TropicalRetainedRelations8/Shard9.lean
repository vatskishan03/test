import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard9.Row4

/-! Lightweight dispatch for first-overlap rows 45--49. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 9. -/
def tropicalOverlapProvenance8Shard9 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row45,
  tropicalOverlapProvenance8Row46,
  tropicalOverlapProvenance8Row47,
  tropicalOverlapProvenance8Row48,
  tropicalOverlapProvenance8Row49
]

/-- Explicit targets for the five independently replayed rows in shard 9. -/
def tropicalOverlapRelation8Shard9 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row45,
  tropicalOverlapRelation8Row46,
  tropicalOverlapRelation8Row47,
  tropicalOverlapRelation8Row48,
  tropicalOverlapRelation8Row49
]

/-- Collect the five one-row provenance replays in shard 9. -/
theorem tropicalOverlapRelation8_provenance_shard9 (i : Fin 5) :
    tropicalOverlapRelation8Shard9 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard9 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard9,
      tropicalOverlapProvenance8Shard9] using
      tropicalOverlapRelation8_provenance_row45
  · simpa [tropicalOverlapRelation8Shard9,
      tropicalOverlapProvenance8Shard9] using
      tropicalOverlapRelation8_provenance_row46
  · simpa [tropicalOverlapRelation8Shard9,
      tropicalOverlapProvenance8Shard9] using
      tropicalOverlapRelation8_provenance_row47
  · simpa [tropicalOverlapRelation8Shard9,
      tropicalOverlapProvenance8Shard9] using
      tropicalOverlapRelation8_provenance_row48
  · simpa [tropicalOverlapRelation8Shard9,
      tropicalOverlapProvenance8Shard9] using
      tropicalOverlapRelation8_provenance_row49

end

end MonochromaticQuantumGraphs.N8D3
