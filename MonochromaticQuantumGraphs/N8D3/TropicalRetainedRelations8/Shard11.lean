import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard11.Row4

/-! Lightweight dispatch for first-overlap rows 55--59. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 11. -/
def tropicalOverlapProvenance8Shard11 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row55,
  tropicalOverlapProvenance8Row56,
  tropicalOverlapProvenance8Row57,
  tropicalOverlapProvenance8Row58,
  tropicalOverlapProvenance8Row59
]

/-- Explicit targets for the five independently replayed rows in shard 11. -/
def tropicalOverlapRelation8Shard11 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row55,
  tropicalOverlapRelation8Row56,
  tropicalOverlapRelation8Row57,
  tropicalOverlapRelation8Row58,
  tropicalOverlapRelation8Row59
]

/-- Collect the five one-row provenance replays in shard 11. -/
theorem tropicalOverlapRelation8_provenance_shard11 (i : Fin 5) :
    tropicalOverlapRelation8Shard11 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard11 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard11,
      tropicalOverlapProvenance8Shard11] using
      tropicalOverlapRelation8_provenance_row55
  · simpa [tropicalOverlapRelation8Shard11,
      tropicalOverlapProvenance8Shard11] using
      tropicalOverlapRelation8_provenance_row56
  · simpa [tropicalOverlapRelation8Shard11,
      tropicalOverlapProvenance8Shard11] using
      tropicalOverlapRelation8_provenance_row57
  · simpa [tropicalOverlapRelation8Shard11,
      tropicalOverlapProvenance8Shard11] using
      tropicalOverlapRelation8_provenance_row58
  · simpa [tropicalOverlapRelation8Shard11,
      tropicalOverlapProvenance8Shard11] using
      tropicalOverlapRelation8_provenance_row59

end

end MonochromaticQuantumGraphs.N8D3
