import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 221. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 221. -/
def tropicalOverlapProvenance8Row221 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 103, coordinateB := 90, sourceJ := 119, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 221. -/
def tropicalOverlapRelation8Row221 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row221 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 90 98 139,
  tropicalOverlapDegreeFiveExponent8 7 65 90 108 127,
  tropicalOverlapDegreeFiveExponent8 7 75 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 41 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 51 75 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row221 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 88 104 139,
  tropicalOverlapDegreeFiveExponent8 7 65 88 114 127,
  tropicalOverlapDegreeFiveExponent8 7 75 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 41 88 90 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 51 75 88 123
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 221. -/
theorem tropicalOverlapSourceIExponent8_replay_row221 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row221.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row221.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row221 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 221. -/
theorem tropicalOverlapSourceJExponent8_replay_row221 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row221.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row221.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row221 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row221 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row221.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row221 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row221 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row221 :
    tropicalOverlapRelation8Row221 =
      tropicalOverlapSourceCombination8Row221 := by
  simp [tropicalOverlapRelation8Row221,
    tropicalOverlapSourceCombination8Row221,
    tropicalOverlapProvenance8Row221,
    tropicalOverlapSourceIExponent8Row221,
    tropicalOverlapSourceJExponent8Row221, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 221. -/
theorem tropicalOverlapRelation8_provenance_row221 :
    tropicalOverlapRelation8Row221 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row221 := by
  rw [tropicalOverlapRelation8_sourceCombination_row221]
  unfold tropicalOverlapSourceCombination8Row221
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row221,
    tropicalOverlapSourceJExponent8_replay_row221]

end

end MonochromaticQuantumGraphs.N8D3
