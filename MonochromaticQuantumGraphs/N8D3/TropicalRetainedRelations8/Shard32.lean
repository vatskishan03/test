import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard32.Row4

/-! Lightweight dispatch for first-overlap rows 160--164. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 32. -/
def tropicalOverlapProvenance8Shard32 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row160,
  tropicalOverlapProvenance8Row161,
  tropicalOverlapProvenance8Row162,
  tropicalOverlapProvenance8Row163,
  tropicalOverlapProvenance8Row164
]

/-- Explicit targets for the five independently replayed rows in shard 32. -/
def tropicalOverlapRelation8Shard32 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row160,
  tropicalOverlapRelation8Row161,
  tropicalOverlapRelation8Row162,
  tropicalOverlapRelation8Row163,
  tropicalOverlapRelation8Row164
]

/-- Collect the five one-row provenance replays in shard 32. -/
theorem tropicalOverlapRelation8_provenance_shard32 (i : Fin 5) :
    tropicalOverlapRelation8Shard32 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard32 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard32,
      tropicalOverlapProvenance8Shard32] using
      tropicalOverlapRelation8_provenance_row160
  · simpa [tropicalOverlapRelation8Shard32,
      tropicalOverlapProvenance8Shard32] using
      tropicalOverlapRelation8_provenance_row161
  · simpa [tropicalOverlapRelation8Shard32,
      tropicalOverlapProvenance8Shard32] using
      tropicalOverlapRelation8_provenance_row162
  · simpa [tropicalOverlapRelation8Shard32,
      tropicalOverlapProvenance8Shard32] using
      tropicalOverlapRelation8_provenance_row163
  · simpa [tropicalOverlapRelation8Shard32,
      tropicalOverlapProvenance8Shard32] using
      tropicalOverlapRelation8_provenance_row164

end

end MonochromaticQuantumGraphs.N8D3
