import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard6.Row4

/-! Lightweight dispatch for first-overlap rows 30--34. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 6. -/
def tropicalOverlapProvenance8Shard6 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row30,
  tropicalOverlapProvenance8Row31,
  tropicalOverlapProvenance8Row32,
  tropicalOverlapProvenance8Row33,
  tropicalOverlapProvenance8Row34
]

/-- Explicit targets for the five independently replayed rows in shard 6. -/
def tropicalOverlapRelation8Shard6 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row30,
  tropicalOverlapRelation8Row31,
  tropicalOverlapRelation8Row32,
  tropicalOverlapRelation8Row33,
  tropicalOverlapRelation8Row34
]

/-- Collect the five one-row provenance replays in shard 6. -/
theorem tropicalOverlapRelation8_provenance_shard6 (i : Fin 5) :
    tropicalOverlapRelation8Shard6 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard6 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard6,
      tropicalOverlapProvenance8Shard6] using
      tropicalOverlapRelation8_provenance_row30
  · simpa [tropicalOverlapRelation8Shard6,
      tropicalOverlapProvenance8Shard6] using
      tropicalOverlapRelation8_provenance_row31
  · simpa [tropicalOverlapRelation8Shard6,
      tropicalOverlapProvenance8Shard6] using
      tropicalOverlapRelation8_provenance_row32
  · simpa [tropicalOverlapRelation8Shard6,
      tropicalOverlapProvenance8Shard6] using
      tropicalOverlapRelation8_provenance_row33
  · simpa [tropicalOverlapRelation8Shard6,
      tropicalOverlapProvenance8Shard6] using
      tropicalOverlapRelation8_provenance_row34

end

end MonochromaticQuantumGraphs.N8D3
