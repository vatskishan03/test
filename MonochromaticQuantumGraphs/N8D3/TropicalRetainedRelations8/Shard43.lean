import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard43.Row4

/-! Lightweight dispatch for first-overlap rows 215--219. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 43. -/
def tropicalOverlapProvenance8Shard43 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row215,
  tropicalOverlapProvenance8Row216,
  tropicalOverlapProvenance8Row217,
  tropicalOverlapProvenance8Row218,
  tropicalOverlapProvenance8Row219
]

/-- Explicit targets for the five independently replayed rows in shard 43. -/
def tropicalOverlapRelation8Shard43 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row215,
  tropicalOverlapRelation8Row216,
  tropicalOverlapRelation8Row217,
  tropicalOverlapRelation8Row218,
  tropicalOverlapRelation8Row219
]

/-- Collect the five one-row provenance replays in shard 43. -/
theorem tropicalOverlapRelation8_provenance_shard43 (i : Fin 5) :
    tropicalOverlapRelation8Shard43 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard43 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard43,
      tropicalOverlapProvenance8Shard43] using
      tropicalOverlapRelation8_provenance_row215
  · simpa [tropicalOverlapRelation8Shard43,
      tropicalOverlapProvenance8Shard43] using
      tropicalOverlapRelation8_provenance_row216
  · simpa [tropicalOverlapRelation8Shard43,
      tropicalOverlapProvenance8Shard43] using
      tropicalOverlapRelation8_provenance_row217
  · simpa [tropicalOverlapRelation8Shard43,
      tropicalOverlapProvenance8Shard43] using
      tropicalOverlapRelation8_provenance_row218
  · simpa [tropicalOverlapRelation8Shard43,
      tropicalOverlapProvenance8Shard43] using
      tropicalOverlapRelation8_provenance_row219

end

end MonochromaticQuantumGraphs.N8D3
