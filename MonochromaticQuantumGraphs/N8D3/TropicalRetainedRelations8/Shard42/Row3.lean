import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 213. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 213. -/
def tropicalOverlapProvenance8Row213 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 100, coordinateB := 90, sourceJ := 113, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 213. -/
def tropicalOverlapRelation8Row213 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row213 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 90 98 139,
  tropicalOverlapDegreeFiveExponent8 6 59 90 108 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 38 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 48 69 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row213 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 104 139,
  tropicalOverlapDegreeFiveExponent8 6 59 88 114 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 38 88 90 139,
  tropicalOverlapDegreeFiveExponent8 15 48 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 48 69 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 213. -/
theorem tropicalOverlapSourceIExponent8_replay_row213 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row213.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row213.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row213 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 213. -/
theorem tropicalOverlapSourceJExponent8_replay_row213 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row213.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row213.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row213 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row213 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row213.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row213 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row213 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row213 :
    tropicalOverlapRelation8Row213 =
      tropicalOverlapSourceCombination8Row213 := by
  simp [tropicalOverlapRelation8Row213,
    tropicalOverlapSourceCombination8Row213,
    tropicalOverlapProvenance8Row213,
    tropicalOverlapSourceIExponent8Row213,
    tropicalOverlapSourceJExponent8Row213, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 213. -/
theorem tropicalOverlapRelation8_provenance_row213 :
    tropicalOverlapRelation8Row213 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row213 := by
  rw [tropicalOverlapRelation8_sourceCombination_row213]
  unfold tropicalOverlapSourceCombination8Row213
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row213,
    tropicalOverlapSourceJExponent8_replay_row213]

end

end MonochromaticQuantumGraphs.N8D3
