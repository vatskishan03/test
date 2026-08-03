import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 201. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 201. -/
def tropicalOverlapProvenance8Row201 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 86, coordinateB := 89, sourceJ := 90, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 201. -/
def tropicalOverlapRelation8Row201 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 76 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row201 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 89 102 141,
  tropicalOverlapDegreeFiveExponent8 1 64 89 112 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 42 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 89 129,
  tropicalOverlapDegreeFiveExponent8 19 52 76 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row201 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 102 141,
  tropicalOverlapDegreeFiveExponent8 1 65 86 112 129,
  tropicalOverlapDegreeFiveExponent8 1 76 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 42 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 89 129,
  tropicalOverlapDegreeFiveExponent8 20 52 76 86 119
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 201. -/
theorem tropicalOverlapSourceIExponent8_replay_row201 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row201.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row201.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row201 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 201. -/
theorem tropicalOverlapSourceJExponent8_replay_row201 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row201.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row201.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row201 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row201 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row201.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row201 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row201 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row201 :
    tropicalOverlapRelation8Row201 =
      tropicalOverlapSourceCombination8Row201 := by
  simp [tropicalOverlapRelation8Row201,
    tropicalOverlapSourceCombination8Row201,
    tropicalOverlapProvenance8Row201,
    tropicalOverlapSourceIExponent8Row201,
    tropicalOverlapSourceJExponent8Row201, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 201. -/
theorem tropicalOverlapRelation8_provenance_row201 :
    tropicalOverlapRelation8Row201 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row201 := by
  rw [tropicalOverlapRelation8_sourceCombination_row201]
  unfold tropicalOverlapSourceCombination8Row201
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row201,
    tropicalOverlapSourceJExponent8_replay_row201]

end

end MonochromaticQuantumGraphs.N8D3
