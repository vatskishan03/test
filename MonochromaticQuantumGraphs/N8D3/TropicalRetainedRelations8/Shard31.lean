import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 155--159. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 31. -/
def tropicalOverlapProvenance8Shard31 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 54, coordinateB := 7, sourceJ := 55, coordinateA := 1 },
  { epsilon := -1, sourceI := 56, coordinateB := 7, sourceJ := 57, coordinateA := 1 },
  { epsilon := 1, sourceI := 56, coordinateB := 139, sourceJ := 154, coordinateA := 138 },
  { epsilon := 1, sourceI := 57, coordinateB := 139, sourceJ := 155, coordinateA := 138 },
  { epsilon := -1, sourceI := 58, coordinateB := 7, sourceJ := 59, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 31. -/
def tropicalOverlapRelation8Shard31 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 87 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 77 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 87 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 77 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 90 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 71 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 90 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 71 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 114 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 90 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 114 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 90 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 90 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 77 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 90 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 77 122) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard31 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 106 138,
    tropicalOverlapDegreeFiveExponent8 1 7 64 114 132,
    tropicalOverlapDegreeFiveExponent8 1 7 77 87 138,
    tropicalOverlapDegreeFiveExponent8 7 11 43 87 138,
    tropicalOverlapDegreeFiveExponent8 7 11 51 87 132,
    tropicalOverlapDegreeFiveExponent8 7 19 51 77 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 106 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 114 132,
    tropicalOverlapDegreeFiveExponent8 1 7 71 90 138,
    tropicalOverlapDegreeFiveExponent8 7 9 43 90 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 90 132,
    tropicalOverlapDegreeFiveExponent8 7 20 51 71 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 106 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 114 132 139,
    tropicalOverlapDegreeFiveExponent8 1 71 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 43 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 90 132 139,
    tropicalOverlapDegreeFiveExponent8 20 51 71 122 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 106 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 114 132 139,
    tropicalOverlapDegreeFiveExponent8 7 71 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 43 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 90 132 139,
    tropicalOverlapDegreeFiveExponent8 26 51 71 122 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 106 138,
    tropicalOverlapDegreeFiveExponent8 1 7 65 114 132,
    tropicalOverlapDegreeFiveExponent8 1 7 77 90 138,
    tropicalOverlapDegreeFiveExponent8 7 11 43 90 138,
    tropicalOverlapDegreeFiveExponent8 7 11 51 90 132,
    tropicalOverlapDegreeFiveExponent8 7 20 51 77 122
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard31 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 106 138,
    tropicalOverlapDegreeFiveExponent8 1 7 64 114 132,
    tropicalOverlapDegreeFiveExponent8 1 7 77 87 138,
    tropicalOverlapDegreeFiveExponent8 1 17 43 87 138,
    tropicalOverlapDegreeFiveExponent8 1 17 51 87 132,
    tropicalOverlapDegreeFiveExponent8 1 25 51 77 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 106 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 114 132,
    tropicalOverlapDegreeFiveExponent8 1 7 71 90 138,
    tropicalOverlapDegreeFiveExponent8 1 15 43 90 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 90 132,
    tropicalOverlapDegreeFiveExponent8 1 26 51 71 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 106 138 139,
    tropicalOverlapDegreeFiveExponent8 1 59 114 133 138,
    tropicalOverlapDegreeFiveExponent8 1 71 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 43 90 138 139,
    tropicalOverlapDegreeFiveExponent8 9 51 90 133 138,
    tropicalOverlapDegreeFiveExponent8 20 51 71 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 106 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 114 133 138,
    tropicalOverlapDegreeFiveExponent8 7 71 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 43 90 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 90 133 138,
    tropicalOverlapDegreeFiveExponent8 26 51 71 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 106 138,
    tropicalOverlapDegreeFiveExponent8 1 7 65 114 132,
    tropicalOverlapDegreeFiveExponent8 1 7 77 90 138,
    tropicalOverlapDegreeFiveExponent8 1 17 43 90 138,
    tropicalOverlapDegreeFiveExponent8 1 17 51 90 132,
    tropicalOverlapDegreeFiveExponent8 1 26 51 77 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 31. -/
theorem tropicalOverlapSourceIExponent8_replay_shard31
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard31 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard31 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard31 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 31. -/
theorem tropicalOverlapSourceJExponent8_replay_shard31
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard31 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard31 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard31 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard31
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard31 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard31 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard31 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard31
    (i : Fin 5) :
    tropicalOverlapRelation8Shard31 i =
      tropicalOverlapSourceCombination8Shard31 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard31,
      tropicalOverlapSourceCombination8Shard31,
      tropicalOverlapProvenance8Shard31,
      tropicalOverlapSourceIExponent8Shard31,
      tropicalOverlapSourceJExponent8Shard31, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 31. -/
theorem tropicalOverlapRelation8_provenance_shard31 (i : Fin 5) :
    tropicalOverlapRelation8Shard31 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard31 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard31]
  unfold tropicalOverlapSourceCombination8Shard31
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard31,
    tropicalOverlapSourceJExponent8_replay_shard31]

end

end MonochromaticQuantumGraphs.N8D3
