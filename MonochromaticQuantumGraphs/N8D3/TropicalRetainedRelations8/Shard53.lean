import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 265--269. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 53. -/
def tropicalOverlapProvenance8Shard53 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 128, coordinateB := 6, sourceJ := 129, coordinateA := 0 },
  { epsilon := -1, sourceI := 128, coordinateB := 1, sourceJ := 130, coordinateA := 0 },
  { epsilon := -1, sourceI := 128, coordinateB := 7, sourceJ := 131, coordinateA := 0 },
  { epsilon := 1, sourceI := 128, coordinateB := 142, sourceJ := 188, coordinateA := 139 },
  { epsilon := -1, sourceI := 128, coordinateB := 90, sourceJ := 136, coordinateA := 89 }
]

/-- The five explicit sparse target polynomials in overlap shard 53. -/
def tropicalOverlapRelation8Shard53 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 76 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 76 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 76 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 111 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 112 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 89 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 89 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 76 120 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 102 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 111 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 90 120) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard53 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 102 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 111 130,
    tropicalOverlapDegreeFiveExponent8 0 6 76 89 139,
    tropicalOverlapDegreeFiveExponent8 6 11 39 89 139,
    tropicalOverlapDegreeFiveExponent8 6 11 48 89 130,
    tropicalOverlapDegreeFiveExponent8 6 20 48 76 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 102 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 111 130,
    tropicalOverlapDegreeFiveExponent8 0 1 76 89 139,
    tropicalOverlapDegreeFiveExponent8 1 11 39 89 139,
    tropicalOverlapDegreeFiveExponent8 1 11 48 89 130,
    tropicalOverlapDegreeFiveExponent8 1 20 48 76 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 102 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 111 130,
    tropicalOverlapDegreeFiveExponent8 0 7 76 89 139,
    tropicalOverlapDegreeFiveExponent8 7 11 39 89 139,
    tropicalOverlapDegreeFiveExponent8 7 11 48 89 130,
    tropicalOverlapDegreeFiveExponent8 7 20 48 76 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 102 139 142,
    tropicalOverlapDegreeFiveExponent8 0 65 111 130 142,
    tropicalOverlapDegreeFiveExponent8 0 76 89 139 142,
    tropicalOverlapDegreeFiveExponent8 11 39 89 139 142,
    tropicalOverlapDegreeFiveExponent8 11 48 89 130 142,
    tropicalOverlapDegreeFiveExponent8 20 48 76 120 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 90 102 139,
    tropicalOverlapDegreeFiveExponent8 0 65 90 111 130,
    tropicalOverlapDegreeFiveExponent8 0 76 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 39 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 48 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 48 76 90 120
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard53 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 102 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 111 130,
    tropicalOverlapDegreeFiveExponent8 0 6 76 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 39 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 48 89 130,
    tropicalOverlapDegreeFiveExponent8 0 26 48 76 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 102 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 111 130,
    tropicalOverlapDegreeFiveExponent8 0 1 76 89 139,
    tropicalOverlapDegreeFiveExponent8 0 11 42 89 139,
    tropicalOverlapDegreeFiveExponent8 0 11 51 89 130,
    tropicalOverlapDegreeFiveExponent8 0 20 51 76 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 102 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 111 130,
    tropicalOverlapDegreeFiveExponent8 0 7 76 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 42 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 51 89 130,
    tropicalOverlapDegreeFiveExponent8 0 26 51 76 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 102 139 142,
    tropicalOverlapDegreeFiveExponent8 0 65 112 130 139,
    tropicalOverlapDegreeFiveExponent8 0 76 89 139 142,
    tropicalOverlapDegreeFiveExponent8 11 39 89 139 142,
    tropicalOverlapDegreeFiveExponent8 11 49 89 130 139,
    tropicalOverlapDegreeFiveExponent8 20 49 76 120 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 89 105 139,
    tropicalOverlapDegreeFiveExponent8 0 65 89 114 130,
    tropicalOverlapDegreeFiveExponent8 0 76 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 39 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 48 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 48 76 89 123
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 53. -/
theorem tropicalOverlapSourceIExponent8_replay_shard53
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard53 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard53 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard53 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 53. -/
theorem tropicalOverlapSourceJExponent8_replay_shard53
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard53 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard53 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard53 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard53
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard53 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard53 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard53 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard53
    (i : Fin 5) :
    tropicalOverlapRelation8Shard53 i =
      tropicalOverlapSourceCombination8Shard53 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard53,
      tropicalOverlapSourceCombination8Shard53,
      tropicalOverlapProvenance8Shard53,
      tropicalOverlapSourceIExponent8Shard53,
      tropicalOverlapSourceJExponent8Shard53, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 53. -/
theorem tropicalOverlapRelation8_provenance_shard53 (i : Fin 5) :
    tropicalOverlapRelation8Shard53 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard53 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard53]
  unfold tropicalOverlapSourceCombination8Shard53
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard53,
    tropicalOverlapSourceJExponent8_replay_shard53]

end

end MonochromaticQuantumGraphs.N8D3
