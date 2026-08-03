import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 238. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 238. -/
def tropicalOverlapProvenance8Row238 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 112, coordinateB := 7, sourceJ := 115, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 238. -/
def tropicalOverlapRelation8Row238 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 69 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row238 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 104 139,
  tropicalOverlapDegreeFiveExponent8 0 7 59 114 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 90 139,
  tropicalOverlapDegreeFiveExponent8 7 9 38 90 139,
  tropicalOverlapDegreeFiveExponent8 7 9 48 90 127,
  tropicalOverlapDegreeFiveExponent8 7 20 48 69 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row238 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 104 139,
  tropicalOverlapDegreeFiveExponent8 0 7 59 114 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 41 90 139,
  tropicalOverlapDegreeFiveExponent8 0 15 51 90 127,
  tropicalOverlapDegreeFiveExponent8 0 26 51 69 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 238. -/
theorem tropicalOverlapSourceIExponent8_replay_row238 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row238.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row238.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row238 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 238. -/
theorem tropicalOverlapSourceJExponent8_replay_row238 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row238.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row238.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row238 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row238 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row238.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row238 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row238 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row238 :
    tropicalOverlapRelation8Row238 =
      tropicalOverlapSourceCombination8Row238 := by
  simp [tropicalOverlapRelation8Row238,
    tropicalOverlapSourceCombination8Row238,
    tropicalOverlapProvenance8Row238,
    tropicalOverlapSourceIExponent8Row238,
    tropicalOverlapSourceJExponent8Row238, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 238. -/
theorem tropicalOverlapRelation8_provenance_row238 :
    tropicalOverlapRelation8Row238 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row238 := by
  rw [tropicalOverlapRelation8_sourceCombination_row238]
  unfold tropicalOverlapSourceCombination8Row238
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row238,
    tropicalOverlapSourceJExponent8_replay_row238]

end

end MonochromaticQuantumGraphs.N8D3
