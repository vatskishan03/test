import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 223. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 223. -/
def tropicalOverlapProvenance8Row223 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 104, coordinateB := 1, sourceJ := 106, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 223. -/
def tropicalOverlapRelation8Row223 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 69 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row223 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 101 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 111 127,
  tropicalOverlapDegreeFiveExponent8 0 1 69 89 139,
  tropicalOverlapDegreeFiveExponent8 1 9 38 89 139,
  tropicalOverlapDegreeFiveExponent8 1 9 48 89 127,
  tropicalOverlapDegreeFiveExponent8 1 20 48 69 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row223 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 101 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 111 127,
  tropicalOverlapDegreeFiveExponent8 0 1 69 89 139,
  tropicalOverlapDegreeFiveExponent8 0 9 41 89 139,
  tropicalOverlapDegreeFiveExponent8 0 9 51 89 127,
  tropicalOverlapDegreeFiveExponent8 0 20 51 69 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 223. -/
theorem tropicalOverlapSourceIExponent8_replay_row223 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row223.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row223.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row223 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 223. -/
theorem tropicalOverlapSourceJExponent8_replay_row223 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row223.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row223.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row223 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row223 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row223.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row223 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row223 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row223 :
    tropicalOverlapRelation8Row223 =
      tropicalOverlapSourceCombination8Row223 := by
  simp [tropicalOverlapRelation8Row223,
    tropicalOverlapSourceCombination8Row223,
    tropicalOverlapProvenance8Row223,
    tropicalOverlapSourceIExponent8Row223,
    tropicalOverlapSourceJExponent8Row223, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 223. -/
theorem tropicalOverlapRelation8_provenance_row223 :
    tropicalOverlapRelation8Row223 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row223 := by
  rw [tropicalOverlapRelation8_sourceCombination_row223]
  unfold tropicalOverlapSourceCombination8Row223
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row223,
    tropicalOverlapSourceJExponent8_replay_row223]

end

end MonochromaticQuantumGraphs.N8D3
