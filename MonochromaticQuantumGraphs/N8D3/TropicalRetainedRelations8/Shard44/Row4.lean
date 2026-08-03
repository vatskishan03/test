import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap row 224. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 224. -/
def tropicalOverlapProvenance8Row224 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 104, coordinateB := 7, sourceJ := 107, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 224. -/
def tropicalOverlapRelation8Row224 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 69 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row224 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 101 139,
  tropicalOverlapDegreeFiveExponent8 0 7 59 111 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 89 139,
  tropicalOverlapDegreeFiveExponent8 7 9 38 89 139,
  tropicalOverlapDegreeFiveExponent8 7 9 48 89 127,
  tropicalOverlapDegreeFiveExponent8 7 20 48 69 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row224 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 101 139,
  tropicalOverlapDegreeFiveExponent8 0 7 59 111 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 41 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 51 89 127,
  tropicalOverlapDegreeFiveExponent8 0 26 51 69 120
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_i` exponents in row 224. -/
theorem tropicalOverlapSourceIExponent8_replay_row224 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row224.coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row224.sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Row224 j := by
  revert j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of the six shifted `B_j` exponents in row 224. -/
theorem tropicalOverlapSourceJExponent8_replay_row224 (j : Fin 6) :
    Pi.single tropicalOverlapProvenance8Row224.coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8 tropicalOverlapProvenance8Row224.sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Row224 j := by
  revert j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row224 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row224.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row224 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row224 j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_row224 :
    tropicalOverlapRelation8Row224 =
      tropicalOverlapSourceCombination8Row224 := by
  simp [tropicalOverlapRelation8Row224,
    tropicalOverlapSourceCombination8Row224,
    tropicalOverlapProvenance8Row224,
    tropicalOverlapSourceIExponent8Row224,
    tropicalOverlapSourceJExponent8Row224, Fin.sum_univ_succ]
  abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
row 224. -/
theorem tropicalOverlapRelation8_provenance_row224 :
    tropicalOverlapRelation8Row224 =
      tropicalOverlapProvenancePolynomial8
        tropicalOverlapProvenance8Row224 := by
  rw [tropicalOverlapRelation8_sourceCombination_row224]
  unfold tropicalOverlapSourceCombination8Row224
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_row224,
    tropicalOverlapSourceJExponent8_replay_row224]

end

end MonochromaticQuantumGraphs.N8D3
