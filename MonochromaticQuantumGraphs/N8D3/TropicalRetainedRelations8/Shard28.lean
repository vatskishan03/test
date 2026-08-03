import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard28.Row4

/-! Lightweight dispatch for first-overlap rows 140--144. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 28. -/
def tropicalOverlapProvenance8Shard28 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row140,
  tropicalOverlapProvenance8Row141,
  tropicalOverlapProvenance8Row142,
  tropicalOverlapProvenance8Row143,
  tropicalOverlapProvenance8Row144
]

/-- Explicit targets for the five independently replayed rows in shard 28. -/
def tropicalOverlapRelation8Shard28 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row140,
  tropicalOverlapRelation8Row141,
  tropicalOverlapRelation8Row142,
  tropicalOverlapRelation8Row143,
  tropicalOverlapRelation8Row144
]

/-- Collect the five one-row provenance replays in shard 28. -/
theorem tropicalOverlapRelation8_provenance_shard28 (i : Fin 5) :
    tropicalOverlapRelation8Shard28 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard28 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard28,
      tropicalOverlapProvenance8Shard28] using
      tropicalOverlapRelation8_provenance_row140
  · simpa [tropicalOverlapRelation8Shard28,
      tropicalOverlapProvenance8Shard28] using
      tropicalOverlapRelation8_provenance_row141
  · simpa [tropicalOverlapRelation8Shard28,
      tropicalOverlapProvenance8Shard28] using
      tropicalOverlapRelation8_provenance_row142
  · simpa [tropicalOverlapRelation8Shard28,
      tropicalOverlapProvenance8Shard28] using
      tropicalOverlapRelation8_provenance_row143
  · simpa [tropicalOverlapRelation8Shard28,
      tropicalOverlapProvenance8Shard28] using
      tropicalOverlapRelation8_provenance_row144

end

end MonochromaticQuantumGraphs.N8D3
