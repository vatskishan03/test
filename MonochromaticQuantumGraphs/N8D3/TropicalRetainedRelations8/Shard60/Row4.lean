import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 304. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 304. -/
def tropicalOverlapProvenance8Row304 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 152, coordinateB := 7, sourceJ := 155, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 304. -/
def tropicalOverlapRelation8Row304 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 71 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 71 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row304 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 106 139,
  tropicalOverlapDegreeFiveExponent8 0 7 59 114 133,
  tropicalOverlapDegreeFiveExponent8 0 7 71 90 139,
  tropicalOverlapDegreeFiveExponent8 7 9 40 90 139,
  tropicalOverlapDegreeFiveExponent8 7 9 48 90 133,
  tropicalOverlapDegreeFiveExponent8 7 20 48 71 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row304 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 106 139,
  tropicalOverlapDegreeFiveExponent8 0 7 59 114 133,
  tropicalOverlapDegreeFiveExponent8 0 7 71 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 43 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 51 90 133,
  tropicalOverlapDegreeFiveExponent8 0 26 51 71 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 304. -/
theorem tropicalOverlapSourceIExponent8_replay_row304 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row304.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row304.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row304 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 304. -/
theorem tropicalOverlapSourceJExponent8_replay_row304 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row304.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row304.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row304 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row304 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row304.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row304 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row304 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row304 :
    tropicalOverlapRelation8Row304 =
      tropicalOverlapSourceCombination8Row304 := by
  simp [tropicalOverlapRelation8Row304,
    tropicalOverlapSourceCombination8Row304,
    tropicalOverlapProvenance8Row304,
    tropicalOverlapSourceIExponent8Row304,
    tropicalOverlapSourceJExponent8Row304, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 304. -/
theorem tropicalOverlapRelation8_provenance_row304 :
    tropicalOverlapRelation8Row304 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row304 := by
  rw [tropicalOverlapRelation8_sourceCombination_row304]
  unfold tropicalOverlapSourceCombination8Row304
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row304,
    tropicalOverlapSourceJExponent8_replay_row304]

end

end MonochromaticQuantumGraphs.N8D3
