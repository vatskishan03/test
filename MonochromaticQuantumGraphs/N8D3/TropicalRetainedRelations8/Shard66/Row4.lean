import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 334. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 334. -/
def tropicalOverlapProvenance8Row334 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 180, coordinateB := 7, sourceJ := 181, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 334. -/
def tropicalOverlapRelation8Row334 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 42 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 52 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 70 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 39 88 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 49 88 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 70 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row334 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 99 142,
  tropicalOverlapDegreeFiveExponent8 6 7 59 109 130,
  tropicalOverlapDegreeFiveExponent8 6 7 70 88 142,
  tropicalOverlapDegreeFiveExponent8 7 15 39 88 142,
  tropicalOverlapDegreeFiveExponent8 7 15 49 88 130,
  tropicalOverlapDegreeFiveExponent8 7 26 49 70 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row334 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 99 142,
  tropicalOverlapDegreeFiveExponent8 6 7 59 109 130,
  tropicalOverlapDegreeFiveExponent8 6 7 70 88 142,
  tropicalOverlapDegreeFiveExponent8 6 15 42 88 142,
  tropicalOverlapDegreeFiveExponent8 6 15 52 88 130,
  tropicalOverlapDegreeFiveExponent8 6 26 52 70 117
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 334. -/
theorem tropicalOverlapSourceIExponent8_replay_row334 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row334.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row334.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row334 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 334. -/
theorem tropicalOverlapSourceJExponent8_replay_row334 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row334.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row334.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row334 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row334 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row334.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row334 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row334 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row334 :
    tropicalOverlapRelation8Row334 =
      tropicalOverlapSourceCombination8Row334 := by
  simp [tropicalOverlapRelation8Row334,
    tropicalOverlapSourceCombination8Row334,
    tropicalOverlapProvenance8Row334,
    tropicalOverlapSourceIExponent8Row334,
    tropicalOverlapSourceJExponent8Row334, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 334. -/
theorem tropicalOverlapRelation8_provenance_row334 :
    tropicalOverlapRelation8Row334 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row334 := by
  rw [tropicalOverlapRelation8_sourceCombination_row334]
  unfold tropicalOverlapSourceCombination8Row334
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row334,
    tropicalOverlapSourceJExponent8_replay_row334]

end

end MonochromaticQuantumGraphs.N8D3
