import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 65--69. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 13. -/
def tropicalOverlapProvenance8Shard13 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 20, coordinateB := 88, sourceJ := 22, coordinateA := 85 },
  { epsilon := -1, sourceI := 20, coordinateB := 86, sourceJ := 25, coordinateA := 85 },
  { epsilon := 1, sourceI := 20, coordinateB := 89, sourceJ := 29, coordinateA := 85 },
  { epsilon := -1, sourceI := 20, coordinateB := 87, sourceJ := 33, coordinateA := 85 },
  { epsilon := 1, sourceI := 20, coordinateB := 90, sourceJ := 37, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 13. -/
def tropicalOverlapRelation8Shard13 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 85 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 86 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 102 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 111 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 85 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 105 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 114 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 87 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 87 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 105 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 114 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 85 122) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard13 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 88 99 138,
    tropicalOverlapDegreeFiveExponent8 7 58 88 108 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 42 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 88 129,
    tropicalOverlapDegreeFiveExponent8 25 51 70 88 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 86 99 138,
    tropicalOverlapDegreeFiveExponent8 7 58 86 108 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 42 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 86 129,
    tropicalOverlapDegreeFiveExponent8 25 51 70 86 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 89 99 138,
    tropicalOverlapDegreeFiveExponent8 7 58 89 108 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 42 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 89 129,
    tropicalOverlapDegreeFiveExponent8 25 51 70 89 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 87 99 138,
    tropicalOverlapDegreeFiveExponent8 7 58 87 108 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 42 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 87 129,
    tropicalOverlapDegreeFiveExponent8 25 51 70 87 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 90 99 138,
    tropicalOverlapDegreeFiveExponent8 7 58 90 108 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 90 138,
    tropicalOverlapDegreeFiveExponent8 15 42 85 90 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 90 129,
    tropicalOverlapDegreeFiveExponent8 25 51 70 90 116
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard13 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 99 138,
    tropicalOverlapDegreeFiveExponent8 7 59 85 108 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 42 85 88 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 88 129,
    tropicalOverlapDegreeFiveExponent8 26 51 70 85 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 85 102 138,
    tropicalOverlapDegreeFiveExponent8 7 58 85 111 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 42 85 86 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 86 129,
    tropicalOverlapDegreeFiveExponent8 25 51 70 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 102 138,
    tropicalOverlapDegreeFiveExponent8 7 59 85 111 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 42 85 89 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 89 129,
    tropicalOverlapDegreeFiveExponent8 26 51 70 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 85 105 138,
    tropicalOverlapDegreeFiveExponent8 7 58 85 114 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 42 85 87 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 87 129,
    tropicalOverlapDegreeFiveExponent8 25 51 70 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 105 138,
    tropicalOverlapDegreeFiveExponent8 7 59 85 114 129,
    tropicalOverlapDegreeFiveExponent8 7 70 85 90 138,
    tropicalOverlapDegreeFiveExponent8 15 42 85 90 138,
    tropicalOverlapDegreeFiveExponent8 15 51 85 90 129,
    tropicalOverlapDegreeFiveExponent8 26 51 70 85 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 13. -/
theorem tropicalOverlapSourceIExponent8_replay_shard13
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard13 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard13 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard13 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 13. -/
theorem tropicalOverlapSourceJExponent8_replay_shard13
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard13 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard13 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard13 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard13
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard13 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard13 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard13 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard13
    (i : Fin 5) :
    tropicalOverlapRelation8Shard13 i =
      tropicalOverlapSourceCombination8Shard13 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard13,
      tropicalOverlapSourceCombination8Shard13,
      tropicalOverlapProvenance8Shard13,
      tropicalOverlapSourceIExponent8Shard13,
      tropicalOverlapSourceJExponent8Shard13, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 13. -/
theorem tropicalOverlapRelation8_provenance_shard13 (i : Fin 5) :
    tropicalOverlapRelation8Shard13 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard13 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard13]
  unfold tropicalOverlapSourceCombination8Shard13
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard13,
    tropicalOverlapSourceJExponent8_replay_shard13]

end

end MonochromaticQuantumGraphs.N8D3
