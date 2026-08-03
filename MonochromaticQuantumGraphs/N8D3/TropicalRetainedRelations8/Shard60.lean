import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 300--304. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 60. -/
def tropicalOverlapProvenance8Shard60 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 148, coordinateB := 90, sourceJ := 156, coordinateA := 89 },
  { epsilon := -1, sourceI := 150, coordinateB := 90, sourceJ := 158, coordinateA := 89 },
  { epsilon := -1, sourceI := 152, coordinateB := 6, sourceJ := 153, coordinateA := 0 },
  { epsilon := -1, sourceI := 152, coordinateB := 1, sourceJ := 154, coordinateA := 0 },
  { epsilon := -1, sourceI := 152, coordinateB := 7, sourceJ := 155, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 60. -/
def tropicalOverlapRelation8Shard60 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 103 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 111 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 77 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 77 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 103 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 111 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 40 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 71 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 71 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 71 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 71 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 71 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 71 123) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard60 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 90 103 139,
    tropicalOverlapDegreeFiveExponent8 0 65 90 111 133,
    tropicalOverlapDegreeFiveExponent8 0 77 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 40 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 48 89 90 133,
    tropicalOverlapDegreeFiveExponent8 20 48 77 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 90 103 139,
    tropicalOverlapDegreeFiveExponent8 1 65 90 111 133,
    tropicalOverlapDegreeFiveExponent8 1 77 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 43 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 90 133,
    tropicalOverlapDegreeFiveExponent8 20 51 77 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 106 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 114 133,
    tropicalOverlapDegreeFiveExponent8 0 6 71 90 139,
    tropicalOverlapDegreeFiveExponent8 6 9 40 90 139,
    tropicalOverlapDegreeFiveExponent8 6 9 48 90 133,
    tropicalOverlapDegreeFiveExponent8 6 20 48 71 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 106 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 114 133,
    tropicalOverlapDegreeFiveExponent8 0 1 71 90 139,
    tropicalOverlapDegreeFiveExponent8 1 9 40 90 139,
    tropicalOverlapDegreeFiveExponent8 1 9 48 90 133,
    tropicalOverlapDegreeFiveExponent8 1 20 48 71 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 106 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 114 133,
    tropicalOverlapDegreeFiveExponent8 0 7 71 90 139,
    tropicalOverlapDegreeFiveExponent8 7 9 40 90 139,
    tropicalOverlapDegreeFiveExponent8 7 9 48 90 133,
    tropicalOverlapDegreeFiveExponent8 7 20 48 71 123
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard60 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 89 106 139,
    tropicalOverlapDegreeFiveExponent8 0 65 89 114 133,
    tropicalOverlapDegreeFiveExponent8 0 77 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 40 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 48 89 90 133,
    tropicalOverlapDegreeFiveExponent8 20 48 77 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 89 106 139,
    tropicalOverlapDegreeFiveExponent8 1 65 89 114 133,
    tropicalOverlapDegreeFiveExponent8 1 77 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 43 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 90 133,
    tropicalOverlapDegreeFiveExponent8 20 51 77 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 106 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 114 133,
    tropicalOverlapDegreeFiveExponent8 0 6 71 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 40 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 48 90 133,
    tropicalOverlapDegreeFiveExponent8 0 26 48 71 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 106 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 114 133,
    tropicalOverlapDegreeFiveExponent8 0 1 71 90 139,
    tropicalOverlapDegreeFiveExponent8 0 9 43 90 139,
    tropicalOverlapDegreeFiveExponent8 0 9 51 90 133,
    tropicalOverlapDegreeFiveExponent8 0 20 51 71 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 106 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 114 133,
    tropicalOverlapDegreeFiveExponent8 0 7 71 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 43 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 51 90 133,
    tropicalOverlapDegreeFiveExponent8 0 26 51 71 123
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 60. -/
theorem tropicalOverlapSourceIExponent8_replay_shard60
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard60 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard60 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard60 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 60. -/
theorem tropicalOverlapSourceJExponent8_replay_shard60
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard60 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard60 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard60 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard60
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard60 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard60 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard60 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard60
    (i : Fin 5) :
    tropicalOverlapRelation8Shard60 i =
      tropicalOverlapSourceCombination8Shard60 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard60,
      tropicalOverlapSourceCombination8Shard60,
      tropicalOverlapProvenance8Shard60,
      tropicalOverlapSourceIExponent8Shard60,
      tropicalOverlapSourceJExponent8Shard60, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 60. -/
theorem tropicalOverlapRelation8_provenance_shard60 (i : Fin 5) :
    tropicalOverlapRelation8Shard60 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard60 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard60]
  unfold tropicalOverlapSourceCombination8Shard60
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard60,
    tropicalOverlapSourceJExponent8_replay_shard60]

end

end MonochromaticQuantumGraphs.N8D3
