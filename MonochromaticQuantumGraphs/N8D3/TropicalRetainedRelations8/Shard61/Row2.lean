import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 307. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 307. -/
def tropicalOverlapProvenance8Row307 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 156, coordinateB := 7, sourceJ := 159, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 307. -/
def tropicalOverlapRelation8Row307 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 77 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 77 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row307 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 106 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 114 133,
  tropicalOverlapDegreeFiveExponent8 0 7 77 90 139,
  tropicalOverlapDegreeFiveExponent8 7 11 40 90 139,
  tropicalOverlapDegreeFiveExponent8 7 11 48 90 133,
  tropicalOverlapDegreeFiveExponent8 7 20 48 77 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row307 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 106 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 114 133,
  tropicalOverlapDegreeFiveExponent8 0 7 77 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 43 90 139,
  tropicalOverlapDegreeFiveExponent8 0 17 51 90 133,
  tropicalOverlapDegreeFiveExponent8 0 26 51 77 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 307. -/
theorem tropicalOverlapSourceIExponent8_replay_row307 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row307.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row307.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row307 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 307. -/
theorem tropicalOverlapSourceJExponent8_replay_row307 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row307.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row307.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row307 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row307 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row307.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row307 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row307 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row307 :
    tropicalOverlapRelation8Row307 =
      tropicalOverlapSourceCombination8Row307 := by
  simp [tropicalOverlapRelation8Row307,
    tropicalOverlapSourceCombination8Row307,
    tropicalOverlapProvenance8Row307,
    tropicalOverlapSourceIExponent8Row307,
    tropicalOverlapSourceJExponent8Row307, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 307. -/
theorem tropicalOverlapRelation8_provenance_row307 :
    tropicalOverlapRelation8Row307 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row307 := by
  rw [tropicalOverlapRelation8_sourceCombination_row307]
  unfold tropicalOverlapSourceCombination8Row307
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row307,
    tropicalOverlapSourceJExponent8_replay_row307]

end

end MonochromaticQuantumGraphs.N8D3
