import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard12.Row4

/-! Lightweight dispatch for first-overlap rows 60--64. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 12. -/
def tropicalOverlapProvenance8Shard12 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row60,
  tropicalOverlapProvenance8Row61,
  tropicalOverlapProvenance8Row62,
  tropicalOverlapProvenance8Row63,
  tropicalOverlapProvenance8Row64
]

/-- Explicit targets for the five independently replayed rows in shard 12. -/
def tropicalOverlapRelation8Shard12 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row60,
  tropicalOverlapRelation8Row61,
  tropicalOverlapRelation8Row62,
  tropicalOverlapRelation8Row63,
  tropicalOverlapRelation8Row64
]

/-- Collect the five one-row provenance replays in shard 12. -/
theorem tropicalOverlapRelation8_provenance_shard12 (i : Fin 5) :
    tropicalOverlapRelation8Shard12 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard12 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard12,
      tropicalOverlapProvenance8Shard12] using
      tropicalOverlapRelation8_provenance_row60
  · simpa [tropicalOverlapRelation8Shard12,
      tropicalOverlapProvenance8Shard12] using
      tropicalOverlapRelation8_provenance_row61
  · simpa [tropicalOverlapRelation8Shard12,
      tropicalOverlapProvenance8Shard12] using
      tropicalOverlapRelation8_provenance_row62
  · simpa [tropicalOverlapRelation8Shard12,
      tropicalOverlapProvenance8Shard12] using
      tropicalOverlapRelation8_provenance_row63
  · simpa [tropicalOverlapRelation8Shard12,
      tropicalOverlapProvenance8Shard12] using
      tropicalOverlapRelation8_provenance_row64

end

end MonochromaticQuantumGraphs.N8D3
