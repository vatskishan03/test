import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 256. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 256. -/
def tropicalOverlapProvenance8Row256 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 123, coordinateB := 89, sourceJ := 131, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 256. -/
def tropicalOverlapRelation8Row256 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 111 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row256 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 89 99 139,
  tropicalOverlapDegreeFiveExponent8 7 65 89 108 130,
  tropicalOverlapDegreeFiveExponent8 7 76 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 42 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 51 76 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row256 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 88 102 139,
  tropicalOverlapDegreeFiveExponent8 7 65 88 111 130,
  tropicalOverlapDegreeFiveExponent8 7 76 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 42 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 51 76 88 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 256. -/
theorem tropicalOverlapSourceIExponent8_replay_row256 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row256.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row256.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row256 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 256. -/
theorem tropicalOverlapSourceJExponent8_replay_row256 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row256.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row256.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row256 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row256 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row256.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row256 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row256 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row256 :
    tropicalOverlapRelation8Row256 =
      tropicalOverlapSourceCombination8Row256 := by
  simp [tropicalOverlapRelation8Row256,
    tropicalOverlapSourceCombination8Row256,
    tropicalOverlapProvenance8Row256,
    tropicalOverlapSourceIExponent8Row256,
    tropicalOverlapSourceJExponent8Row256, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 256. -/
theorem tropicalOverlapRelation8_provenance_row256 :
    tropicalOverlapRelation8Row256 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row256 := by
  rw [tropicalOverlapRelation8_sourceCombination_row256]
  unfold tropicalOverlapSourceCombination8Row256
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row256,
    tropicalOverlapSourceJExponent8_replay_row256]

end

end MonochromaticQuantumGraphs.N8D3
