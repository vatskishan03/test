import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard20.Row4

/-! Lightweight dispatch for first-overlap rows 100--104. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 20. -/
def tropicalOverlapProvenance8Shard20 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row100,
  tropicalOverlapProvenance8Row101,
  tropicalOverlapProvenance8Row102,
  tropicalOverlapProvenance8Row103,
  tropicalOverlapProvenance8Row104
]

/-- Explicit targets for the five independently replayed rows in shard 20. -/
def tropicalOverlapRelation8Shard20 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row100,
  tropicalOverlapRelation8Row101,
  tropicalOverlapRelation8Row102,
  tropicalOverlapRelation8Row103,
  tropicalOverlapRelation8Row104
]

/-- Collect the five one-row provenance replays in shard 20. -/
theorem tropicalOverlapRelation8_provenance_shard20 (i : Fin 5) :
    tropicalOverlapRelation8Shard20 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard20 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard20,
      tropicalOverlapProvenance8Shard20] using
      tropicalOverlapRelation8_provenance_row100
  · simpa [tropicalOverlapRelation8Shard20,
      tropicalOverlapProvenance8Shard20] using
      tropicalOverlapRelation8_provenance_row101
  · simpa [tropicalOverlapRelation8Shard20,
      tropicalOverlapProvenance8Shard20] using
      tropicalOverlapRelation8_provenance_row102
  · simpa [tropicalOverlapRelation8Shard20,
      tropicalOverlapProvenance8Shard20] using
      tropicalOverlapRelation8_provenance_row103
  · simpa [tropicalOverlapRelation8Shard20,
      tropicalOverlapProvenance8Shard20] using
      tropicalOverlapRelation8_provenance_row104

end

end MonochromaticQuantumGraphs.N8D3
