import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row0
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row1
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row2
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row3
import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Shard56.Row4

/-! Lightweight dispatch for first-overlap rows 280--284. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact provenance for the five independently replayed rows in shard 56. -/
def tropicalOverlapProvenance8Shard56 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  tropicalOverlapProvenance8Row280,
  tropicalOverlapProvenance8Row281,
  tropicalOverlapProvenance8Row282,
  tropicalOverlapProvenance8Row283,
  tropicalOverlapProvenance8Row284
]

/-- Explicit targets for the five independently replayed rows in shard 56. -/
def tropicalOverlapRelation8Shard56 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  tropicalOverlapRelation8Row280,
  tropicalOverlapRelation8Row281,
  tropicalOverlapRelation8Row282,
  tropicalOverlapRelation8Row283,
  tropicalOverlapRelation8Row284
]

/-- Collect the five one-row provenance replays in shard 56. -/
theorem tropicalOverlapRelation8_provenance_shard56 (i : Fin 5) :
    tropicalOverlapRelation8Shard56 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard56 i) := by
  fin_cases i
  · simpa [tropicalOverlapRelation8Shard56,
      tropicalOverlapProvenance8Shard56] using
      tropicalOverlapRelation8_provenance_row280
  · simpa [tropicalOverlapRelation8Shard56,
      tropicalOverlapProvenance8Shard56] using
      tropicalOverlapRelation8_provenance_row281
  · simpa [tropicalOverlapRelation8Shard56,
      tropicalOverlapProvenance8Shard56] using
      tropicalOverlapRelation8_provenance_row282
  · simpa [tropicalOverlapRelation8Shard56,
      tropicalOverlapProvenance8Shard56] using
      tropicalOverlapRelation8_provenance_row283
  · simpa [tropicalOverlapRelation8Shard56,
      tropicalOverlapProvenance8Shard56] using
      tropicalOverlapRelation8_provenance_row284

end

end MonochromaticQuantumGraphs.N8D3
