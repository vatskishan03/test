import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 313. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 313. -/
def tropicalOverlapProvenance8Row313 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 162, coordinateB := 7, sourceJ := 163, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 313. -/
def tropicalOverlapRelation8Row313 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 41 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 52 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 75 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 38 88 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 49 88 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 75 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row313 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 98 142,
  tropicalOverlapDegreeFiveExponent8 6 7 65 109 127,
  tropicalOverlapDegreeFiveExponent8 6 7 75 88 142,
  tropicalOverlapDegreeFiveExponent8 7 17 38 88 142,
  tropicalOverlapDegreeFiveExponent8 7 17 49 88 127,
  tropicalOverlapDegreeFiveExponent8 7 26 49 75 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row313 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 65 98 142,
  tropicalOverlapDegreeFiveExponent8 6 7 65 109 127,
  tropicalOverlapDegreeFiveExponent8 6 7 75 88 142,
  tropicalOverlapDegreeFiveExponent8 6 17 41 88 142,
  tropicalOverlapDegreeFiveExponent8 6 17 52 88 127,
  tropicalOverlapDegreeFiveExponent8 6 26 52 75 117
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 313. -/
theorem tropicalOverlapSourceIExponent8_replay_row313 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row313.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row313.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row313 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 313. -/
theorem tropicalOverlapSourceJExponent8_replay_row313 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row313.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row313.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row313 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row313 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row313.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row313 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row313 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row313 :
    tropicalOverlapRelation8Row313 =
      tropicalOverlapSourceCombination8Row313 := by
  simp [tropicalOverlapRelation8Row313,
    tropicalOverlapSourceCombination8Row313,
    tropicalOverlapProvenance8Row313,
    tropicalOverlapSourceIExponent8Row313,
    tropicalOverlapSourceJExponent8Row313, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 313. -/
theorem tropicalOverlapRelation8_provenance_row313 :
    tropicalOverlapRelation8Row313 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row313 := by
  rw [tropicalOverlapRelation8_sourceCombination_row313]
  unfold tropicalOverlapSourceCombination8Row313
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row313,
    tropicalOverlapSourceJExponent8_replay_row313]

end

end MonochromaticQuantumGraphs.N8D3
