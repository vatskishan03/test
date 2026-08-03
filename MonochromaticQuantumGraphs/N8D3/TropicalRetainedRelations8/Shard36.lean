import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard36.Row4

/-! Lightweight dispatch for first-overlap rows 180--184. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 36. -/
def tropicalOverlapProvenance8Shard36 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row180,
  tropicalOverlapProvenance8Row181,
  tropicalOverlapProvenance8Row182,
  tropicalOverlapProvenance8Row183,
  tropicalOverlapProvenance8Row184
]

/-- Explicit targets for the five independently replayed rows in shard 36. -/
def tropicalOverlapRelation8Shard36 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row180,
  tropicalOverlapRelation8Row181,
  tropicalOverlapRelation8Row182,
  tropicalOverlapRelation8Row183,
  tropicalOverlapRelation8Row184
]

/-- Collect the five one-row provenance replays in shard 36. -/
theorem tropicalOverlapRelation8_provenance_shard36 (i : Fin 5) :
    tropicalOverlapRelation8Shard36 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard36 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard36,
      tropicalOverlapProvenance8Shard36] using
      tropicalOverlapRelation8_provenance_row180
  · simpa [tropicalOverlapRelation8Shard36,
      tropicalOverlapProvenance8Shard36] using
      tropicalOverlapRelation8_provenance_row181
  · simpa [tropicalOverlapRelation8Shard36,
      tropicalOverlapProvenance8Shard36] using
      tropicalOverlapRelation8_provenance_row182
  · simpa [tropicalOverlapRelation8Shard36,
      tropicalOverlapProvenance8Shard36] using
      tropicalOverlapRelation8_provenance_row183
  · simpa [tropicalOverlapRelation8Shard36,
      tropicalOverlapProvenance8Shard36] using
      tropicalOverlapRelation8_provenance_row184

end

end MonochromaticQuantumGraphs.N8D3
