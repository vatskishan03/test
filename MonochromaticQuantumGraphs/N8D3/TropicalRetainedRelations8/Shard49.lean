import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard49.Row4

/-! Lightweight dispatch for first-overlap rows 245--249. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 49. -/
def tropicalOverlapProvenance8Shard49 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row245,
  tropicalOverlapProvenance8Row246,
  tropicalOverlapProvenance8Row247,
  tropicalOverlapProvenance8Row248,
  tropicalOverlapProvenance8Row249
]

/-- Explicit targets for the five independently replayed rows in shard 49. -/
def tropicalOverlapRelation8Shard49 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row245,
  tropicalOverlapRelation8Row246,
  tropicalOverlapRelation8Row247,
  tropicalOverlapRelation8Row248,
  tropicalOverlapRelation8Row249
]

/-- Collect the five one-row provenance replays in shard 49. -/
theorem tropicalOverlapRelation8_provenance_shard49 (i : Fin 5) :
    tropicalOverlapRelation8Shard49 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard49 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard49,
      tropicalOverlapProvenance8Shard49] using
      tropicalOverlapRelation8_provenance_row245
  · simpa [tropicalOverlapRelation8Shard49,
      tropicalOverlapProvenance8Shard49] using
      tropicalOverlapRelation8_provenance_row246
  · simpa [tropicalOverlapRelation8Shard49,
      tropicalOverlapProvenance8Shard49] using
      tropicalOverlapRelation8_provenance_row247
  · simpa [tropicalOverlapRelation8Shard49,
      tropicalOverlapProvenance8Shard49] using
      tropicalOverlapRelation8_provenance_row248
  · simpa [tropicalOverlapRelation8Shard49,
      tropicalOverlapProvenance8Shard49] using
      tropicalOverlapRelation8_provenance_row249

end

end MonochromaticQuantumGraphs.N8D3
