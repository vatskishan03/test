import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 90--94. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 18. -/
def tropicalOverlapProvenance8Shard18 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 26, coordinateB := 89, sourceJ := 30, coordinateA := 86 },
  { epsilon := -1, sourceI := 26, coordinateB := 87, sourceJ := 34, coordinateA := 86 },
  { epsilon := 1, sourceI := 26, coordinateB := 90, sourceJ := 38, coordinateA := 86 },
  { epsilon := 1, sourceI := 27, coordinateB := 141, sourceJ := 87, coordinateA := 138 },
  { epsilon := -1, sourceI := 28, coordinateB := 7, sourceJ := 29, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 18. -/
def tropicalOverlapRelation8Shard18 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 102 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 111 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 86 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 105 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 102 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 87 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 90 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 105 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 114 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 76 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 86 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 86 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 86 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 119 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 70 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 89 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 70 119) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard18 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 89 102 138,
    tropicalOverlapDegreeFiveExponent8 1 64 89 111 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 42 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 89 129,
    tropicalOverlapDegreeFiveExponent8 19 51 76 89 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 87 102 138,
    tropicalOverlapDegreeFiveExponent8 1 64 87 111 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 42 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 87 129,
    tropicalOverlapDegreeFiveExponent8 19 51 76 87 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 90 102 138,
    tropicalOverlapDegreeFiveExponent8 1 64 90 111 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 42 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 90 129,
    tropicalOverlapDegreeFiveExponent8 19 51 76 90 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 102 138 141,
    tropicalOverlapDegreeFiveExponent8 7 64 111 129 141,
    tropicalOverlapDegreeFiveExponent8 7 76 86 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 86 138 141,
    tropicalOverlapDegreeFiveExponent8 17 51 86 129 141,
    tropicalOverlapDegreeFiveExponent8 25 51 76 119 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 102 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 111 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 89 138,
    tropicalOverlapDegreeFiveExponent8 7 9 42 89 138,
    tropicalOverlapDegreeFiveExponent8 7 9 51 89 129,
    tropicalOverlapDegreeFiveExponent8 7 20 51 70 119
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard18 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 86 102 138,
    tropicalOverlapDegreeFiveExponent8 1 65 86 111 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 42 86 89 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 89 129,
    tropicalOverlapDegreeFiveExponent8 20 51 76 86 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 64 86 105 138,
    tropicalOverlapDegreeFiveExponent8 1 64 86 114 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 42 86 87 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 87 129,
    tropicalOverlapDegreeFiveExponent8 19 51 76 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 86 105 138,
    tropicalOverlapDegreeFiveExponent8 1 65 86 114 129,
    tropicalOverlapDegreeFiveExponent8 1 76 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 42 86 90 138,
    tropicalOverlapDegreeFiveExponent8 11 51 86 90 129,
    tropicalOverlapDegreeFiveExponent8 20 51 76 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 102 138 141,
    tropicalOverlapDegreeFiveExponent8 7 64 112 129 138,
    tropicalOverlapDegreeFiveExponent8 7 76 86 138 141,
    tropicalOverlapDegreeFiveExponent8 17 42 86 138 141,
    tropicalOverlapDegreeFiveExponent8 17 52 86 129 138,
    tropicalOverlapDegreeFiveExponent8 25 52 76 119 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 102 138,
    tropicalOverlapDegreeFiveExponent8 1 7 59 111 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 89 138,
    tropicalOverlapDegreeFiveExponent8 1 15 42 89 138,
    tropicalOverlapDegreeFiveExponent8 1 15 51 89 129,
    tropicalOverlapDegreeFiveExponent8 1 26 51 70 119
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 18. -/
theorem tropicalOverlapSourceIExponent8_replay_shard18
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard18 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard18 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard18 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 18. -/
theorem tropicalOverlapSourceJExponent8_replay_shard18
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard18 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard18 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard18 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard18
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard18 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard18 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard18 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard18
    (i : Fin 5) :
    tropicalOverlapRelation8Shard18 i =
      tropicalOverlapSourceCombination8Shard18 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard18,
      tropicalOverlapSourceCombination8Shard18,
      tropicalOverlapProvenance8Shard18,
      tropicalOverlapSourceIExponent8Shard18,
      tropicalOverlapSourceJExponent8Shard18, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 18. -/
theorem tropicalOverlapRelation8_provenance_shard18 (i : Fin 5) :
    tropicalOverlapRelation8Shard18 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard18 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard18]
  unfold tropicalOverlapSourceCombination8Shard18
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard18,
    tropicalOverlapSourceJExponent8_replay_shard18]

end

end MonochromaticQuantumGraphs.N8D3
