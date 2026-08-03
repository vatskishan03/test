import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard18.Row4

/-! Lightweight dispatch for first-overlap rows 90--94. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 18. -/
def tropicalOverlapProvenance8Shard18 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row90,
  tropicalOverlapProvenance8Row91,
  tropicalOverlapProvenance8Row92,
  tropicalOverlapProvenance8Row93,
  tropicalOverlapProvenance8Row94
]

/-- Explicit targets for the five independently replayed rows in shard 18. -/
def tropicalOverlapRelation8Shard18 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row90,
  tropicalOverlapRelation8Row91,
  tropicalOverlapRelation8Row92,
  tropicalOverlapRelation8Row93,
  tropicalOverlapRelation8Row94
]

/-- Collect the five one-row provenance replays in shard 18. -/
theorem tropicalOverlapRelation8_provenance_shard18 (i : Fin 5) :
    tropicalOverlapRelation8Shard18 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard18 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard18,
      tropicalOverlapProvenance8Shard18] using
      tropicalOverlapRelation8_provenance_row90
  · simpa [tropicalOverlapRelation8Shard18,
      tropicalOverlapProvenance8Shard18] using
      tropicalOverlapRelation8_provenance_row91
  · simpa [tropicalOverlapRelation8Shard18,
      tropicalOverlapProvenance8Shard18] using
      tropicalOverlapRelation8_provenance_row92
  · simpa [tropicalOverlapRelation8Shard18,
      tropicalOverlapProvenance8Shard18] using
      tropicalOverlapRelation8_provenance_row93
  · simpa [tropicalOverlapRelation8Shard18,
      tropicalOverlapProvenance8Shard18] using
      tropicalOverlapRelation8_provenance_row94

end

end MonochromaticQuantumGraphs.N8D3
