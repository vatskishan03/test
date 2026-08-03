import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard46.Row4

/-! Lightweight dispatch for first-overlap rows 230--234. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 46. -/
def tropicalOverlapProvenance8Shard46 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row230,
  tropicalOverlapProvenance8Row231,
  tropicalOverlapProvenance8Row232,
  tropicalOverlapProvenance8Row233,
  tropicalOverlapProvenance8Row234
]

/-- Explicit targets for the five independently replayed rows in shard 46. -/
def tropicalOverlapRelation8Shard46 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row230,
  tropicalOverlapRelation8Row231,
  tropicalOverlapRelation8Row232,
  tropicalOverlapRelation8Row233,
  tropicalOverlapRelation8Row234
]

/-- Collect the five one-row provenance replays in shard 46. -/
theorem tropicalOverlapRelation8_provenance_shard46 (i : Fin 5) :
    tropicalOverlapRelation8Shard46 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard46 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard46,
      tropicalOverlapProvenance8Shard46] using
      tropicalOverlapRelation8_provenance_row230
  · simpa [tropicalOverlapRelation8Shard46,
      tropicalOverlapProvenance8Shard46] using
      tropicalOverlapRelation8_provenance_row231
  · simpa [tropicalOverlapRelation8Shard46,
      tropicalOverlapProvenance8Shard46] using
      tropicalOverlapRelation8_provenance_row232
  · simpa [tropicalOverlapRelation8Shard46,
      tropicalOverlapProvenance8Shard46] using
      tropicalOverlapRelation8_provenance_row233
  · simpa [tropicalOverlapRelation8Shard46,
      tropicalOverlapProvenance8Shard46] using
      tropicalOverlapRelation8_provenance_row234

end

end MonochromaticQuantumGraphs.N8D3
