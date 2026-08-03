import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard14.Row4

/-! Lightweight dispatch for first-overlap rows 70--74. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 14. -/
def tropicalOverlapProvenance8Shard14 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row70,
  tropicalOverlapProvenance8Row71,
  tropicalOverlapProvenance8Row72,
  tropicalOverlapProvenance8Row73,
  tropicalOverlapProvenance8Row74
]

/-- Explicit targets for the five independently replayed rows in shard 14. -/
def tropicalOverlapRelation8Shard14 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row70,
  tropicalOverlapRelation8Row71,
  tropicalOverlapRelation8Row72,
  tropicalOverlapRelation8Row73,
  tropicalOverlapRelation8Row74
]

/-- Collect the five one-row provenance replays in shard 14. -/
theorem tropicalOverlapRelation8_provenance_shard14 (i : Fin 5) :
    tropicalOverlapRelation8Shard14 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard14 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard14,
      tropicalOverlapProvenance8Shard14] using
      tropicalOverlapRelation8_provenance_row70
  · simpa [tropicalOverlapRelation8Shard14,
      tropicalOverlapProvenance8Shard14] using
      tropicalOverlapRelation8_provenance_row71
  · simpa [tropicalOverlapRelation8Shard14,
      tropicalOverlapProvenance8Shard14] using
      tropicalOverlapRelation8_provenance_row72
  · simpa [tropicalOverlapRelation8Shard14,
      tropicalOverlapProvenance8Shard14] using
      tropicalOverlapRelation8_provenance_row73
  · simpa [tropicalOverlapRelation8Shard14,
      tropicalOverlapProvenance8Shard14] using
      tropicalOverlapRelation8_provenance_row74

end

end MonochromaticQuantumGraphs.N8D3
