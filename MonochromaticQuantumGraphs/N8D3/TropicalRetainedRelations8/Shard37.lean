import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard37.Row4

/-! Lightweight dispatch for first-overlap rows 185--189. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 37. -/
def tropicalOverlapProvenance8Shard37 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row185,
  tropicalOverlapProvenance8Row186,
  tropicalOverlapProvenance8Row187,
  tropicalOverlapProvenance8Row188,
  tropicalOverlapProvenance8Row189
]

/-- Explicit targets for the five independently replayed rows in shard 37. -/
def tropicalOverlapRelation8Shard37 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row185,
  tropicalOverlapRelation8Row186,
  tropicalOverlapRelation8Row187,
  tropicalOverlapRelation8Row188,
  tropicalOverlapRelation8Row189
]

/-- Collect the five one-row provenance replays in shard 37. -/
theorem tropicalOverlapRelation8_provenance_shard37 (i : Fin 5) :
    tropicalOverlapRelation8Shard37 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard37 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard37,
      tropicalOverlapProvenance8Shard37] using
      tropicalOverlapRelation8_provenance_row185
  · simpa [tropicalOverlapRelation8Shard37,
      tropicalOverlapProvenance8Shard37] using
      tropicalOverlapRelation8_provenance_row186
  · simpa [tropicalOverlapRelation8Shard37,
      tropicalOverlapProvenance8Shard37] using
      tropicalOverlapRelation8_provenance_row187
  · simpa [tropicalOverlapRelation8Shard37,
      tropicalOverlapProvenance8Shard37] using
      tropicalOverlapRelation8_provenance_row188
  · simpa [tropicalOverlapRelation8Shard37,
      tropicalOverlapProvenance8Shard37] using
      tropicalOverlapRelation8_provenance_row189

end

end MonochromaticQuantumGraphs.N8D3
