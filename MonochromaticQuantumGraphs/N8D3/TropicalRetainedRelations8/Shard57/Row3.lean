import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 288. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 288. -/
def tropicalOverlapProvenance8Row288 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 142, coordinateB := 89, sourceJ := 149, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 288. -/
def tropicalOverlapRelation8Row288 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 111 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row288 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 89 100 139,
  tropicalOverlapDegreeFiveExponent8 6 65 89 108 133,
  tropicalOverlapDegreeFiveExponent8 6 77 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 40 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 89 133,
  tropicalOverlapDegreeFiveExponent8 26 48 77 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row288 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 103 139,
  tropicalOverlapDegreeFiveExponent8 6 65 88 111 133,
  tropicalOverlapDegreeFiveExponent8 6 77 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 40 88 89 139,
  tropicalOverlapDegreeFiveExponent8 17 48 88 89 133,
  tropicalOverlapDegreeFiveExponent8 26 48 77 88 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 288. -/
theorem tropicalOverlapSourceIExponent8_replay_row288 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row288.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row288.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row288 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 288. -/
theorem tropicalOverlapSourceJExponent8_replay_row288 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row288.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row288.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row288 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row288 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row288.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row288 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row288 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row288 :
    tropicalOverlapRelation8Row288 =
      tropicalOverlapSourceCombination8Row288 := by
  simp [tropicalOverlapRelation8Row288,
    tropicalOverlapSourceCombination8Row288,
    tropicalOverlapProvenance8Row288,
    tropicalOverlapSourceIExponent8Row288,
    tropicalOverlapSourceJExponent8Row288, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 288. -/
theorem tropicalOverlapRelation8_provenance_row288 :
    tropicalOverlapRelation8Row288 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row288 := by
  rw [tropicalOverlapRelation8_sourceCombination_row288]
  unfold tropicalOverlapSourceCombination8Row288
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row288,
    tropicalOverlapSourceJExponent8_replay_row288]

end

end MonochromaticQuantumGraphs.N8D3
