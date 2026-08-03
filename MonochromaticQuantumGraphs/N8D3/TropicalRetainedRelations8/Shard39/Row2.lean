import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 197. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 197. -/
def tropicalOverlapProvenance8Row197 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 84, coordinateB := 89, sourceJ := 88, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 197. -/
def tropicalOverlapRelation8Row197 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row197 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 89 102 141,
  tropicalOverlapDegreeFiveExponent8 1 58 89 112 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 89 129,
  tropicalOverlapDegreeFiveExponent8 19 52 70 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row197 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 102 141,
  tropicalOverlapDegreeFiveExponent8 1 59 86 112 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 89 129,
  tropicalOverlapDegreeFiveExponent8 20 52 70 86 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 197. -/
theorem tropicalOverlapSourceIExponent8_replay_row197 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row197.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row197.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row197 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 197. -/
theorem tropicalOverlapSourceJExponent8_replay_row197 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row197.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row197.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row197 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row197 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row197.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row197 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row197 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row197 :
    tropicalOverlapRelation8Row197 =
      tropicalOverlapSourceCombination8Row197 := by
  simp [tropicalOverlapRelation8Row197,
    tropicalOverlapSourceCombination8Row197,
    tropicalOverlapProvenance8Row197,
    tropicalOverlapSourceIExponent8Row197,
    tropicalOverlapSourceJExponent8Row197, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 197. -/
theorem tropicalOverlapRelation8_provenance_row197 :
    tropicalOverlapRelation8Row197 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row197 := by
  rw [tropicalOverlapRelation8_sourceCombination_row197]
  unfold tropicalOverlapSourceCombination8Row197
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row197,
    tropicalOverlapSourceJExponent8_replay_row197]

end

end MonochromaticQuantumGraphs.N8D3
