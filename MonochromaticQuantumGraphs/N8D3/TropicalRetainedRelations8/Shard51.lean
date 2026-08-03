import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 255--259. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 51. -/
def tropicalOverlapProvenance8Shard51 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 122, coordinateB := 90, sourceJ := 137, coordinateA := 88 },
  { epsilon := -1, sourceI := 123, coordinateB := 89, sourceJ := 131, coordinateA := 88 },
  { epsilon := -1, sourceI := 123, coordinateB := 90, sourceJ := 139, coordinateA := 88 },
  { epsilon := -1, sourceI := 124, coordinateB := 6, sourceJ := 125, coordinateA := 0 },
  { epsilon := -1, sourceI := 124, coordinateB := 1, sourceJ := 126, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 51. -/
def tropicalOverlapRelation8Shard51 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 111 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 70 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 70 120) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard51 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 90 99 139,
    tropicalOverlapDegreeFiveExponent8 6 65 90 108 130,
    tropicalOverlapDegreeFiveExponent8 6 76 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 39 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 48 76 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 89 99 139,
    tropicalOverlapDegreeFiveExponent8 7 65 89 108 130,
    tropicalOverlapDegreeFiveExponent8 7 76 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 42 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 51 76 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 90 99 139,
    tropicalOverlapDegreeFiveExponent8 7 65 90 108 130,
    tropicalOverlapDegreeFiveExponent8 7 76 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 42 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 51 76 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 102 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 111 130,
    tropicalOverlapDegreeFiveExponent8 0 6 70 89 139,
    tropicalOverlapDegreeFiveExponent8 6 9 39 89 139,
    tropicalOverlapDegreeFiveExponent8 6 9 48 89 130,
    tropicalOverlapDegreeFiveExponent8 6 20 48 70 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 102 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 111 130,
    tropicalOverlapDegreeFiveExponent8 0 1 70 89 139,
    tropicalOverlapDegreeFiveExponent8 1 9 39 89 139,
    tropicalOverlapDegreeFiveExponent8 1 9 48 89 130,
    tropicalOverlapDegreeFiveExponent8 1 20 48 70 120
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard51 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 88 105 139,
    tropicalOverlapDegreeFiveExponent8 6 65 88 114 130,
    tropicalOverlapDegreeFiveExponent8 6 76 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 39 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 48 76 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 88 102 139,
    tropicalOverlapDegreeFiveExponent8 7 65 88 111 130,
    tropicalOverlapDegreeFiveExponent8 7 76 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 42 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 51 76 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 88 105 139,
    tropicalOverlapDegreeFiveExponent8 7 65 88 114 130,
    tropicalOverlapDegreeFiveExponent8 7 76 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 42 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 51 76 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 102 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 111 130,
    tropicalOverlapDegreeFiveExponent8 0 6 70 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 39 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 48 89 130,
    tropicalOverlapDegreeFiveExponent8 0 26 48 70 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 102 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 111 130,
    tropicalOverlapDegreeFiveExponent8 0 1 70 89 139,
    tropicalOverlapDegreeFiveExponent8 0 9 42 89 139,
    tropicalOverlapDegreeFiveExponent8 0 9 51 89 130,
    tropicalOverlapDegreeFiveExponent8 0 20 51 70 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 51. -/
theorem tropicalOverlapSourceIExponent8_replay_shard51
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard51 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard51 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard51 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 51. -/
theorem tropicalOverlapSourceJExponent8_replay_shard51
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard51 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard51 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard51 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard51
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard51 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard51 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard51 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard51
    (i : Fin 5) :
    tropicalOverlapRelation8Shard51 i =
      tropicalOverlapSourceCombination8Shard51 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard51,
      tropicalOverlapSourceCombination8Shard51,
      tropicalOverlapProvenance8Shard51,
      tropicalOverlapSourceIExponent8Shard51,
      tropicalOverlapSourceJExponent8Shard51, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 51. -/
theorem tropicalOverlapRelation8_provenance_shard51 (i : Fin 5) :
    tropicalOverlapRelation8Shard51 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard51 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard51]
  unfold tropicalOverlapSourceCombination8Shard51
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard51,
    tropicalOverlapSourceJExponent8_replay_shard51]

end

end MonochromaticQuantumGraphs.N8D3
