import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard15.Row4

/-! Lightweight dispatch for first-overlap rows 75--79. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 15. -/
def tropicalOverlapProvenance8Shard15 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row75,
  tropicalOverlapProvenance8Row76,
  tropicalOverlapProvenance8Row77,
  tropicalOverlapProvenance8Row78,
  tropicalOverlapProvenance8Row79
]

/-- Explicit targets for the five independently replayed rows in shard 15. -/
def tropicalOverlapRelation8Shard15 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row75,
  tropicalOverlapRelation8Row76,
  tropicalOverlapRelation8Row77,
  tropicalOverlapRelation8Row78,
  tropicalOverlapRelation8Row79
]

/-- Collect the five one-row provenance replays in shard 15. -/
theorem tropicalOverlapRelation8_provenance_shard15 (i : Fin 5) :
    tropicalOverlapRelation8Shard15 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard15 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard15,
      tropicalOverlapProvenance8Shard15] using
      tropicalOverlapRelation8_provenance_row75
  · simpa [tropicalOverlapRelation8Shard15,
      tropicalOverlapProvenance8Shard15] using
      tropicalOverlapRelation8_provenance_row76
  · simpa [tropicalOverlapRelation8Shard15,
      tropicalOverlapProvenance8Shard15] using
      tropicalOverlapRelation8_provenance_row77
  · simpa [tropicalOverlapRelation8Shard15,
      tropicalOverlapProvenance8Shard15] using
      tropicalOverlapRelation8_provenance_row78
  · simpa [tropicalOverlapRelation8Shard15,
      tropicalOverlapProvenance8Shard15] using
      tropicalOverlapRelation8_provenance_row79

end

end MonochromaticQuantumGraphs.N8D3
