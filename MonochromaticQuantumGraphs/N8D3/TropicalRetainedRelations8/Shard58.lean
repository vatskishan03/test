import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 290--294. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 58. -/
def tropicalOverlapProvenance8Shard58 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 143, coordinateB := 89, sourceJ := 151, coordinateA := 88 },
  { epsilon := -1, sourceI := 143, coordinateB := 90, sourceJ := 159, coordinateA := 88 },
  { epsilon := -1, sourceI := 144, coordinateB := 6, sourceJ := 145, coordinateA := 0 },
  { epsilon := -1, sourceI := 144, coordinateB := 1, sourceJ := 146, coordinateA := 0 },
  { epsilon := -1, sourceI := 144, coordinateB := 7, sourceJ := 147, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 58. -/
def tropicalOverlapRelation8Shard58 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 111 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 40 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 71 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 71 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 71 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 71 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 71 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 71 120) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard58 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 89 100 139,
    tropicalOverlapDegreeFiveExponent8 7 65 89 108 133,
    tropicalOverlapDegreeFiveExponent8 7 77 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 43 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 89 133,
    tropicalOverlapDegreeFiveExponent8 26 51 77 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 90 100 139,
    tropicalOverlapDegreeFiveExponent8 7 65 90 108 133,
    tropicalOverlapDegreeFiveExponent8 7 77 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 43 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 90 133,
    tropicalOverlapDegreeFiveExponent8 26 51 77 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 103 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 111 133,
    tropicalOverlapDegreeFiveExponent8 0 6 71 89 139,
    tropicalOverlapDegreeFiveExponent8 6 9 40 89 139,
    tropicalOverlapDegreeFiveExponent8 6 9 48 89 133,
    tropicalOverlapDegreeFiveExponent8 6 20 48 71 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 103 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 111 133,
    tropicalOverlapDegreeFiveExponent8 0 1 71 89 139,
    tropicalOverlapDegreeFiveExponent8 1 9 40 89 139,
    tropicalOverlapDegreeFiveExponent8 1 9 48 89 133,
    tropicalOverlapDegreeFiveExponent8 1 20 48 71 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 103 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 111 133,
    tropicalOverlapDegreeFiveExponent8 0 7 71 89 139,
    tropicalOverlapDegreeFiveExponent8 7 9 40 89 139,
    tropicalOverlapDegreeFiveExponent8 7 9 48 89 133,
    tropicalOverlapDegreeFiveExponent8 7 20 48 71 120
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard58 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 88 103 139,
    tropicalOverlapDegreeFiveExponent8 7 65 88 111 133,
    tropicalOverlapDegreeFiveExponent8 7 77 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 43 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 89 133,
    tropicalOverlapDegreeFiveExponent8 26 51 77 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 88 106 139,
    tropicalOverlapDegreeFiveExponent8 7 65 88 114 133,
    tropicalOverlapDegreeFiveExponent8 7 77 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 43 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 90 133,
    tropicalOverlapDegreeFiveExponent8 26 51 77 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 103 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 111 133,
    tropicalOverlapDegreeFiveExponent8 0 6 71 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 40 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 48 89 133,
    tropicalOverlapDegreeFiveExponent8 0 26 48 71 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 103 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 111 133,
    tropicalOverlapDegreeFiveExponent8 0 1 71 89 139,
    tropicalOverlapDegreeFiveExponent8 0 9 43 89 139,
    tropicalOverlapDegreeFiveExponent8 0 9 51 89 133,
    tropicalOverlapDegreeFiveExponent8 0 20 51 71 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 103 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 111 133,
    tropicalOverlapDegreeFiveExponent8 0 7 71 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 43 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 51 89 133,
    tropicalOverlapDegreeFiveExponent8 0 26 51 71 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 58. -/
theorem tropicalOverlapSourceIExponent8_replay_shard58
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard58 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard58 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard58 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 58. -/
theorem tropicalOverlapSourceJExponent8_replay_shard58
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard58 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard58 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard58 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard58
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard58 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard58 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard58 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard58
    (i : Fin 5) :
    tropicalOverlapRelation8Shard58 i =
      tropicalOverlapSourceCombination8Shard58 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard58,
      tropicalOverlapSourceCombination8Shard58,
      tropicalOverlapProvenance8Shard58,
      tropicalOverlapSourceIExponent8Shard58,
      tropicalOverlapSourceJExponent8Shard58, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 58. -/
theorem tropicalOverlapRelation8_provenance_shard58 (i : Fin 5) :
    tropicalOverlapRelation8Shard58 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard58 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard58]
  unfold tropicalOverlapSourceCombination8Shard58
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard58,
    tropicalOverlapSourceJExponent8_replay_shard58]

end

end MonochromaticQuantumGraphs.N8D3
