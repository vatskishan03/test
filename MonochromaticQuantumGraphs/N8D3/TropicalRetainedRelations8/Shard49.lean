import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 245--249. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 49. -/
def tropicalOverlapProvenance8Shard49 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 117, coordinateB := 142, sourceJ := 177, coordinateA := 139 },
  { epsilon := -1, sourceI := 120, coordinateB := 7, sourceJ := 121, coordinateA := 6 },
  { epsilon := 1, sourceI := 120, coordinateB := 142, sourceJ := 180, coordinateA := 139 },
  { epsilon := -1, sourceI := 120, coordinateB := 89, sourceJ := 125, coordinateA := 88 },
  { epsilon := -1, sourceI := 120, coordinateB := 90, sourceJ := 133, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 49. -/
def tropicalOverlapRelation8Shard49 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 114 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 115 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 90 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 90 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 123 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 42 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 51 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 70 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 39 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 48 88 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 70 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 108 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 109 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 88 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 88 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 117 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 117 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 102 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 111 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 99 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 108 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 90 117) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard49 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 104 139 142,
    tropicalOverlapDegreeFiveExponent8 6 65 114 127 142,
    tropicalOverlapDegreeFiveExponent8 6 75 90 139 142,
    tropicalOverlapDegreeFiveExponent8 17 38 90 139 142,
    tropicalOverlapDegreeFiveExponent8 17 48 90 127 142,
    tropicalOverlapDegreeFiveExponent8 26 48 75 123 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 59 99 139,
    tropicalOverlapDegreeFiveExponent8 6 7 59 108 130,
    tropicalOverlapDegreeFiveExponent8 6 7 70 88 139,
    tropicalOverlapDegreeFiveExponent8 7 15 39 88 139,
    tropicalOverlapDegreeFiveExponent8 7 15 48 88 130,
    tropicalOverlapDegreeFiveExponent8 7 26 48 70 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 99 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 108 130 142,
    tropicalOverlapDegreeFiveExponent8 6 70 88 139 142,
    tropicalOverlapDegreeFiveExponent8 15 39 88 139 142,
    tropicalOverlapDegreeFiveExponent8 15 48 88 130 142,
    tropicalOverlapDegreeFiveExponent8 26 48 70 117 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 89 99 139,
    tropicalOverlapDegreeFiveExponent8 6 59 89 108 130,
    tropicalOverlapDegreeFiveExponent8 6 70 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 39 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 48 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 48 70 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 90 99 139,
    tropicalOverlapDegreeFiveExponent8 6 59 90 108 130,
    tropicalOverlapDegreeFiveExponent8 6 70 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 39 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 48 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 48 70 90 117
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard49 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 104 139 142,
    tropicalOverlapDegreeFiveExponent8 6 65 115 127 139,
    tropicalOverlapDegreeFiveExponent8 6 75 90 139 142,
    tropicalOverlapDegreeFiveExponent8 17 38 90 139 142,
    tropicalOverlapDegreeFiveExponent8 17 49 90 127 139,
    tropicalOverlapDegreeFiveExponent8 26 49 75 123 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 59 99 139,
    tropicalOverlapDegreeFiveExponent8 6 7 59 108 130,
    tropicalOverlapDegreeFiveExponent8 6 7 70 88 139,
    tropicalOverlapDegreeFiveExponent8 6 15 42 88 139,
    tropicalOverlapDegreeFiveExponent8 6 15 51 88 130,
    tropicalOverlapDegreeFiveExponent8 6 26 51 70 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 99 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 109 130 139,
    tropicalOverlapDegreeFiveExponent8 6 70 88 139 142,
    tropicalOverlapDegreeFiveExponent8 15 39 88 139 142,
    tropicalOverlapDegreeFiveExponent8 15 49 88 130 139,
    tropicalOverlapDegreeFiveExponent8 26 49 70 117 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 88 102 139,
    tropicalOverlapDegreeFiveExponent8 6 59 88 111 130,
    tropicalOverlapDegreeFiveExponent8 6 70 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 39 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 48 88 89 130,
    tropicalOverlapDegreeFiveExponent8 26 48 70 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 88 105 139,
    tropicalOverlapDegreeFiveExponent8 6 59 88 114 130,
    tropicalOverlapDegreeFiveExponent8 6 70 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 39 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 48 88 90 130,
    tropicalOverlapDegreeFiveExponent8 26 48 70 88 123
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 49. -/
theorem tropicalOverlapSourceIExponent8_replay_shard49
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard49 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard49 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard49 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 49. -/
theorem tropicalOverlapSourceJExponent8_replay_shard49
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard49 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard49 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard49 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard49
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard49 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard49 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard49 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard49
    (i : Fin 5) :
    tropicalOverlapRelation8Shard49 i =
      tropicalOverlapSourceCombination8Shard49 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard49,
      tropicalOverlapSourceCombination8Shard49,
      tropicalOverlapProvenance8Shard49,
      tropicalOverlapSourceIExponent8Shard49,
      tropicalOverlapSourceJExponent8Shard49, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 49. -/
theorem tropicalOverlapRelation8_provenance_shard49 (i : Fin 5) :
    tropicalOverlapRelation8Shard49 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard49 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard49]
  unfold tropicalOverlapSourceCombination8Shard49
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard49,
    tropicalOverlapSourceJExponent8_replay_shard49]

end

end MonochromaticQuantumGraphs.N8D3
