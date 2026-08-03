import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 285--289. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 57. -/
def tropicalOverlapProvenance8Shard57 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 141, coordinateB := 89, sourceJ := 147, coordinateA := 88 },
  { epsilon := -1, sourceI := 141, coordinateB := 90, sourceJ := 155, coordinateA := 88 },
  { epsilon := -1, sourceI := 142, coordinateB := 7, sourceJ := 143, coordinateA := 6 },
  { epsilon := -1, sourceI := 142, coordinateB := 89, sourceJ := 149, coordinateA := 88 },
  { epsilon := -1, sourceI := 142, coordinateB := 90, sourceJ := 157, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 57. -/
def tropicalOverlapRelation8Shard57 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 111 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 43 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 51 88 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 77 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 40 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 48 88 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 77 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 103 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 111 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 100 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 77 90 117) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard57 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 89 100 139,
    tropicalOverlapDegreeFiveExponent8 7 59 89 108 133,
    tropicalOverlapDegreeFiveExponent8 7 71 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 43 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 89 133,
    tropicalOverlapDegreeFiveExponent8 26 51 71 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 90 100 139,
    tropicalOverlapDegreeFiveExponent8 7 59 90 108 133,
    tropicalOverlapDegreeFiveExponent8 7 71 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 43 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 90 133,
    tropicalOverlapDegreeFiveExponent8 26 51 71 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 65 100 139,
    tropicalOverlapDegreeFiveExponent8 6 7 65 108 133,
    tropicalOverlapDegreeFiveExponent8 6 7 77 88 139,
    tropicalOverlapDegreeFiveExponent8 7 17 40 88 139,
    tropicalOverlapDegreeFiveExponent8 7 17 48 88 133,
    tropicalOverlapDegreeFiveExponent8 7 26 48 77 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 89 100 139,
    tropicalOverlapDegreeFiveExponent8 6 65 89 108 133,
    tropicalOverlapDegreeFiveExponent8 6 77 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 40 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 89 133,
    tropicalOverlapDegreeFiveExponent8 26 48 77 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 90 100 139,
    tropicalOverlapDegreeFiveExponent8 6 65 90 108 133,
    tropicalOverlapDegreeFiveExponent8 6 77 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 40 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 90 133,
    tropicalOverlapDegreeFiveExponent8 26 48 77 90 117
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard57 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 88 103 139,
    tropicalOverlapDegreeFiveExponent8 7 59 88 111 133,
    tropicalOverlapDegreeFiveExponent8 7 71 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 43 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 89 133,
    tropicalOverlapDegreeFiveExponent8 26 51 71 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 88 106 139,
    tropicalOverlapDegreeFiveExponent8 7 59 88 114 133,
    tropicalOverlapDegreeFiveExponent8 7 71 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 43 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 90 133,
    tropicalOverlapDegreeFiveExponent8 26 51 71 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 65 100 139,
    tropicalOverlapDegreeFiveExponent8 6 7 65 108 133,
    tropicalOverlapDegreeFiveExponent8 6 7 77 88 139,
    tropicalOverlapDegreeFiveExponent8 6 17 43 88 139,
    tropicalOverlapDegreeFiveExponent8 6 17 51 88 133,
    tropicalOverlapDegreeFiveExponent8 6 26 51 77 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 88 103 139,
    tropicalOverlapDegreeFiveExponent8 6 65 88 111 133,
    tropicalOverlapDegreeFiveExponent8 6 77 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 40 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 89 133,
    tropicalOverlapDegreeFiveExponent8 26 48 77 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 88 106 139,
    tropicalOverlapDegreeFiveExponent8 6 65 88 114 133,
    tropicalOverlapDegreeFiveExponent8 6 77 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 40 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 90 133,
    tropicalOverlapDegreeFiveExponent8 26 48 77 88 123
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 57. -/
theorem tropicalOverlapSourceIExponent8_replay_shard57
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard57 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard57 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard57 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 57. -/
theorem tropicalOverlapSourceJExponent8_replay_shard57
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard57 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard57 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard57 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard57
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard57 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard57 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard57 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard57
    (i : Fin 5) :
    tropicalOverlapRelation8Shard57 i =
      tropicalOverlapSourceCombination8Shard57 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard57,
      tropicalOverlapSourceCombination8Shard57,
      tropicalOverlapProvenance8Shard57,
      tropicalOverlapSourceIExponent8Shard57,
      tropicalOverlapSourceJExponent8Shard57, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 57. -/
theorem tropicalOverlapRelation8_provenance_shard57 (i : Fin 5) :
    tropicalOverlapRelation8Shard57 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard57 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard57]
  unfold tropicalOverlapSourceCombination8Shard57
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard57,
    tropicalOverlapSourceJExponent8_replay_shard57]

end

end MonochromaticQuantumGraphs.N8D3
