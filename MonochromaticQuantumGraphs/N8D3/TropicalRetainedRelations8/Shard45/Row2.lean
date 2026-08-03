import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 227. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 227. -/
def tropicalOverlapProvenance8Row227 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 105, coordinateB := 142, sourceJ := 165, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 227. -/
def tropicalOverlapRelation8Row227 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 111 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 112 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 89 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 89 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 120 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row227 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 101 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 111 127 142,
  tropicalOverlapDegreeFiveExponent8 6 69 89 139 142,
  tropicalOverlapDegreeFiveExponent8 15 38 89 139 142,
  tropicalOverlapDegreeFiveExponent8 15 48 89 127 142,
  tropicalOverlapDegreeFiveExponent8 26 48 69 120 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row227 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 101 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 112 127 139,
  tropicalOverlapDegreeFiveExponent8 6 69 89 139 142,
  tropicalOverlapDegreeFiveExponent8 15 38 89 139 142,
  tropicalOverlapDegreeFiveExponent8 15 49 89 127 139,
  tropicalOverlapDegreeFiveExponent8 26 49 69 120 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 227. -/
theorem tropicalOverlapSourceIExponent8_replay_row227 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row227.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row227.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row227 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 227. -/
theorem tropicalOverlapSourceJExponent8_replay_row227 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row227.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row227.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row227 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row227 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row227.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row227 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row227 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row227 :
    tropicalOverlapRelation8Row227 =
      tropicalOverlapSourceCombination8Row227 := by
  simp [tropicalOverlapRelation8Row227,
    tropicalOverlapSourceCombination8Row227,
    tropicalOverlapProvenance8Row227,
    tropicalOverlapSourceIExponent8Row227,
    tropicalOverlapSourceJExponent8Row227, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 227. -/
theorem tropicalOverlapRelation8_provenance_row227 :
    tropicalOverlapRelation8Row227 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row227 := by
  rw [tropicalOverlapRelation8_sourceCombination_row227]
  unfold tropicalOverlapSourceCombination8Row227
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row227,
    tropicalOverlapSourceJExponent8_replay_row227]

end

end MonochromaticQuantumGraphs.N8D3
