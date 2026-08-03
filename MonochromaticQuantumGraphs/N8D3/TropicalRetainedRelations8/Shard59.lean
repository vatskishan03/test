import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 295--299. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 59. -/
def tropicalOverlapProvenance8Shard59 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 144, coordinateB := 90, sourceJ := 152, coordinateA := 89 },
  { epsilon := -1, sourceI := 146, coordinateB := 90, sourceJ := 154, coordinateA := 89 },
  { epsilon := -1, sourceI := 148, coordinateB := 6, sourceJ := 149, coordinateA := 0 },
  { epsilon := -1, sourceI := 148, coordinateB := 1, sourceJ := 150, coordinateA := 0 },
  { epsilon := -1, sourceI := 148, coordinateB := 7, sourceJ := 151, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 59. -/
def tropicalOverlapRelation8Shard59 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 103 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 111 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 71 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 71 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 103 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 111 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 40 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 77 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 77 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 77 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 77 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 77 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 77 120) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard59 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 90 103 139,
    tropicalOverlapDegreeFiveExponent8 0 59 90 111 133,
    tropicalOverlapDegreeFiveExponent8 0 71 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 40 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 48 89 90 133,
    tropicalOverlapDegreeFiveExponent8 20 48 71 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 90 103 139,
    tropicalOverlapDegreeFiveExponent8 1 59 90 111 133,
    tropicalOverlapDegreeFiveExponent8 1 71 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 43 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 90 133,
    tropicalOverlapDegreeFiveExponent8 20 51 71 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 103 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 111 133,
    tropicalOverlapDegreeFiveExponent8 0 6 77 89 139,
    tropicalOverlapDegreeFiveExponent8 6 11 40 89 139,
    tropicalOverlapDegreeFiveExponent8 6 11 48 89 133,
    tropicalOverlapDegreeFiveExponent8 6 20 48 77 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 103 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 111 133,
    tropicalOverlapDegreeFiveExponent8 0 1 77 89 139,
    tropicalOverlapDegreeFiveExponent8 1 11 40 89 139,
    tropicalOverlapDegreeFiveExponent8 1 11 48 89 133,
    tropicalOverlapDegreeFiveExponent8 1 20 48 77 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 103 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 111 133,
    tropicalOverlapDegreeFiveExponent8 0 7 77 89 139,
    tropicalOverlapDegreeFiveExponent8 7 11 40 89 139,
    tropicalOverlapDegreeFiveExponent8 7 11 48 89 133,
    tropicalOverlapDegreeFiveExponent8 7 20 48 77 120
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard59 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 89 106 139,
    tropicalOverlapDegreeFiveExponent8 0 59 89 114 133,
    tropicalOverlapDegreeFiveExponent8 0 71 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 40 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 48 89 90 133,
    tropicalOverlapDegreeFiveExponent8 20 48 71 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 89 106 139,
    tropicalOverlapDegreeFiveExponent8 1 59 89 114 133,
    tropicalOverlapDegreeFiveExponent8 1 71 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 43 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 90 133,
    tropicalOverlapDegreeFiveExponent8 20 51 71 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 103 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 111 133,
    tropicalOverlapDegreeFiveExponent8 0 6 77 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 40 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 48 89 133,
    tropicalOverlapDegreeFiveExponent8 0 26 48 77 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 103 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 111 133,
    tropicalOverlapDegreeFiveExponent8 0 1 77 89 139,
    tropicalOverlapDegreeFiveExponent8 0 11 43 89 139,
    tropicalOverlapDegreeFiveExponent8 0 11 51 89 133,
    tropicalOverlapDegreeFiveExponent8 0 20 51 77 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 103 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 111 133,
    tropicalOverlapDegreeFiveExponent8 0 7 77 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 43 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 51 89 133,
    tropicalOverlapDegreeFiveExponent8 0 26 51 77 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 59. -/
theorem tropicalOverlapSourceIExponent8_replay_shard59
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard59 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard59 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard59 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 59. -/
theorem tropicalOverlapSourceJExponent8_replay_shard59
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard59 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard59 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard59 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard59
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard59 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard59 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard59 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard59
    (i : Fin 5) :
    tropicalOverlapRelation8Shard59 i =
      tropicalOverlapSourceCombination8Shard59 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard59,
      tropicalOverlapSourceCombination8Shard59,
      tropicalOverlapProvenance8Shard59,
      tropicalOverlapSourceIExponent8Shard59,
      tropicalOverlapSourceJExponent8Shard59, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 59. -/
theorem tropicalOverlapRelation8_provenance_shard59 (i : Fin 5) :
    tropicalOverlapRelation8Shard59 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard59 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard59]
  unfold tropicalOverlapSourceCombination8Shard59
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard59,
    tropicalOverlapSourceJExponent8_replay_shard59]

end

end MonochromaticQuantumGraphs.N8D3
