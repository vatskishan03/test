import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 275--279. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 55. -/
def tropicalOverlapProvenance8Shard55 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 132, coordinateB := 142, sourceJ := 192, coordinateA := 139 },
  { epsilon := 1, sourceI := 133, coordinateB := 142, sourceJ := 193, coordinateA := 139 },
  { epsilon := -1, sourceI := 136, coordinateB := 6, sourceJ := 137, coordinateA := 0 },
  { epsilon := -1, sourceI := 136, coordinateB := 1, sourceJ := 138, coordinateA := 0 },
  { epsilon := -1, sourceI := 136, coordinateB := 7, sourceJ := 139, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 55. -/
def tropicalOverlapRelation8Shard55 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 114 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 115 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 90 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 90 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 123 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 114 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 115 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 90 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 90 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 123 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 39 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 76 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 76 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 42 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 90 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 76 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 39 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 90 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 76 123) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard55 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 105 139 142,
    tropicalOverlapDegreeFiveExponent8 0 59 114 130 142,
    tropicalOverlapDegreeFiveExponent8 0 70 90 139 142,
    tropicalOverlapDegreeFiveExponent8 9 39 90 139 142,
    tropicalOverlapDegreeFiveExponent8 9 48 90 130 142,
    tropicalOverlapDegreeFiveExponent8 20 48 70 123 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 105 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 114 130 142,
    tropicalOverlapDegreeFiveExponent8 6 70 90 139 142,
    tropicalOverlapDegreeFiveExponent8 15 39 90 139 142,
    tropicalOverlapDegreeFiveExponent8 15 48 90 130 142,
    tropicalOverlapDegreeFiveExponent8 26 48 70 123 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 105 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 114 130,
    tropicalOverlapDegreeFiveExponent8 0 6 76 90 139,
    tropicalOverlapDegreeFiveExponent8 6 11 39 90 139,
    tropicalOverlapDegreeFiveExponent8 6 11 48 90 130,
    tropicalOverlapDegreeFiveExponent8 6 20 48 76 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 105 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 114 130,
    tropicalOverlapDegreeFiveExponent8 0 1 76 90 139,
    tropicalOverlapDegreeFiveExponent8 1 11 39 90 139,
    tropicalOverlapDegreeFiveExponent8 1 11 48 90 130,
    tropicalOverlapDegreeFiveExponent8 1 20 48 76 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 105 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 114 130,
    tropicalOverlapDegreeFiveExponent8 0 7 76 90 139,
    tropicalOverlapDegreeFiveExponent8 7 11 39 90 139,
    tropicalOverlapDegreeFiveExponent8 7 11 48 90 130,
    tropicalOverlapDegreeFiveExponent8 7 20 48 76 123
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard55 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 105 139 142,
    tropicalOverlapDegreeFiveExponent8 0 59 115 130 139,
    tropicalOverlapDegreeFiveExponent8 0 70 90 139 142,
    tropicalOverlapDegreeFiveExponent8 9 39 90 139 142,
    tropicalOverlapDegreeFiveExponent8 9 49 90 130 139,
    tropicalOverlapDegreeFiveExponent8 20 49 70 123 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 105 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 115 130 139,
    tropicalOverlapDegreeFiveExponent8 6 70 90 139 142,
    tropicalOverlapDegreeFiveExponent8 15 39 90 139 142,
    tropicalOverlapDegreeFiveExponent8 15 49 90 130 139,
    tropicalOverlapDegreeFiveExponent8 26 49 70 123 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 105 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 114 130,
    tropicalOverlapDegreeFiveExponent8 0 6 76 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 39 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 48 90 130,
    tropicalOverlapDegreeFiveExponent8 0 26 48 76 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 105 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 114 130,
    tropicalOverlapDegreeFiveExponent8 0 1 76 90 139,
    tropicalOverlapDegreeFiveExponent8 0 11 42 90 139,
    tropicalOverlapDegreeFiveExponent8 0 11 51 90 130,
    tropicalOverlapDegreeFiveExponent8 0 20 51 76 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 105 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 114 130,
    tropicalOverlapDegreeFiveExponent8 0 7 76 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 42 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 51 90 130,
    tropicalOverlapDegreeFiveExponent8 0 26 51 76 123
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 55. -/
theorem tropicalOverlapSourceIExponent8_replay_shard55
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard55 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard55 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard55 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 55. -/
theorem tropicalOverlapSourceJExponent8_replay_shard55
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard55 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard55 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard55 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard55
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard55 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard55 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard55 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard55
    (i : Fin 5) :
    tropicalOverlapRelation8Shard55 i =
      tropicalOverlapSourceCombination8Shard55 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard55,
      tropicalOverlapSourceCombination8Shard55,
      tropicalOverlapProvenance8Shard55,
      tropicalOverlapSourceIExponent8Shard55,
      tropicalOverlapSourceJExponent8Shard55, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 55. -/
theorem tropicalOverlapRelation8_provenance_shard55 (i : Fin 5) :
    tropicalOverlapRelation8Shard55 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard55 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard55]
  unfold tropicalOverlapSourceCombination8Shard55
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard55,
    tropicalOverlapSourceJExponent8_replay_shard55]

end

end MonochromaticQuantumGraphs.N8D3
