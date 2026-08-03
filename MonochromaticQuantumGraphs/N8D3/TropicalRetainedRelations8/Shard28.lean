import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 140--144. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 28. -/
def tropicalOverlapProvenance8Shard28 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 44, coordinateB := 7, sourceJ := 45, coordinateA := 1 },
  { epsilon := 1, sourceI := 44, coordinateB := 89, sourceJ := 48, coordinateA := 86 },
  { epsilon := -1, sourceI := 44, coordinateB := 87, sourceJ := 52, coordinateA := 86 },
  { epsilon := 1, sourceI := 44, coordinateB := 90, sourceJ := 56, coordinateA := 86 },
  { epsilon := -1, sourceI := 46, coordinateB := 7, sourceJ := 47, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 28. -/
def tropicalOverlapRelation8Shard28 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 86 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 71 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 86 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 71 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 71 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 86 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 106 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 114 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 103 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 111 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 71 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 71 87 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 106 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 114 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 71 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 86 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 86 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 77 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 86 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 77 119) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard28 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 103 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 111 132,
    tropicalOverlapDegreeFiveExponent8 1 7 71 86 138,
    tropicalOverlapDegreeFiveExponent8 7 9 43 86 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 86 132,
    tropicalOverlapDegreeFiveExponent8 7 19 51 71 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 89 103 138,
    tropicalOverlapDegreeFiveExponent8 1 58 89 111 132,
    tropicalOverlapDegreeFiveExponent8 1 71 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 43 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 89 132,
    tropicalOverlapDegreeFiveExponent8 19 51 71 89 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 87 103 138,
    tropicalOverlapDegreeFiveExponent8 1 58 87 111 132,
    tropicalOverlapDegreeFiveExponent8 1 71 86 87 138,
    tropicalOverlapDegreeFiveExponent8 9 43 86 87 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 87 132,
    tropicalOverlapDegreeFiveExponent8 19 51 71 87 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 90 103 138,
    tropicalOverlapDegreeFiveExponent8 1 58 90 111 132,
    tropicalOverlapDegreeFiveExponent8 1 71 86 90 138,
    tropicalOverlapDegreeFiveExponent8 9 43 86 90 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 90 132,
    tropicalOverlapDegreeFiveExponent8 19 51 71 90 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 103 138,
    tropicalOverlapDegreeFiveExponent8 1 7 64 111 132,
    tropicalOverlapDegreeFiveExponent8 1 7 77 86 138,
    tropicalOverlapDegreeFiveExponent8 7 11 43 86 138,
    tropicalOverlapDegreeFiveExponent8 7 11 51 86 132,
    tropicalOverlapDegreeFiveExponent8 7 19 51 77 119
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard28 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 103 138,
    tropicalOverlapDegreeFiveExponent8 1 7 58 111 132,
    tropicalOverlapDegreeFiveExponent8 1 7 71 86 138,
    tropicalOverlapDegreeFiveExponent8 1 15 43 86 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 86 132,
    tropicalOverlapDegreeFiveExponent8 1 25 51 71 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 86 103 138,
    tropicalOverlapDegreeFiveExponent8 1 59 86 111 132,
    tropicalOverlapDegreeFiveExponent8 1 71 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 43 86 89 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 89 132,
    tropicalOverlapDegreeFiveExponent8 20 51 71 86 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 86 106 138,
    tropicalOverlapDegreeFiveExponent8 1 58 86 114 132,
    tropicalOverlapDegreeFiveExponent8 1 71 86 87 138,
    tropicalOverlapDegreeFiveExponent8 9 43 86 87 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 87 132,
    tropicalOverlapDegreeFiveExponent8 19 51 71 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 86 106 138,
    tropicalOverlapDegreeFiveExponent8 1 59 86 114 132,
    tropicalOverlapDegreeFiveExponent8 1 71 86 90 138,
    tropicalOverlapDegreeFiveExponent8 9 43 86 90 138,
    tropicalOverlapDegreeFiveExponent8 9 51 86 90 132,
    tropicalOverlapDegreeFiveExponent8 20 51 71 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 103 138,
    tropicalOverlapDegreeFiveExponent8 1 7 64 111 132,
    tropicalOverlapDegreeFiveExponent8 1 7 77 86 138,
    tropicalOverlapDegreeFiveExponent8 1 17 43 86 138,
    tropicalOverlapDegreeFiveExponent8 1 17 51 86 132,
    tropicalOverlapDegreeFiveExponent8 1 25 51 77 119
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 28. -/
theorem tropicalOverlapSourceIExponent8_replay_shard28
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard28 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard28 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard28 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 28. -/
theorem tropicalOverlapSourceJExponent8_replay_shard28
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard28 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard28 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard28 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard28
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard28 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard28 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard28 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard28
    (i : Fin 5) :
    tropicalOverlapRelation8Shard28 i =
      tropicalOverlapSourceCombination8Shard28 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard28,
      tropicalOverlapSourceCombination8Shard28,
      tropicalOverlapProvenance8Shard28,
      tropicalOverlapSourceIExponent8Shard28,
      tropicalOverlapSourceJExponent8Shard28, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 28. -/
theorem tropicalOverlapRelation8_provenance_shard28 (i : Fin 5) :
    tropicalOverlapRelation8Shard28 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard28 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard28]
  unfold tropicalOverlapSourceCombination8Shard28
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard28,
    tropicalOverlapSourceJExponent8_replay_shard28]

end

end MonochromaticQuantumGraphs.N8D3
