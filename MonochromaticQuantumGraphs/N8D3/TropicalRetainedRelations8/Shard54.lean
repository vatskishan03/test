import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 270--274. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 54. -/
def tropicalOverlapProvenance8Shard54 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 129, coordinateB := 142, sourceJ := 189, coordinateA := 139 },
  { epsilon := -1, sourceI := 130, coordinateB := 90, sourceJ := 138, coordinateA := 89 },
  { epsilon := -1, sourceI := 132, coordinateB := 6, sourceJ := 133, coordinateA := 0 },
  { epsilon := -1, sourceI := 132, coordinateB := 1, sourceJ := 134, coordinateA := 0 },
  { epsilon := -1, sourceI := 132, coordinateB := 7, sourceJ := 135, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 54. -/
def tropicalOverlapRelation8Shard54 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 111 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 112 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 89 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 89 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 120 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 102 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 111 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 76 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 70 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 70 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 70 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 70 123) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard54 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 102 139 142,
    tropicalOverlapDegreeFiveExponent8 6 65 111 130 142,
    tropicalOverlapDegreeFiveExponent8 6 76 89 139 142,
    tropicalOverlapDegreeFiveExponent8 17 39 89 139 142,
    tropicalOverlapDegreeFiveExponent8 17 48 89 130 142,
    tropicalOverlapDegreeFiveExponent8 26 48 76 120 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 90 102 139,
    tropicalOverlapDegreeFiveExponent8 1 65 90 111 130,
    tropicalOverlapDegreeFiveExponent8 1 76 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 42 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 51 76 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 105 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 114 130,
    tropicalOverlapDegreeFiveExponent8 0 6 70 90 139,
    tropicalOverlapDegreeFiveExponent8 6 9 39 90 139,
    tropicalOverlapDegreeFiveExponent8 6 9 48 90 130,
    tropicalOverlapDegreeFiveExponent8 6 20 48 70 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 105 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 114 130,
    tropicalOverlapDegreeFiveExponent8 0 1 70 90 139,
    tropicalOverlapDegreeFiveExponent8 1 9 39 90 139,
    tropicalOverlapDegreeFiveExponent8 1 9 48 90 130,
    tropicalOverlapDegreeFiveExponent8 1 20 48 70 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 105 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 114 130,
    tropicalOverlapDegreeFiveExponent8 0 7 70 90 139,
    tropicalOverlapDegreeFiveExponent8 7 9 39 90 139,
    tropicalOverlapDegreeFiveExponent8 7 9 48 90 130,
    tropicalOverlapDegreeFiveExponent8 7 20 48 70 123
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard54 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 102 139 142,
    tropicalOverlapDegreeFiveExponent8 6 65 112 130 139,
    tropicalOverlapDegreeFiveExponent8 6 76 89 139 142,
    tropicalOverlapDegreeFiveExponent8 17 39 89 139 142,
    tropicalOverlapDegreeFiveExponent8 17 49 89 130 139,
    tropicalOverlapDegreeFiveExponent8 26 49 76 120 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 89 105 139,
    tropicalOverlapDegreeFiveExponent8 1 65 89 114 130,
    tropicalOverlapDegreeFiveExponent8 1 76 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 42 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 51 76 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 105 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 114 130,
    tropicalOverlapDegreeFiveExponent8 0 6 70 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 39 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 48 90 130,
    tropicalOverlapDegreeFiveExponent8 0 26 48 70 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 105 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 114 130,
    tropicalOverlapDegreeFiveExponent8 0 1 70 90 139,
    tropicalOverlapDegreeFiveExponent8 0 9 42 90 139,
    tropicalOverlapDegreeFiveExponent8 0 9 51 90 130,
    tropicalOverlapDegreeFiveExponent8 0 20 51 70 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 105 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 114 130,
    tropicalOverlapDegreeFiveExponent8 0 7 70 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 42 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 51 90 130,
    tropicalOverlapDegreeFiveExponent8 0 26 51 70 123
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 54. -/
theorem tropicalOverlapSourceIExponent8_replay_shard54
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard54 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard54 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard54 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 54. -/
theorem tropicalOverlapSourceJExponent8_replay_shard54
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard54 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard54 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard54 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard54
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard54 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard54 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard54 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard54
    (i : Fin 5) :
    tropicalOverlapRelation8Shard54 i =
      tropicalOverlapSourceCombination8Shard54 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard54,
      tropicalOverlapSourceCombination8Shard54,
      tropicalOverlapProvenance8Shard54,
      tropicalOverlapSourceIExponent8Shard54,
      tropicalOverlapSourceJExponent8Shard54, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 54. -/
theorem tropicalOverlapRelation8_provenance_shard54 (i : Fin 5) :
    tropicalOverlapRelation8Shard54 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard54 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard54]
  unfold tropicalOverlapSourceCombination8Shard54
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard54,
    tropicalOverlapSourceJExponent8_replay_shard54]

end

end MonochromaticQuantumGraphs.N8D3
