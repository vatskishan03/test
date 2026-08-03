import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard38.Row4

/-! Lightweight dispatch for first-overlap rows 190--194. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 38. -/
def tropicalOverlapProvenance8Shard38 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row190,
  tropicalOverlapProvenance8Row191,
  tropicalOverlapProvenance8Row192,
  tropicalOverlapProvenance8Row193,
  tropicalOverlapProvenance8Row194
]

/-- Explicit targets for the five independently replayed rows in shard 38. -/
def tropicalOverlapRelation8Shard38 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row190,
  tropicalOverlapRelation8Row191,
  tropicalOverlapRelation8Row192,
  tropicalOverlapRelation8Row193,
  tropicalOverlapRelation8Row194
]

/-- Collect the five one-row provenance replays in shard 38. -/
theorem tropicalOverlapRelation8_provenance_shard38 (i : Fin 5) :
    tropicalOverlapRelation8Shard38 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard38 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard38,
      tropicalOverlapProvenance8Shard38] using
      tropicalOverlapRelation8_provenance_row190
  · simpa [tropicalOverlapRelation8Shard38,
      tropicalOverlapProvenance8Shard38] using
      tropicalOverlapRelation8_provenance_row191
  · simpa [tropicalOverlapRelation8Shard38,
      tropicalOverlapProvenance8Shard38] using
      tropicalOverlapRelation8_provenance_row192
  · simpa [tropicalOverlapRelation8Shard38,
      tropicalOverlapProvenance8Shard38] using
      tropicalOverlapRelation8_provenance_row193
  · simpa [tropicalOverlapRelation8Shard38,
      tropicalOverlapProvenance8Shard38] using
      tropicalOverlapRelation8_provenance_row194

end

end MonochromaticQuantumGraphs.N8D3
