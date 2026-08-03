import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard19.Row4

/-! Lightweight dispatch for first-overlap rows 95--99. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 19. -/
def tropicalOverlapProvenance8Shard19 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row95,
  tropicalOverlapProvenance8Row96,
  tropicalOverlapProvenance8Row97,
  tropicalOverlapProvenance8Row98,
  tropicalOverlapProvenance8Row99
]

/-- Explicit targets for the five independently replayed rows in shard 19. -/
def tropicalOverlapRelation8Shard19 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row95,
  tropicalOverlapRelation8Row96,
  tropicalOverlapRelation8Row97,
  tropicalOverlapRelation8Row98,
  tropicalOverlapRelation8Row99
]

/-- Collect the five one-row provenance replays in shard 19. -/
theorem tropicalOverlapRelation8_provenance_shard19 (i : Fin 5) :
    tropicalOverlapRelation8Shard19 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard19 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard19,
      tropicalOverlapProvenance8Shard19] using
      tropicalOverlapRelation8_provenance_row95
  · simpa [tropicalOverlapRelation8Shard19,
      tropicalOverlapProvenance8Shard19] using
      tropicalOverlapRelation8_provenance_row96
  · simpa [tropicalOverlapRelation8Shard19,
      tropicalOverlapProvenance8Shard19] using
      tropicalOverlapRelation8_provenance_row97
  · simpa [tropicalOverlapRelation8Shard19,
      tropicalOverlapProvenance8Shard19] using
      tropicalOverlapRelation8_provenance_row98
  · simpa [tropicalOverlapRelation8Shard19,
      tropicalOverlapProvenance8Shard19] using
      tropicalOverlapRelation8_provenance_row99

end

end MonochromaticQuantumGraphs.N8D3
