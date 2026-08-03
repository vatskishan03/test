import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 335--339. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 67. -/
def tropicalOverlapProvenance8Shard67 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 180, coordinateB := 89, sourceJ := 185, coordinateA := 88 },
  { epsilon := -1, sourceI := 180, coordinateB := 90, sourceJ := 193, coordinateA := 88 },
  { epsilon := -1, sourceI := 181, coordinateB := 89, sourceJ := 187, coordinateA := 88 },
  { epsilon := -1, sourceI := 181, coordinateB := 90, sourceJ := 195, coordinateA := 88 },
  { epsilon := -1, sourceI := 182, coordinateB := 7, sourceJ := 183, coordinateA := 6 }
]

/-- The five explicit sparse target polynomials in overlap shard 67. -/
def tropicalOverlapRelation8Shard67 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 112 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 112 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 42 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 52 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 76 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 39 88 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 49 88 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 76 117) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard67 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 89 99 142,
    tropicalOverlapDegreeFiveExponent8 6 59 89 109 130,
    tropicalOverlapDegreeFiveExponent8 6 70 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 39 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 49 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 49 70 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 90 99 142,
    tropicalOverlapDegreeFiveExponent8 6 59 90 109 130,
    tropicalOverlapDegreeFiveExponent8 6 70 88 90 142,
    tropicalOverlapDegreeFiveExponent8 15 39 88 90 142,
    tropicalOverlapDegreeFiveExponent8 15 49 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 49 70 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 89 99 142,
    tropicalOverlapDegreeFiveExponent8 7 59 89 109 130,
    tropicalOverlapDegreeFiveExponent8 7 70 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 42 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 52 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 52 70 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 90 99 142,
    tropicalOverlapDegreeFiveExponent8 7 59 90 109 130,
    tropicalOverlapDegreeFiveExponent8 7 70 88 90 142,
    tropicalOverlapDegreeFiveExponent8 15 42 88 90 142,
    tropicalOverlapDegreeFiveExponent8 15 52 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 52 70 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 65 99 142,
    tropicalOverlapDegreeFiveExponent8 6 7 65 109 130,
    tropicalOverlapDegreeFiveExponent8 6 7 76 88 142,
    tropicalOverlapDegreeFiveExponent8 7 17 39 88 142,
    tropicalOverlapDegreeFiveExponent8 7 17 49 88 130,
    tropicalOverlapDegreeFiveExponent8 7 26 49 76 117
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard67 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 88 102 142,
    tropicalOverlapDegreeFiveExponent8 6 59 88 112 130,
    tropicalOverlapDegreeFiveExponent8 6 70 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 39 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 49 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 49 70 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 88 105 142,
    tropicalOverlapDegreeFiveExponent8 6 59 88 115 130,
    tropicalOverlapDegreeFiveExponent8 6 70 88 90 142,
    tropicalOverlapDegreeFiveExponent8 15 39 88 90 142,
    tropicalOverlapDegreeFiveExponent8 15 49 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 49 70 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 88 102 142,
    tropicalOverlapDegreeFiveExponent8 7 59 88 112 130,
    tropicalOverlapDegreeFiveExponent8 7 70 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 42 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 52 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 52 70 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 88 105 142,
    tropicalOverlapDegreeFiveExponent8 7 59 88 115 130,
    tropicalOverlapDegreeFiveExponent8 7 70 88 90 142,
    tropicalOverlapDegreeFiveExponent8 15 42 88 90 142,
    tropicalOverlapDegreeFiveExponent8 15 52 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 52 70 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 65 99 142,
    tropicalOverlapDegreeFiveExponent8 6 7 65 109 130,
    tropicalOverlapDegreeFiveExponent8 6 7 76 88 142,
    tropicalOverlapDegreeFiveExponent8 6 17 42 88 142,
    tropicalOverlapDegreeFiveExponent8 6 17 52 88 130,
    tropicalOverlapDegreeFiveExponent8 6 26 52 76 117
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 67. -/
theorem tropicalOverlapSourceIExponent8_replay_shard67
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard67 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard67 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard67 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 67. -/
theorem tropicalOverlapSourceJExponent8_replay_shard67
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard67 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard67 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard67 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard67
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard67 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard67 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard67 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard67
    (i : Fin 5) :
    tropicalOverlapRelation8Shard67 i =
      tropicalOverlapSourceCombination8Shard67 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard67,
      tropicalOverlapSourceCombination8Shard67,
      tropicalOverlapProvenance8Shard67,
      tropicalOverlapSourceIExponent8Shard67,
      tropicalOverlapSourceJExponent8Shard67, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 67. -/
theorem tropicalOverlapRelation8_provenance_shard67 (i : Fin 5) :
    tropicalOverlapRelation8Shard67 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard67 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard67]
  unfold tropicalOverlapSourceCombination8Shard67
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard67,
    tropicalOverlapSourceJExponent8_replay_shard67]

end

end MonochromaticQuantumGraphs.N8D3
