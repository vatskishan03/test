import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 218. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 218. -/
def tropicalOverlapProvenance8Row218 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 102, coordinateB := 89, sourceJ := 109, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 218. -/
def tropicalOverlapRelation8Row218 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 101 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 111 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row218 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 89 98 139,
  tropicalOverlapDegreeFiveExponent8 6 65 89 108 127,
  tropicalOverlapDegreeFiveExponent8 6 75 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 38 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 48 75 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row218 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 101 139,
  tropicalOverlapDegreeFiveExponent8 6 65 88 111 127,
  tropicalOverlapDegreeFiveExponent8 6 75 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 38 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 48 75 88 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 218. -/
theorem tropicalOverlapSourceIExponent8_replay_row218 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row218.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row218.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row218 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 218. -/
theorem tropicalOverlapSourceJExponent8_replay_row218 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row218.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row218.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row218 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row218 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row218.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row218 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row218 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row218 :
    tropicalOverlapRelation8Row218 =
      tropicalOverlapSourceCombination8Row218 := by
  simp [tropicalOverlapRelation8Row218,
    tropicalOverlapSourceCombination8Row218,
    tropicalOverlapProvenance8Row218,
    tropicalOverlapSourceIExponent8Row218,
    tropicalOverlapSourceJExponent8Row218, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 218. -/
theorem tropicalOverlapRelation8_provenance_row218 :
    tropicalOverlapRelation8Row218 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row218 := by
  rw [tropicalOverlapRelation8_sourceCombination_row218]
  unfold tropicalOverlapSourceCombination8Row218
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row218,
    tropicalOverlapSourceJExponent8_replay_row218]

end

end MonochromaticQuantumGraphs.N8D3
