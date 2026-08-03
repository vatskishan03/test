import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard68.Row4

/-! Lightweight dispatch for first-overlap rows 340--344. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 68. -/
def tropicalOverlapProvenance8Shard68 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row340,
  tropicalOverlapProvenance8Row341,
  tropicalOverlapProvenance8Row342,
  tropicalOverlapProvenance8Row343,
  tropicalOverlapProvenance8Row344
]

/-- Explicit targets for the five independently replayed rows in shard 68. -/
def tropicalOverlapRelation8Shard68 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row340,
  tropicalOverlapRelation8Row341,
  tropicalOverlapRelation8Row342,
  tropicalOverlapRelation8Row343,
  tropicalOverlapRelation8Row344
]

/-- Collect the five one-row provenance replays in shard 68. -/
theorem tropicalOverlapRelation8_provenance_shard68 (i : Fin 5) :
    tropicalOverlapRelation8Shard68 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard68 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard68,
      tropicalOverlapProvenance8Shard68] using
      tropicalOverlapRelation8_provenance_row340
  · simpa [tropicalOverlapRelation8Shard68,
      tropicalOverlapProvenance8Shard68] using
      tropicalOverlapRelation8_provenance_row341
  · simpa [tropicalOverlapRelation8Shard68,
      tropicalOverlapProvenance8Shard68] using
      tropicalOverlapRelation8_provenance_row342
  · simpa [tropicalOverlapRelation8Shard68,
      tropicalOverlapProvenance8Shard68] using
      tropicalOverlapRelation8_provenance_row343
  · simpa [tropicalOverlapRelation8Shard68,
      tropicalOverlapProvenance8Shard68] using
      tropicalOverlapRelation8_provenance_row344

end

end MonochromaticQuantumGraphs.N8D3
