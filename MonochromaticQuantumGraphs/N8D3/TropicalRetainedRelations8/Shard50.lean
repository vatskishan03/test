import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 250--254. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 50. -/
def tropicalOverlapProvenance8Shard50 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 121, coordinateB := 89, sourceJ := 127, coordinateA := 88 },
  { epsilon := -1, sourceI := 121, coordinateB := 90, sourceJ := 135, coordinateA := 88 },
  { epsilon := -1, sourceI := 122, coordinateB := 7, sourceJ := 123, coordinateA := 6 },
  { epsilon := 1, sourceI := 122, coordinateB := 142, sourceJ := 182, coordinateA := 139 },
  { epsilon := -1, sourceI := 122, coordinateB := 89, sourceJ := 129, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 50. -/
def tropicalOverlapRelation8Shard50 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 111 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 42 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 51 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 76 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 39 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 48 88 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 76 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 108 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 109 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 88 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 88 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 117 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 117 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 111 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 76 89 117) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard50 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 89 99 139,
    tropicalOverlapDegreeFiveExponent8 7 59 89 108 130,
    tropicalOverlapDegreeFiveExponent8 7 70 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 42 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 51 70 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 90 99 139,
    tropicalOverlapDegreeFiveExponent8 7 59 90 108 130,
    tropicalOverlapDegreeFiveExponent8 7 70 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 42 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 51 70 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 65 99 139,
    tropicalOverlapDegreeFiveExponent8 6 7 65 108 130,
    tropicalOverlapDegreeFiveExponent8 6 7 76 88 139,
    tropicalOverlapDegreeFiveExponent8 7 17 39 88 139,
    tropicalOverlapDegreeFiveExponent8 7 17 48 88 130,
    tropicalOverlapDegreeFiveExponent8 7 26 48 76 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 99 139 142,
    tropicalOverlapDegreeFiveExponent8 6 65 108 130 142,
    tropicalOverlapDegreeFiveExponent8 6 76 88 139 142,
    tropicalOverlapDegreeFiveExponent8 17 39 88 139 142,
    tropicalOverlapDegreeFiveExponent8 17 48 88 130 142,
    tropicalOverlapDegreeFiveExponent8 26 48 76 117 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 89 99 139,
    tropicalOverlapDegreeFiveExponent8 6 65 89 108 130,
    tropicalOverlapDegreeFiveExponent8 6 76 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 39 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 48 76 89 117
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard50 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 88 102 139,
    tropicalOverlapDegreeFiveExponent8 7 59 88 111 130,
    tropicalOverlapDegreeFiveExponent8 7 70 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 42 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 51 70 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 88 105 139,
    tropicalOverlapDegreeFiveExponent8 7 59 88 114 130,
    tropicalOverlapDegreeFiveExponent8 7 70 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 42 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 51 70 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 65 99 139,
    tropicalOverlapDegreeFiveExponent8 6 7 65 108 130,
    tropicalOverlapDegreeFiveExponent8 6 7 76 88 139,
    tropicalOverlapDegreeFiveExponent8 6 17 42 88 139,
    tropicalOverlapDegreeFiveExponent8 6 17 51 88 130,
    tropicalOverlapDegreeFiveExponent8 6 26 51 76 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 99 139 142,
    tropicalOverlapDegreeFiveExponent8 6 65 109 130 139,
    tropicalOverlapDegreeFiveExponent8 6 76 88 139 142,
    tropicalOverlapDegreeFiveExponent8 17 39 88 139 142,
    tropicalOverlapDegreeFiveExponent8 17 49 88 130 139,
    tropicalOverlapDegreeFiveExponent8 26 49 76 117 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 88 102 139,
    tropicalOverlapDegreeFiveExponent8 6 65 88 111 130,
    tropicalOverlapDegreeFiveExponent8 6 76 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 39 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 48 76 88 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 50. -/
theorem tropicalOverlapSourceIExponent8_replay_shard50
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard50 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard50 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard50 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 50. -/
theorem tropicalOverlapSourceJExponent8_replay_shard50
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard50 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard50 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard50 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard50
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard50 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard50 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard50 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard50
    (i : Fin 5) :
    tropicalOverlapRelation8Shard50 i =
      tropicalOverlapSourceCombination8Shard50 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard50,
      tropicalOverlapSourceCombination8Shard50,
      tropicalOverlapProvenance8Shard50,
      tropicalOverlapSourceIExponent8Shard50,
      tropicalOverlapSourceJExponent8Shard50, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 50. -/
theorem tropicalOverlapRelation8_provenance_shard50 (i : Fin 5) :
    tropicalOverlapRelation8Shard50 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard50 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard50]
  unfold tropicalOverlapSourceCombination8Shard50
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard50,
    tropicalOverlapSourceJExponent8_replay_shard50]

end

end MonochromaticQuantumGraphs.N8D3
