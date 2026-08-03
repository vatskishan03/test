import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard34.Row4

/-! Lightweight dispatch for first-overlap rows 170--174. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 34. -/
def tropicalOverlapProvenance8Shard34 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row170,
  tropicalOverlapProvenance8Row171,
  tropicalOverlapProvenance8Row172,
  tropicalOverlapProvenance8Row173,
  tropicalOverlapProvenance8Row174
]

/-- Explicit targets for the five independently replayed rows in shard 34. -/
def tropicalOverlapRelation8Shard34 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row170,
  tropicalOverlapRelation8Row171,
  tropicalOverlapRelation8Row172,
  tropicalOverlapRelation8Row173,
  tropicalOverlapRelation8Row174
]

/-- Collect the five one-row provenance replays in shard 34. -/
theorem tropicalOverlapRelation8_provenance_shard34 (i : Fin 5) :
    tropicalOverlapRelation8Shard34 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard34 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard34,
      tropicalOverlapProvenance8Shard34] using
      tropicalOverlapRelation8_provenance_row170
  · simpa [tropicalOverlapRelation8Shard34,
      tropicalOverlapProvenance8Shard34] using
      tropicalOverlapRelation8_provenance_row171
  · simpa [tropicalOverlapRelation8Shard34,
      tropicalOverlapProvenance8Shard34] using
      tropicalOverlapRelation8_provenance_row172
  · simpa [tropicalOverlapRelation8Shard34,
      tropicalOverlapProvenance8Shard34] using
      tropicalOverlapRelation8_provenance_row173
  · simpa [tropicalOverlapRelation8Shard34,
      tropicalOverlapProvenance8Shard34] using
      tropicalOverlapRelation8_provenance_row174

end

end MonochromaticQuantumGraphs.N8D3
