import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 192. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 192. -/
def tropicalOverlapProvenance8Row192 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 81, coordinateB := 86, sourceJ := 87, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 192. -/
def tropicalOverlapRelation8Row192 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 86 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 86 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row192 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 86 99 141,
  tropicalOverlapDegreeFiveExponent8 7 64 86 109 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 86 129,
  tropicalOverlapDegreeFiveExponent8 25 52 76 86 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row192 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 102 141,
  tropicalOverlapDegreeFiveExponent8 7 64 85 112 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 86 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 86 129,
  tropicalOverlapDegreeFiveExponent8 25 52 76 85 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 192. -/
theorem tropicalOverlapSourceIExponent8_replay_row192 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row192.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row192.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row192 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 192. -/
theorem tropicalOverlapSourceJExponent8_replay_row192 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row192.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row192.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row192 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row192 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row192.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row192 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row192 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row192 :
    tropicalOverlapRelation8Row192 =
      tropicalOverlapSourceCombination8Row192 := by
  simp [tropicalOverlapRelation8Row192,
    tropicalOverlapSourceCombination8Row192,
    tropicalOverlapProvenance8Row192,
    tropicalOverlapSourceIExponent8Row192,
    tropicalOverlapSourceJExponent8Row192, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 192. -/
theorem tropicalOverlapRelation8_provenance_row192 :
    tropicalOverlapRelation8Row192 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row192 := by
  rw [tropicalOverlapRelation8_sourceCombination_row192]
  unfold tropicalOverlapSourceCombination8Row192
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row192,
    tropicalOverlapSourceJExponent8_replay_row192]

end

end MonochromaticQuantumGraphs.N8D3
