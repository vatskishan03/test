import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 222. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 222. -/
def tropicalOverlapProvenance8Row222 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 104, coordinateB := 6, sourceJ := 105, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 222. -/
def tropicalOverlapRelation8Row222 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 69 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row222 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 101 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 127,
  tropicalOverlapDegreeFiveExponent8 0 6 69 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 38 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 48 89 127,
  tropicalOverlapDegreeFiveExponent8 6 20 48 69 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row222 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 101 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 127,
  tropicalOverlapDegreeFiveExponent8 0 6 69 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 38 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 48 89 127,
  tropicalOverlapDegreeFiveExponent8 0 26 48 69 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 222. -/
theorem tropicalOverlapSourceIExponent8_replay_row222 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row222.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row222.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row222 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 222. -/
theorem tropicalOverlapSourceJExponent8_replay_row222 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row222.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row222.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row222 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row222 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row222.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row222 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row222 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row222 :
    tropicalOverlapRelation8Row222 =
      tropicalOverlapSourceCombination8Row222 := by
  simp [tropicalOverlapRelation8Row222,
    tropicalOverlapSourceCombination8Row222,
    tropicalOverlapProvenance8Row222,
    tropicalOverlapSourceIExponent8Row222,
    tropicalOverlapSourceJExponent8Row222, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 222. -/
theorem tropicalOverlapRelation8_provenance_row222 :
    tropicalOverlapRelation8Row222 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row222 := by
  rw [tropicalOverlapRelation8_sourceCombination_row222]
  unfold tropicalOverlapSourceCombination8Row222
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row222,
    tropicalOverlapSourceJExponent8_replay_row222]

end

end MonochromaticQuantumGraphs.N8D3
