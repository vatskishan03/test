import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard13.Row4

/-! Lightweight dispatch for first-overlap rows 65--69. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 13. -/
def tropicalOverlapProvenance8Shard13 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row65,
  tropicalOverlapProvenance8Row66,
  tropicalOverlapProvenance8Row67,
  tropicalOverlapProvenance8Row68,
  tropicalOverlapProvenance8Row69
]

/-- Explicit targets for the five independently replayed rows in shard 13. -/
def tropicalOverlapRelation8Shard13 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row65,
  tropicalOverlapRelation8Row66,
  tropicalOverlapRelation8Row67,
  tropicalOverlapRelation8Row68,
  tropicalOverlapRelation8Row69
]

/-- Collect the five one-row provenance replays in shard 13. -/
theorem tropicalOverlapRelation8_provenance_shard13 (i : Fin 5) :
    tropicalOverlapRelation8Shard13 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard13 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard13,
      tropicalOverlapProvenance8Shard13] using
      tropicalOverlapRelation8_provenance_row65
  · simpa [tropicalOverlapRelation8Shard13,
      tropicalOverlapProvenance8Shard13] using
      tropicalOverlapRelation8_provenance_row66
  · simpa [tropicalOverlapRelation8Shard13,
      tropicalOverlapProvenance8Shard13] using
      tropicalOverlapRelation8_provenance_row67
  · simpa [tropicalOverlapRelation8Shard13,
      tropicalOverlapProvenance8Shard13] using
      tropicalOverlapRelation8_provenance_row68
  · simpa [tropicalOverlapRelation8Shard13,
      tropicalOverlapProvenance8Shard13] using
      tropicalOverlapRelation8_provenance_row69

end

end MonochromaticQuantumGraphs.N8D3
