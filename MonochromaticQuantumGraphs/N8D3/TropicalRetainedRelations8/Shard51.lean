import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard51.Row4

/-! Lightweight dispatch for first-overlap rows 255--259. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 51. -/
def tropicalOverlapProvenance8Shard51 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row255,
  tropicalOverlapProvenance8Row256,
  tropicalOverlapProvenance8Row257,
  tropicalOverlapProvenance8Row258,
  tropicalOverlapProvenance8Row259
]

/-- Explicit targets for the five independently replayed rows in shard 51. -/
def tropicalOverlapRelation8Shard51 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row255,
  tropicalOverlapRelation8Row256,
  tropicalOverlapRelation8Row257,
  tropicalOverlapRelation8Row258,
  tropicalOverlapRelation8Row259
]

/-- Collect the five one-row provenance replays in shard 51. -/
theorem tropicalOverlapRelation8_provenance_shard51 (i : Fin 5) :
    tropicalOverlapRelation8Shard51 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard51 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard51,
      tropicalOverlapProvenance8Shard51] using
      tropicalOverlapRelation8_provenance_row255
  · simpa [tropicalOverlapRelation8Shard51,
      tropicalOverlapProvenance8Shard51] using
      tropicalOverlapRelation8_provenance_row256
  · simpa [tropicalOverlapRelation8Shard51,
      tropicalOverlapProvenance8Shard51] using
      tropicalOverlapRelation8_provenance_row257
  · simpa [tropicalOverlapRelation8Shard51,
      tropicalOverlapProvenance8Shard51] using
      tropicalOverlapRelation8_provenance_row258
  · simpa [tropicalOverlapRelation8Shard51,
      tropicalOverlapProvenance8Shard51] using
      tropicalOverlapRelation8_provenance_row259

end

end MonochromaticQuantumGraphs.N8D3
