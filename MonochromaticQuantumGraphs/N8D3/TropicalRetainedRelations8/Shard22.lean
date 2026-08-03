import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 110--114. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 22. -/
def tropicalOverlapProvenance8Shard22 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 33, coordinateB := 141, sourceJ := 93, coordinateA := 138 },
  { epsilon := -1, sourceI := 34, coordinateB := 7, sourceJ := 35, coordinateA := 1 },
  { epsilon := 1, sourceI := 34, coordinateB := 141, sourceJ := 94, coordinateA := 138 },
  { epsilon := 1, sourceI := 35, coordinateB := 141, sourceJ := 95, coordinateA := 138 },
  { epsilon := -1, sourceI := 36, coordinateB := 7, sourceJ := 37, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 22. -/
def tropicalOverlapRelation8Shard22 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 87 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 87 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 87 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 76 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 87 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 76 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 87 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 87 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 76 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 87 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 87 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 122 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 70 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 90 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 70 122) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard22 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 105 138 141,
    tropicalOverlapDegreeFiveExponent8 7 58 114 129 141,
    tropicalOverlapDegreeFiveExponent8 7 70 87 138 141,
    tropicalOverlapDegreeFiveExponent8 15 42 87 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 87 129 141,
    tropicalOverlapDegreeFiveExponent8 25 51 70 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 105 138,
    tropicalOverlapDegreeFiveExponent8 1 7 64 114 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 87 138,
    tropicalOverlapDegreeFiveExponent8 7 11 42 87 138,
    tropicalOverlapDegreeFiveExponent8 7 11 51 87 129,
    tropicalOverlapDegreeFiveExponent8 7 19 51 76 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 105 138 141,
    tropicalOverlapDegreeFiveExponent8 1 64 114 129 141,
    tropicalOverlapDegreeFiveExponent8 1 76 87 138 141,
    tropicalOverlapDegreeFiveExponent8 11 42 87 138 141,
    tropicalOverlapDegreeFiveExponent8 11 51 87 129 141,
    tropicalOverlapDegreeFiveExponent8 19 51 76 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 105 138 141,
    tropicalOverlapDegreeFiveExponent8 7 64 114 129 141,
    tropicalOverlapDegreeFiveExponent8 7 76 87 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 87 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 87 129 141,
    tropicalOverlapDegreeFiveExponent8 25 51 76 122 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 105 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 114 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 90 138,
    tropicalOverlapDegreeFiveExponent8 7 9 42 90 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 90 129,
    tropicalOverlapDegreeFiveExponent8 7 20 51 70 122
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard22 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 105 138 141,
    tropicalOverlapDegreeFiveExponent8 7 58 115 129 138,
    tropicalOverlapDegreeFiveExponent8 7 70 87 138 141,
    tropicalOverlapDegreeFiveExponent8 15 42 87 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 87 129 138,
    tropicalOverlapDegreeFiveExponent8 25 52 70 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 105 138,
    tropicalOverlapDegreeFiveExponent8 1 7 64 114 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 87 138,
    tropicalOverlapDegreeFiveExponent8 1 17 42 87 138,
    tropicalOverlapDegreeFiveExponent8 1 17 51 87 129,
    tropicalOverlapDegreeFiveExponent8 1 25 51 76 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 105 138 141,
    tropicalOverlapDegreeFiveExponent8 1 64 115 129 138,
    tropicalOverlapDegreeFiveExponent8 1 76 87 138 141,
    tropicalOverlapDegreeFiveExponent8 11 42 87 138 141,
    tropicalOverlapDegreeFiveExponent8 11 52 87 129 138,
    tropicalOverlapDegreeFiveExponent8 19 52 76 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 105 138 141,
    tropicalOverlapDegreeFiveExponent8 7 64 115 129 138,
    tropicalOverlapDegreeFiveExponent8 7 76 87 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 87 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 87 129 138,
    tropicalOverlapDegreeFiveExponent8 25 52 76 122 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 105 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 114 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 90 138,
    tropicalOverlapDegreeFiveExponent8 1 15 42 90 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 90 129,
    tropicalOverlapDegreeFiveExponent8 1 26 51 70 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 22. -/
theorem tropicalOverlapSourceIExponent8_replay_shard22
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard22 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard22 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard22 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 22. -/
theorem tropicalOverlapSourceJExponent8_replay_shard22
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard22 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard22 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard22 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard22
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard22 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard22 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard22 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard22
    (i : Fin 5) :
    tropicalOverlapRelation8Shard22 i =
      tropicalOverlapSourceCombination8Shard22 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard22,
      tropicalOverlapSourceCombination8Shard22,
      tropicalOverlapProvenance8Shard22,
      tropicalOverlapSourceIExponent8Shard22,
      tropicalOverlapSourceJExponent8Shard22, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 22. -/
theorem tropicalOverlapRelation8_provenance_shard22 (i : Fin 5) :
    tropicalOverlapRelation8Shard22 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard22 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard22]
  unfold tropicalOverlapSourceCombination8Shard22
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard22,
    tropicalOverlapSourceJExponent8_replay_shard22]

end

end MonochromaticQuantumGraphs.N8D3
