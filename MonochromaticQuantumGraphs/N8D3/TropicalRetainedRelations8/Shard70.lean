import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard70.Row4

/-! Lightweight dispatch for first-overlap rows 350--354. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 70. -/
def tropicalOverlapProvenance8Shard70 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row350,
  tropicalOverlapProvenance8Row351,
  tropicalOverlapProvenance8Row352,
  tropicalOverlapProvenance8Row353,
  tropicalOverlapProvenance8Row354
]

/-- Explicit targets for the five independently replayed rows in shard 70. -/
def tropicalOverlapRelation8Shard70 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row350,
  tropicalOverlapRelation8Row351,
  tropicalOverlapRelation8Row352,
  tropicalOverlapRelation8Row353,
  tropicalOverlapRelation8Row354
]

/-- Collect the five one-row provenance replays in shard 70. -/
theorem tropicalOverlapRelation8_provenance_shard70 (i : Fin 5) :
    tropicalOverlapRelation8Shard70 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard70 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard70,
      tropicalOverlapProvenance8Shard70] using
      tropicalOverlapRelation8_provenance_row350
  · simpa [tropicalOverlapRelation8Shard70,
      tropicalOverlapProvenance8Shard70] using
      tropicalOverlapRelation8_provenance_row351
  · simpa [tropicalOverlapRelation8Shard70,
      tropicalOverlapProvenance8Shard70] using
      tropicalOverlapRelation8_provenance_row352
  · simpa [tropicalOverlapRelation8Shard70,
      tropicalOverlapProvenance8Shard70] using
      tropicalOverlapRelation8_provenance_row353
  · simpa [tropicalOverlapRelation8Shard70,
      tropicalOverlapProvenance8Shard70] using
      tropicalOverlapRelation8_provenance_row354

end

end MonochromaticQuantumGraphs.N8D3
