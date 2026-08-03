import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 230. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 230. -/
def tropicalOverlapProvenance8Row230 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 108, coordinateB := 1, sourceJ := 110, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 230. -/
def tropicalOverlapRelation8Row230 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 75 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 75 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row230 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 101 139,
  tropicalOverlapDegreeFiveExponent8 0 1 65 111 127,
  tropicalOverlapDegreeFiveExponent8 0 1 75 89 139,
  tropicalOverlapDegreeFiveExponent8 1 11 38 89 139,
  tropicalOverlapDegreeFiveExponent8 1 11 48 89 127,
  tropicalOverlapDegreeFiveExponent8 1 20 48 75 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row230 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 101 139,
  tropicalOverlapDegreeFiveExponent8 0 1 65 111 127,
  tropicalOverlapDegreeFiveExponent8 0 1 75 89 139,
  tropicalOverlapDegreeFiveExponent8 0 11 41 89 139,
  tropicalOverlapDegreeFiveExponent8 0 11 51 89 127,
  tropicalOverlapDegreeFiveExponent8 0 20 51 75 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 230. -/
theorem tropicalOverlapSourceIExponent8_replay_row230 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row230.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row230.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row230 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 230. -/
theorem tropicalOverlapSourceJExponent8_replay_row230 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row230.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row230.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row230 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row230 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row230.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row230 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row230 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row230 :
    tropicalOverlapRelation8Row230 =
      tropicalOverlapSourceCombination8Row230 := by
  simp [tropicalOverlapRelation8Row230,
    tropicalOverlapSourceCombination8Row230,
    tropicalOverlapProvenance8Row230,
    tropicalOverlapSourceIExponent8Row230,
    tropicalOverlapSourceJExponent8Row230, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 230. -/
theorem tropicalOverlapRelation8_provenance_row230 :
    tropicalOverlapRelation8Row230 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row230 := by
  rw [tropicalOverlapRelation8_sourceCombination_row230]
  unfold tropicalOverlapSourceCombination8Row230
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row230,
    tropicalOverlapSourceJExponent8_replay_row230]

end

end MonochromaticQuantumGraphs.N8D3
