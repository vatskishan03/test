import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 340--344. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 68. -/
def tropicalOverlapProvenance8Shard68 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 182, coordinateB := 89, sourceJ := 189, coordinateA := 88 },
  { epsilon := -1, sourceI := 182, coordinateB := 90, sourceJ := 197, coordinateA := 88 },
  { epsilon := -1, sourceI := 183, coordinateB := 89, sourceJ := 191, coordinateA := 88 },
  { epsilon := -1, sourceI := 183, coordinateB := 90, sourceJ := 199, coordinateA := 88 },
  { epsilon := -1, sourceI := 184, coordinateB := 6, sourceJ := 185, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 68. -/
def tropicalOverlapRelation8Shard68 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 112 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 112 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 105 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 115 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 49 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 49 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 49 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 49 70 120) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard68 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 89 99 142,
    tropicalOverlapDegreeFiveExponent8 6 65 89 109 130,
    tropicalOverlapDegreeFiveExponent8 6 76 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 39 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 49 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 49 76 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 90 99 142,
    tropicalOverlapDegreeFiveExponent8 6 65 90 109 130,
    tropicalOverlapDegreeFiveExponent8 6 76 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 39 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 49 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 49 76 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 89 99 142,
    tropicalOverlapDegreeFiveExponent8 7 65 89 109 130,
    tropicalOverlapDegreeFiveExponent8 7 76 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 42 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 52 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 52 76 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 90 99 142,
    tropicalOverlapDegreeFiveExponent8 7 65 90 109 130,
    tropicalOverlapDegreeFiveExponent8 7 76 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 42 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 52 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 52 76 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 102 142,
    tropicalOverlapDegreeFiveExponent8 0 6 59 112 130,
    tropicalOverlapDegreeFiveExponent8 0 6 70 89 142,
    tropicalOverlapDegreeFiveExponent8 6 9 39 89 142,
    tropicalOverlapDegreeFiveExponent8 6 9 49 89 130,
    tropicalOverlapDegreeFiveExponent8 6 20 49 70 120
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard68 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 88 102 142,
    tropicalOverlapDegreeFiveExponent8 6 65 88 112 130,
    tropicalOverlapDegreeFiveExponent8 6 76 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 39 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 49 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 49 76 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 88 105 142,
    tropicalOverlapDegreeFiveExponent8 6 65 88 115 130,
    tropicalOverlapDegreeFiveExponent8 6 76 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 39 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 49 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 49 76 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 88 102 142,
    tropicalOverlapDegreeFiveExponent8 7 65 88 112 130,
    tropicalOverlapDegreeFiveExponent8 7 76 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 42 88 89 142,
    tropicalOverlapDegreeFiveExponent8 17 52 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 52 76 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 88 105 142,
    tropicalOverlapDegreeFiveExponent8 7 65 88 115 130,
    tropicalOverlapDegreeFiveExponent8 7 76 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 42 88 90 142,
    tropicalOverlapDegreeFiveExponent8 17 52 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 52 76 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 102 142,
    tropicalOverlapDegreeFiveExponent8 0 6 59 112 130,
    tropicalOverlapDegreeFiveExponent8 0 6 70 89 142,
    tropicalOverlapDegreeFiveExponent8 0 15 39 89 142,
    tropicalOverlapDegreeFiveExponent8 0 15 49 89 130,
    tropicalOverlapDegreeFiveExponent8 0 26 49 70 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 68. -/
theorem tropicalOverlapSourceIExponent8_replay_shard68
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard68 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard68 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard68 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 68. -/
theorem tropicalOverlapSourceJExponent8_replay_shard68
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard68 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard68 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard68 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard68
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard68 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard68 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard68 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard68
    (i : Fin 5) :
    tropicalOverlapRelation8Shard68 i =
      tropicalOverlapSourceCombination8Shard68 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard68,
      tropicalOverlapSourceCombination8Shard68,
      tropicalOverlapProvenance8Shard68,
      tropicalOverlapSourceIExponent8Shard68,
      tropicalOverlapSourceJExponent8Shard68, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 68. -/
theorem tropicalOverlapRelation8_provenance_shard68 (i : Fin 5) :
    tropicalOverlapRelation8Shard68 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard68 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard68]
  unfold tropicalOverlapSourceCombination8Shard68
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard68,
    tropicalOverlapSourceJExponent8_replay_shard68]

end

end MonochromaticQuantumGraphs.N8D3
