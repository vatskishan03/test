import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 260--264. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 52. -/
def tropicalOverlapProvenance8Shard52 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 124, coordinateB := 7, sourceJ := 127, coordinateA := 0 },
  { epsilon := 1, sourceI := 124, coordinateB := 142, sourceJ := 184, coordinateA := 139 },
  { epsilon := -1, sourceI := 124, coordinateB := 90, sourceJ := 132, coordinateA := 89 },
  { epsilon := 1, sourceI := 125, coordinateB := 142, sourceJ := 185, coordinateA := 139 },
  { epsilon := -1, sourceI := 126, coordinateB := 90, sourceJ := 134, coordinateA := 89 }
]

/-- The five explicit sparse target polynomials in overlap shard 52. -/
def tropicalOverlapRelation8Shard52 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 70 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 111 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 112 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 89 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 89 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 120 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 102 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 111 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 111 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 112 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 89 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 89 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 120 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 102 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 111 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 90 120) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard52 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 102 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 111 130,
    tropicalOverlapDegreeFiveExponent8 0 7 70 89 139,
    tropicalOverlapDegreeFiveExponent8 7 9 39 89 139,
    tropicalOverlapDegreeFiveExponent8 7 9 48 89 130,
    tropicalOverlapDegreeFiveExponent8 7 20 48 70 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 102 139 142,
    tropicalOverlapDegreeFiveExponent8 0 59 111 130 142,
    tropicalOverlapDegreeFiveExponent8 0 70 89 139 142,
    tropicalOverlapDegreeFiveExponent8 9 39 89 139 142,
    tropicalOverlapDegreeFiveExponent8 9 48 89 130 142,
    tropicalOverlapDegreeFiveExponent8 20 48 70 120 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 90 102 139,
    tropicalOverlapDegreeFiveExponent8 0 59 90 111 130,
    tropicalOverlapDegreeFiveExponent8 0 70 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 39 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 48 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 48 70 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 102 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 111 130 142,
    tropicalOverlapDegreeFiveExponent8 6 70 89 139 142,
    tropicalOverlapDegreeFiveExponent8 15 39 89 139 142,
    tropicalOverlapDegreeFiveExponent8 15 48 89 130 142,
    tropicalOverlapDegreeFiveExponent8 26 48 70 120 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 90 102 139,
    tropicalOverlapDegreeFiveExponent8 1 59 90 111 130,
    tropicalOverlapDegreeFiveExponent8 1 70 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 42 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 51 70 90 120
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard52 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 102 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 111 130,
    tropicalOverlapDegreeFiveExponent8 0 7 70 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 42 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 51 89 130,
    tropicalOverlapDegreeFiveExponent8 0 26 51 70 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 102 139 142,
    tropicalOverlapDegreeFiveExponent8 0 59 112 130 139,
    tropicalOverlapDegreeFiveExponent8 0 70 89 139 142,
    tropicalOverlapDegreeFiveExponent8 9 39 89 139 142,
    tropicalOverlapDegreeFiveExponent8 9 49 89 130 139,
    tropicalOverlapDegreeFiveExponent8 20 49 70 120 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 89 105 139,
    tropicalOverlapDegreeFiveExponent8 0 59 89 114 130,
    tropicalOverlapDegreeFiveExponent8 0 70 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 39 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 48 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 48 70 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 102 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 112 130 139,
    tropicalOverlapDegreeFiveExponent8 6 70 89 139 142,
    tropicalOverlapDegreeFiveExponent8 15 39 89 139 142,
    tropicalOverlapDegreeFiveExponent8 15 49 89 130 139,
    tropicalOverlapDegreeFiveExponent8 26 49 70 120 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 89 105 139,
    tropicalOverlapDegreeFiveExponent8 1 59 89 114 130,
    tropicalOverlapDegreeFiveExponent8 1 70 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 42 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 51 70 89 123
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 52. -/
theorem tropicalOverlapSourceIExponent8_replay_shard52
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard52 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard52 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard52 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 52. -/
theorem tropicalOverlapSourceJExponent8_replay_shard52
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard52 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard52 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard52 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard52
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard52 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard52 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard52 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard52
    (i : Fin 5) :
    tropicalOverlapRelation8Shard52 i =
      tropicalOverlapSourceCombination8Shard52 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard52,
      tropicalOverlapSourceCombination8Shard52,
      tropicalOverlapProvenance8Shard52,
      tropicalOverlapSourceIExponent8Shard52,
      tropicalOverlapSourceJExponent8Shard52, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 52. -/
theorem tropicalOverlapRelation8_provenance_shard52 (i : Fin 5) :
    tropicalOverlapRelation8Shard52 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard52 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard52]
  unfold tropicalOverlapSourceCombination8Shard52
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard52,
    tropicalOverlapSourceJExponent8_replay_shard52]

end

end MonochromaticQuantumGraphs.N8D3
