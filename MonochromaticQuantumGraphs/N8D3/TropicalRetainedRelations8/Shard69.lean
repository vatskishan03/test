import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 345--349. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 69. -/
def tropicalOverlapProvenance8Shard69 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 184, coordinateB := 1, sourceJ := 186, coordinateA := 0 },
  { epsilon := -1, sourceI := 184, coordinateB := 7, sourceJ := 187, coordinateA := 0 },
  { epsilon := -1, sourceI := 184, coordinateB := 90, sourceJ := 192, coordinateA := 89 },
  { epsilon := -1, sourceI := 186, coordinateB := 90, sourceJ := 194, coordinateA := 89 },
  { epsilon := -1, sourceI := 188, coordinateB := 6, sourceJ := 189, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 69. -/
def tropicalOverlapRelation8Shard69 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 70 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 70 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 102 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 112 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 102 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 112 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 49 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 76 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 49 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 76 120) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard69 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 102 142,
    tropicalOverlapDegreeFiveExponent8 0 1 59 112 130,
    tropicalOverlapDegreeFiveExponent8 0 1 70 89 142,
    tropicalOverlapDegreeFiveExponent8 1 9 39 89 142,
    tropicalOverlapDegreeFiveExponent8 1 9 49 89 130,
    tropicalOverlapDegreeFiveExponent8 1 20 49 70 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 102 142,
    tropicalOverlapDegreeFiveExponent8 0 7 59 112 130,
    tropicalOverlapDegreeFiveExponent8 0 7 70 89 142,
    tropicalOverlapDegreeFiveExponent8 7 9 39 89 142,
    tropicalOverlapDegreeFiveExponent8 7 9 49 89 130,
    tropicalOverlapDegreeFiveExponent8 7 20 49 70 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 90 102 142,
    tropicalOverlapDegreeFiveExponent8 0 59 90 112 130,
    tropicalOverlapDegreeFiveExponent8 0 70 89 90 142,
    tropicalOverlapDegreeFiveExponent8 9 39 89 90 142,
    tropicalOverlapDegreeFiveExponent8 9 49 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 49 70 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 90 102 142,
    tropicalOverlapDegreeFiveExponent8 1 59 90 112 130,
    tropicalOverlapDegreeFiveExponent8 1 70 89 90 142,
    tropicalOverlapDegreeFiveExponent8 9 42 89 90 142,
    tropicalOverlapDegreeFiveExponent8 9 52 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 52 70 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 102 142,
    tropicalOverlapDegreeFiveExponent8 0 6 65 112 130,
    tropicalOverlapDegreeFiveExponent8 0 6 76 89 142,
    tropicalOverlapDegreeFiveExponent8 6 11 39 89 142,
    tropicalOverlapDegreeFiveExponent8 6 11 49 89 130,
    tropicalOverlapDegreeFiveExponent8 6 20 49 76 120
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard69 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 102 142,
    tropicalOverlapDegreeFiveExponent8 0 1 59 112 130,
    tropicalOverlapDegreeFiveExponent8 0 1 70 89 142,
    tropicalOverlapDegreeFiveExponent8 0 9 42 89 142,
    tropicalOverlapDegreeFiveExponent8 0 9 52 89 130,
    tropicalOverlapDegreeFiveExponent8 0 20 52 70 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 102 142,
    tropicalOverlapDegreeFiveExponent8 0 7 59 112 130,
    tropicalOverlapDegreeFiveExponent8 0 7 70 89 142,
    tropicalOverlapDegreeFiveExponent8 0 15 42 89 142,
    tropicalOverlapDegreeFiveExponent8 0 15 52 89 130,
    tropicalOverlapDegreeFiveExponent8 0 26 52 70 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 89 105 142,
    tropicalOverlapDegreeFiveExponent8 0 59 89 115 130,
    tropicalOverlapDegreeFiveExponent8 0 70 89 90 142,
    tropicalOverlapDegreeFiveExponent8 9 39 89 90 142,
    tropicalOverlapDegreeFiveExponent8 9 49 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 49 70 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 89 105 142,
    tropicalOverlapDegreeFiveExponent8 1 59 89 115 130,
    tropicalOverlapDegreeFiveExponent8 1 70 89 90 142,
    tropicalOverlapDegreeFiveExponent8 9 42 89 90 142,
    tropicalOverlapDegreeFiveExponent8 9 52 89 90 130,
    tropicalOverlapDegreeFiveExponent8 20 52 70 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 102 142,
    tropicalOverlapDegreeFiveExponent8 0 6 65 112 130,
    tropicalOverlapDegreeFiveExponent8 0 6 76 89 142,
    tropicalOverlapDegreeFiveExponent8 0 17 39 89 142,
    tropicalOverlapDegreeFiveExponent8 0 17 49 89 130,
    tropicalOverlapDegreeFiveExponent8 0 26 49 76 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 69. -/
theorem tropicalOverlapSourceIExponent8_replay_shard69
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard69 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard69 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard69 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 69. -/
theorem tropicalOverlapSourceJExponent8_replay_shard69
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard69 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard69 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard69 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard69
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard69 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard69 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard69 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard69
    (i : Fin 5) :
    tropicalOverlapRelation8Shard69 i =
      tropicalOverlapSourceCombination8Shard69 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard69,
      tropicalOverlapSourceCombination8Shard69,
      tropicalOverlapProvenance8Shard69,
      tropicalOverlapSourceIExponent8Shard69,
      tropicalOverlapSourceJExponent8Shard69, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 69. -/
theorem tropicalOverlapRelation8_provenance_shard69 (i : Fin 5) :
    tropicalOverlapRelation8Shard69 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard69 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard69]
  unfold tropicalOverlapSourceCombination8Shard69
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard69,
    tropicalOverlapSourceJExponent8_replay_shard69]

end

end MonochromaticQuantumGraphs.N8D3
