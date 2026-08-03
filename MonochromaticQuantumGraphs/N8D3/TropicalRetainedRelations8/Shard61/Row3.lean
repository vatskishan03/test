import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 308. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 308. -/
def tropicalOverlapProvenance8Row308 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 160, coordinateB := 7, sourceJ := 161, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 308. -/
def tropicalOverlapRelation8Row308 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 41 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 52 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 69 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 38 88 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 49 88 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 69 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row308 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 98 142,
  tropicalOverlapDegreeFiveExponent8 6 7 59 109 127,
  tropicalOverlapDegreeFiveExponent8 6 7 69 88 142,
  tropicalOverlapDegreeFiveExponent8 7 15 38 88 142,
  tropicalOverlapDegreeFiveExponent8 7 15 49 88 127,
  tropicalOverlapDegreeFiveExponent8 7 26 49 69 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row308 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 98 142,
  tropicalOverlapDegreeFiveExponent8 6 7 59 109 127,
  tropicalOverlapDegreeFiveExponent8 6 7 69 88 142,
  tropicalOverlapDegreeFiveExponent8 6 15 41 88 142,
  tropicalOverlapDegreeFiveExponent8 6 15 52 88 127,
  tropicalOverlapDegreeFiveExponent8 6 26 52 69 117
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 308. -/
theorem tropicalOverlapSourceIExponent8_replay_row308 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row308.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row308.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row308 j := by
  fin_cases j <;> decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 308. -/
theorem tropicalOverlapSourceJExponent8_replay_row308 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row308.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row308.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row308 j := by
  fin_cases j <;> decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row308 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row308.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row308 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row308 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row308 :
    tropicalOverlapRelation8Row308 =
      tropicalOverlapSourceCombination8Row308 := by
  simp [tropicalOverlapRelation8Row308,
    tropicalOverlapSourceCombination8Row308,
    tropicalOverlapProvenance8Row308,
    tropicalOverlapSourceIExponent8Row308,
    tropicalOverlapSourceJExponent8Row308, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 308. -/
theorem tropicalOverlapRelation8_provenance_row308 :
    tropicalOverlapRelation8Row308 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row308 := by
  rw [tropicalOverlapRelation8_sourceCombination_row308]
  unfold tropicalOverlapSourceCombination8Row308
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row308,
    tropicalOverlapSourceJExponent8_replay_row308]

end

end MonochromaticQuantumGraphs.N8D3
