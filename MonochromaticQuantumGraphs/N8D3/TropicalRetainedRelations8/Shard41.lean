import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 205--209. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 41. -/
def tropicalOverlapProvenance8Shard41 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 90, coordinateB := 7, sourceJ := 91, coordinateA := 1 },
  { epsilon := -1, sourceI := 92, coordinateB := 7, sourceJ := 93, coordinateA := 1 },
  { epsilon := -1, sourceI := 94, coordinateB := 7, sourceJ := 95, coordinateA := 1 },
  { epsilon := -1, sourceI := 96, coordinateB := 7, sourceJ := 97, coordinateA := 1 },
  { epsilon := -1, sourceI := 98, coordinateB := 7, sourceJ := 99, coordinateA := 1 }
]

/-- The five explicit sparse target polynomials in overlap shard 41. -/
def tropicalOverlapRelation8Shard41 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 76 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 89 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 89 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 76 119) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 87 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 70 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 87 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 87 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 70 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 87 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 76 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 87 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 87 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 76 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 70 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 90 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 90 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 70 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 76 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 90 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 90 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 76 122) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard41 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 102 141,
    tropicalOverlapDegreeFiveExponent8 1 7 65 112 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 89 141,
    tropicalOverlapDegreeFiveExponent8 7 11 42 89 141,
    tropicalOverlapDegreeFiveExponent8 7 11 52 89 129,
    tropicalOverlapDegreeFiveExponent8 7 20 52 76 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 105 141,
    tropicalOverlapDegreeFiveExponent8 1 7 58 115 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 87 141,
    tropicalOverlapDegreeFiveExponent8 7 9 42 87 141,
    tropicalOverlapDegreeFiveExponent8 7 9 52 87 129,
    tropicalOverlapDegreeFiveExponent8 7 19 52 70 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 105 141,
    tropicalOverlapDegreeFiveExponent8 1 7 64 115 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 87 141,
    tropicalOverlapDegreeFiveExponent8 7 11 42 87 141,
    tropicalOverlapDegreeFiveExponent8 7 11 52 87 129,
    tropicalOverlapDegreeFiveExponent8 7 19 52 76 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 105 141,
    tropicalOverlapDegreeFiveExponent8 1 7 59 115 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 90 141,
    tropicalOverlapDegreeFiveExponent8 7 9 42 90 141,
    tropicalOverlapDegreeFiveExponent8 7 9 52 90 129,
    tropicalOverlapDegreeFiveExponent8 7 20 52 70 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 105 141,
    tropicalOverlapDegreeFiveExponent8 1 7 65 115 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 90 141,
    tropicalOverlapDegreeFiveExponent8 7 11 42 90 141,
    tropicalOverlapDegreeFiveExponent8 7 11 52 90 129,
    tropicalOverlapDegreeFiveExponent8 7 20 52 76 122
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard41 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 102 141,
    tropicalOverlapDegreeFiveExponent8 1 7 65 112 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 89 141,
    tropicalOverlapDegreeFiveExponent8 1 17 42 89 141,
    tropicalOverlapDegreeFiveExponent8 1 17 52 89 129,
    tropicalOverlapDegreeFiveExponent8 1 26 52 76 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 58 105 141,
    tropicalOverlapDegreeFiveExponent8 1 7 58 115 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 87 141,
    tropicalOverlapDegreeFiveExponent8 1 15 42 87 141,
    tropicalOverlapDegreeFiveExponent8 1 15 52 87 129,
    tropicalOverlapDegreeFiveExponent8 1 25 52 70 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 64 105 141,
    tropicalOverlapDegreeFiveExponent8 1 7 64 115 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 87 141,
    tropicalOverlapDegreeFiveExponent8 1 17 42 87 141,
    tropicalOverlapDegreeFiveExponent8 1 17 52 87 129,
    tropicalOverlapDegreeFiveExponent8 1 25 52 76 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 59 105 141,
    tropicalOverlapDegreeFiveExponent8 1 7 59 115 129,
    tropicalOverlapDegreeFiveExponent8 1 7 70 90 141,
    tropicalOverlapDegreeFiveExponent8 1 15 42 90 141,
    tropicalOverlapDegreeFiveExponent8 1 15 52 90 129,
    tropicalOverlapDegreeFiveExponent8 1 26 52 70 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 7 65 105 141,
    tropicalOverlapDegreeFiveExponent8 1 7 65 115 129,
    tropicalOverlapDegreeFiveExponent8 1 7 76 90 141,
    tropicalOverlapDegreeFiveExponent8 1 17 42 90 141,
    tropicalOverlapDegreeFiveExponent8 1 17 52 90 129,
    tropicalOverlapDegreeFiveExponent8 1 26 52 76 122
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 41. -/
theorem tropicalOverlapSourceIExponent8_replay_shard41
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard41 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard41 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard41 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 41. -/
theorem tropicalOverlapSourceJExponent8_replay_shard41
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard41 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard41 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard41 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard41
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard41 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard41 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard41 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard41
    (i : Fin 5) :
    tropicalOverlapRelation8Shard41 i =
      tropicalOverlapSourceCombination8Shard41 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard41,
      tropicalOverlapSourceCombination8Shard41,
      tropicalOverlapProvenance8Shard41,
      tropicalOverlapSourceIExponent8Shard41,
      tropicalOverlapSourceJExponent8Shard41, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 41. -/
theorem tropicalOverlapRelation8_provenance_shard41 (i : Fin 5) :
    tropicalOverlapRelation8Shard41 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard41 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard41]
  unfold tropicalOverlapSourceCombination8Shard41
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard41,
    tropicalOverlapSourceJExponent8_replay_shard41]

end

end MonochromaticQuantumGraphs.N8D3
