import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 173. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 173. -/
def tropicalOverlapProvenance8Row173 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 64, coordinateB := 89, sourceJ := 68, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 173. -/
def tropicalOverlapRelation8Row173 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row173 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 89 101 141,
  tropicalOverlapDegreeFiveExponent8 1 58 89 112 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 89 126,
  tropicalOverlapDegreeFiveExponent8 19 52 69 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row173 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 101 141,
  tropicalOverlapDegreeFiveExponent8 1 59 86 112 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 89 126,
  tropicalOverlapDegreeFiveExponent8 20 52 69 86 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 173. -/
theorem tropicalOverlapSourceIExponent8_replay_row173 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row173.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row173.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row173 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 173. -/
theorem tropicalOverlapSourceJExponent8_replay_row173 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row173.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row173.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row173 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row173 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row173.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row173 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row173 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row173 :
    tropicalOverlapRelation8Row173 =
      tropicalOverlapSourceCombination8Row173 := by
  simp [tropicalOverlapRelation8Row173,
    tropicalOverlapSourceCombination8Row173,
    tropicalOverlapProvenance8Row173,
    tropicalOverlapSourceIExponent8Row173,
    tropicalOverlapSourceJExponent8Row173, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 173. -/
theorem tropicalOverlapRelation8_provenance_row173 :
    tropicalOverlapRelation8Row173 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row173 := by
  rw [tropicalOverlapRelation8_sourceCombination_row173]
  unfold tropicalOverlapSourceCombination8Row173
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row173,
    tropicalOverlapSourceJExponent8_replay_row173]

end

end MonochromaticQuantumGraphs.N8D3
