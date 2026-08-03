import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 195--199. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 39. -/
def tropicalOverlapProvenance8Shard39 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 81, coordinateB := 90, sourceJ := 99, coordinateA := 85 },
  { epsilon := -1, sourceI := 84, coordinateB := 7, sourceJ := 85, coordinateA := 1 },
  { epsilon := 1, sourceI := 84, coordinateB := 89, sourceJ := 88, coordinateA := 86 },
  { epsilon := -1, sourceI := 84, coordinateB := 87, sourceJ := 92, coordinateA := 86 },
  { epsilon := 1, sourceI := 84, coordinateB := 90, sourceJ := 96, coordinateA := 86 }
]

/-- The five explicit sparse target polynomials in overlap shard 39. -/
def tropicalOverlapRelation8Shard39 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 105 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 115 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 85 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 70 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 86 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 86 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 70 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 86 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 105 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 115 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 102 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 112 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 87 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 102 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 112 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 105 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 115 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 86 122) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard39 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 90 99 141,
    tropicalOverlapDegreeFiveExponent8 7 64 90 109 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 90 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 90 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 90 129,
    tropicalOverlapDegreeFiveExponent8 25 52 76 90 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 102 141,
    tropicalOverlapDegreeFiveExponent8 1 7 58 112 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 86 141,
    tropicalOverlapDegreeFiveExponent8 7 9 42 86 141,
    tropicalOverlapDegreeFiveExponent8 7 9 52 86 129,
    tropicalOverlapDegreeFiveExponent8 7 19 52 70 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 89 102 141,
    tropicalOverlapDegreeFiveExponent8 1 58 89 112 129,
    tropicalOverlapDegreeFiveExponent8 1 70 86 89 141,
    tropicalOverlapDegreeFiveExponent8 9 42 86 89 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 89 129,
    tropicalOverlapDegreeFiveExponent8 19 52 70 89 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 87 102 141,
    tropicalOverlapDegreeFiveExponent8 1 58 87 112 129,
    tropicalOverlapDegreeFiveExponent8 1 70 86 87 141,
    tropicalOverlapDegreeFiveExponent8 9 42 86 87 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 87 129,
    tropicalOverlapDegreeFiveExponent8 19 52 70 87 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 90 102 141,
    tropicalOverlapDegreeFiveExponent8 1 58 90 112 129,
    tropicalOverlapDegreeFiveExponent8 1 70 86 90 141,
    tropicalOverlapDegreeFiveExponent8 9 42 86 90 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 90 129,
    tropicalOverlapDegreeFiveExponent8 19 52 70 90 119
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard39 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 105 141,
    tropicalOverlapDegreeFiveExponent8 7 65 85 115 129,
    tropicalOverlapDegreeFiveExponent8 7 76 85 90 141,
    tropicalOverlapDegreeFiveExponent8 17 42 85 90 141,
    tropicalOverlapDegreeFiveExponent8 17 52 85 90 129,
    tropicalOverlapDegreeFiveExponent8 26 52 76 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 102 141,
    tropicalOverlapDegreeFiveExponent8 1 7 58 112 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 86 141,
    tropicalOverlapDegreeFiveExponent8 1 15 42 86 141,
    tropicalOverlapDegreeFiveExponent8 1 15 52 86 129,
    tropicalOverlapDegreeFiveExponent8 1 25 52 70 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 86 102 141,
    tropicalOverlapDegreeFiveExponent8 1 59 86 112 129,
    tropicalOverlapDegreeFiveExponent8 1 70 86 89 141,
    tropicalOverlapDegreeFiveExponent8 9 42 86 89 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 89 129,
    tropicalOverlapDegreeFiveExponent8 20 52 70 86 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 58 86 105 141,
    tropicalOverlapDegreeFiveExponent8 1 58 86 115 129,
    tropicalOverlapDegreeFiveExponent8 1 70 86 87 141,
    tropicalOverlapDegreeFiveExponent8 9 42 86 87 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 87 129,
    tropicalOverlapDegreeFiveExponent8 19 52 70 86 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 86 105 141,
    tropicalOverlapDegreeFiveExponent8 1 59 86 115 129,
    tropicalOverlapDegreeFiveExponent8 1 70 86 90 141,
    tropicalOverlapDegreeFiveExponent8 9 42 86 90 141,
    tropicalOverlapDegreeFiveExponent8 9 52 86 90 129,
    tropicalOverlapDegreeFiveExponent8 20 52 70 86 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 39. -/
theorem tropicalOverlapSourceIExponent8_replay_shard39
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard39 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard39 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard39 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 39. -/
theorem tropicalOverlapSourceJExponent8_replay_shard39
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard39 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard39 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard39 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard39
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard39 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard39 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard39 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard39
    (i : Fin 5) :
    tropicalOverlapRelation8Shard39 i =
      tropicalOverlapSourceCombination8Shard39 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard39,
      tropicalOverlapSourceCombination8Shard39,
      tropicalOverlapProvenance8Shard39,
      tropicalOverlapSourceIExponent8Shard39,
      tropicalOverlapSourceJExponent8Shard39, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 39. -/
theorem tropicalOverlapRelation8_provenance_shard39 (i : Fin 5) :
    tropicalOverlapRelation8Shard39 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard39 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard39]
  unfold tropicalOverlapSourceCombination8Shard39
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard39,
    tropicalOverlapSourceJExponent8_replay_shard39]

end

end MonochromaticQuantumGraphs.N8D3
