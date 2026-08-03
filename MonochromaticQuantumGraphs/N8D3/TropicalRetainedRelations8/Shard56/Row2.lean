import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 282. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 282. -/
def tropicalOverlapProvenance8Row282 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 140, coordinateB := 7, sourceJ := 141, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 282. -/
def tropicalOverlapRelation8Row282 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 43 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 51 88 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 71 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 40 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 48 88 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 71 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row282 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 100 139,
  tropicalOverlapDegreeFiveExponent8 6 7 59 108 133,
  tropicalOverlapDegreeFiveExponent8 6 7 71 88 139,
  tropicalOverlapDegreeFiveExponent8 7 15 40 88 139,
  tropicalOverlapDegreeFiveExponent8 7 15 48 88 133,
  tropicalOverlapDegreeFiveExponent8 7 26 48 71 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row282 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 100 139,
  tropicalOverlapDegreeFiveExponent8 6 7 59 108 133,
  tropicalOverlapDegreeFiveExponent8 6 7 71 88 139,
  tropicalOverlapDegreeFiveExponent8 6 15 43 88 139,
  tropicalOverlapDegreeFiveExponent8 6 15 51 88 133,
  tropicalOverlapDegreeFiveExponent8 6 26 51 71 117
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 282. -/
theorem tropicalOverlapSourceIExponent8_replay_row282 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row282.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row282.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row282 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 282. -/
theorem tropicalOverlapSourceJExponent8_replay_row282 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row282.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row282.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row282 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row282 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row282.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row282 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row282 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row282 :
    tropicalOverlapRelation8Row282 =
      tropicalOverlapSourceCombination8Row282 := by
  simp [tropicalOverlapRelation8Row282,
    tropicalOverlapSourceCombination8Row282,
    tropicalOverlapProvenance8Row282,
    tropicalOverlapSourceIExponent8Row282,
    tropicalOverlapSourceJExponent8Row282, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 282. -/
theorem tropicalOverlapRelation8_provenance_row282 :
    tropicalOverlapRelation8Row282 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row282 := by
  rw [tropicalOverlapRelation8_sourceCombination_row282]
  unfold tropicalOverlapSourceCombination8Row282
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row282,
    tropicalOverlapSourceJExponent8_replay_row282]

end

end MonochromaticQuantumGraphs.N8D3
