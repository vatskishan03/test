import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 191. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 191. -/
def tropicalOverlapProvenance8Row191 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 81, coordinateB := 88, sourceJ := 83, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 191. -/
def tropicalOverlapRelation8Row191 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 88 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 99 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 109 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 85 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row191 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 88 99 141,
  tropicalOverlapDegreeFiveExponent8 7 64 88 109 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 88 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 88 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 88 129,
  tropicalOverlapDegreeFiveExponent8 25 52 76 88 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row191 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 85 99 141,
  tropicalOverlapDegreeFiveExponent8 7 65 85 109 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 88 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 88 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 88 129,
  tropicalOverlapDegreeFiveExponent8 26 52 76 85 116
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 191. -/
theorem tropicalOverlapSourceIExponent8_replay_row191 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row191.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row191.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row191 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 191. -/
theorem tropicalOverlapSourceJExponent8_replay_row191 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row191.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row191.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row191 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row191 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row191.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row191 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row191 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row191 :
    tropicalOverlapRelation8Row191 =
      tropicalOverlapSourceCombination8Row191 := by
  simp [tropicalOverlapRelation8Row191,
    tropicalOverlapSourceCombination8Row191,
    tropicalOverlapProvenance8Row191,
    tropicalOverlapSourceIExponent8Row191,
    tropicalOverlapSourceJExponent8Row191, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 191. -/
theorem tropicalOverlapRelation8_provenance_row191 :
    tropicalOverlapRelation8Row191 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row191 := by
  rw [tropicalOverlapRelation8_sourceCombination_row191]
  unfold tropicalOverlapSourceCombination8Row191
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row191,
    tropicalOverlapSourceJExponent8_replay_row191]

end

end MonochromaticQuantumGraphs.N8D3
