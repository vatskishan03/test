import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 234. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 234. -/
def tropicalOverlapProvenance8Row234 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 109, coordinateB := 142, sourceJ := 169, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 234. -/
def tropicalOverlapRelation8Row234 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 111 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 112 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 89 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 89 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 120 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row234 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 101 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 111 127 142,
  tropicalOverlapDegreeFiveExponent8 6 75 89 139 142,
  tropicalOverlapDegreeFiveExponent8 17 38 89 139 142,
  tropicalOverlapDegreeFiveExponent8 17 48 89 127 142,
  tropicalOverlapDegreeFiveExponent8 26 48 75 120 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row234 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 101 139 142,
  tropicalOverlapDegreeFiveExponent8 6 65 112 127 139,
  tropicalOverlapDegreeFiveExponent8 6 75 89 139 142,
  tropicalOverlapDegreeFiveExponent8 17 38 89 139 142,
  tropicalOverlapDegreeFiveExponent8 17 49 89 127 139,
  tropicalOverlapDegreeFiveExponent8 26 49 75 120 139
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 234. -/
theorem tropicalOverlapSourceIExponent8_replay_row234 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row234.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row234.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row234 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 234. -/
theorem tropicalOverlapSourceJExponent8_replay_row234 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row234.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row234.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row234 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row234 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row234.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row234 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row234 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row234 :
    tropicalOverlapRelation8Row234 =
      tropicalOverlapSourceCombination8Row234 := by
  simp [tropicalOverlapRelation8Row234,
    tropicalOverlapSourceCombination8Row234,
    tropicalOverlapProvenance8Row234,
    tropicalOverlapSourceIExponent8Row234,
    tropicalOverlapSourceJExponent8Row234, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 234. -/
theorem tropicalOverlapRelation8_provenance_row234 :
    tropicalOverlapRelation8Row234 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row234 := by
  rw [tropicalOverlapRelation8_sourceCombination_row234]
  unfold tropicalOverlapSourceCombination8Row234
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row234,
    tropicalOverlapSourceJExponent8_replay_row234]

end

end MonochromaticQuantumGraphs.N8D3
