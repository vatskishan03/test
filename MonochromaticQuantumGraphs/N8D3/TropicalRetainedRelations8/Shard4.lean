import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard4.Row4

/-! Lightweight dispatch for first-overlap rows 20--24. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 4. -/
def tropicalOverlapProvenance8Shard4 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row20,
  tropicalOverlapProvenance8Row21,
  tropicalOverlapProvenance8Row22,
  tropicalOverlapProvenance8Row23,
  tropicalOverlapProvenance8Row24
]

/-- Explicit targets for the five independently replayed rows in shard 4. -/
def tropicalOverlapRelation8Shard4 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row20,
  tropicalOverlapRelation8Row21,
  tropicalOverlapRelation8Row22,
  tropicalOverlapRelation8Row23,
  tropicalOverlapRelation8Row24
]

/-- Collect the five one-row provenance replays in shard 4. -/
theorem tropicalOverlapRelation8_provenance_shard4 (i : Fin 5) :
    tropicalOverlapRelation8Shard4 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard4 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard4,
      tropicalOverlapProvenance8Shard4] using
      tropicalOverlapRelation8_provenance_row20
  · simpa [tropicalOverlapRelation8Shard4,
      tropicalOverlapProvenance8Shard4] using
      tropicalOverlapRelation8_provenance_row21
  · simpa [tropicalOverlapRelation8Shard4,
      tropicalOverlapProvenance8Shard4] using
      tropicalOverlapRelation8_provenance_row22
  · simpa [tropicalOverlapRelation8Shard4,
      tropicalOverlapProvenance8Shard4] using
      tropicalOverlapRelation8_provenance_row23
  · simpa [tropicalOverlapRelation8Shard4,
      tropicalOverlapProvenance8Shard4] using
      tropicalOverlapRelation8_provenance_row24

end

end MonochromaticQuantumGraphs.N8D3
