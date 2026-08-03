import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard29.Row4

/-! Lightweight dispatch for first-overlap rows 145--149. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 29. -/
def tropicalOverlapProvenance8Shard29 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row145,
  tropicalOverlapProvenance8Row146,
  tropicalOverlapProvenance8Row147,
  tropicalOverlapProvenance8Row148,
  tropicalOverlapProvenance8Row149
]

/-- Explicit targets for the five independently replayed rows in shard 29. -/
def tropicalOverlapRelation8Shard29 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row145,
  tropicalOverlapRelation8Row146,
  tropicalOverlapRelation8Row147,
  tropicalOverlapRelation8Row148,
  tropicalOverlapRelation8Row149
]

/-- Collect the five one-row provenance replays in shard 29. -/
theorem tropicalOverlapRelation8_provenance_shard29 (i : Fin 5) :
    tropicalOverlapRelation8Shard29 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard29 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard29,
      tropicalOverlapProvenance8Shard29] using
      tropicalOverlapRelation8_provenance_row145
  · simpa [tropicalOverlapRelation8Shard29,
      tropicalOverlapProvenance8Shard29] using
      tropicalOverlapRelation8_provenance_row146
  · simpa [tropicalOverlapRelation8Shard29,
      tropicalOverlapProvenance8Shard29] using
      tropicalOverlapRelation8_provenance_row147
  · simpa [tropicalOverlapRelation8Shard29,
      tropicalOverlapProvenance8Shard29] using
      tropicalOverlapRelation8_provenance_row148
  · simpa [tropicalOverlapRelation8Shard29,
      tropicalOverlapProvenance8Shard29] using
      tropicalOverlapRelation8_provenance_row149

end

end MonochromaticQuantumGraphs.N8D3
