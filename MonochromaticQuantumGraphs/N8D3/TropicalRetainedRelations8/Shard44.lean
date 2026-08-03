import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 220--224. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 44. -/
def tropicalOverlapProvenance8Shard44 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 103, coordinateB := 89, sourceJ := 111, coordinateA := 88 },
  { epsilon := -1, sourceI := 103, coordinateB := 90, sourceJ := 119, coordinateA := 88 },
  { epsilon := -1, sourceI := 104, coordinateB := 6, sourceJ := 105, coordinateA := 0 },
  { epsilon := -1, sourceI := 104, coordinateB := 1, sourceJ := 106, coordinateA := 0 },
  { epsilon := -1, sourceI := 104, coordinateB := 7, sourceJ := 107, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 44. -/
def tropicalOverlapRelation8Shard44 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 101 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 111 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 89 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 69 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 69 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 69 120) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard44 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 89 98 139,
    tropicalOverlapDegreeFiveExponent8 7 65 89 108 127,
    tropicalOverlapDegreeFiveExponent8 7 75 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 41 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 51 75 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 90 98 139,
    tropicalOverlapDegreeFiveExponent8 7 65 90 108 127,
    tropicalOverlapDegreeFiveExponent8 7 75 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 41 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 51 75 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 101 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 111 127,
    tropicalOverlapDegreeFiveExponent8 0 6 69 89 139,
    tropicalOverlapDegreeFiveExponent8 6 9 38 89 139,
    tropicalOverlapDegreeFiveExponent8 6 9 48 89 127,
    tropicalOverlapDegreeFiveExponent8 6 20 48 69 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 101 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 111 127,
    tropicalOverlapDegreeFiveExponent8 0 1 69 89 139,
    tropicalOverlapDegreeFiveExponent8 1 9 38 89 139,
    tropicalOverlapDegreeFiveExponent8 1 9 48 89 127,
    tropicalOverlapDegreeFiveExponent8 1 20 48 69 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 101 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 111 127,
    tropicalOverlapDegreeFiveExponent8 0 7 69 89 139,
    tropicalOverlapDegreeFiveExponent8 7 9 38 89 139,
    tropicalOverlapDegreeFiveExponent8 7 9 48 89 127,
    tropicalOverlapDegreeFiveExponent8 7 20 48 69 120
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard44 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 88 101 139,
    tropicalOverlapDegreeFiveExponent8 7 65 88 111 127,
    tropicalOverlapDegreeFiveExponent8 7 75 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 41 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 51 75 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 88 104 139,
    tropicalOverlapDegreeFiveExponent8 7 65 88 114 127,
    tropicalOverlapDegreeFiveExponent8 7 75 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 41 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 51 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 51 75 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 101 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 111 127,
    tropicalOverlapDegreeFiveExponent8 0 6 69 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 38 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 48 89 127,
    tropicalOverlapDegreeFiveExponent8 0 26 48 69 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 101 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 111 127,
    tropicalOverlapDegreeFiveExponent8 0 1 69 89 139,
    tropicalOverlapDegreeFiveExponent8 0 9 41 89 139,
    tropicalOverlapDegreeFiveExponent8 0 9 51 89 127,
    tropicalOverlapDegreeFiveExponent8 0 20 51 69 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 101 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 111 127,
    tropicalOverlapDegreeFiveExponent8 0 7 69 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 41 89 139,
    tropicalOverlapDegreeFiveExponent8 0 15 51 89 127,
    tropicalOverlapDegreeFiveExponent8 0 26 51 69 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 44. -/
theorem tropicalOverlapSourceIExponent8_replay_shard44
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard44 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard44 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard44 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 44. -/
theorem tropicalOverlapSourceJExponent8_replay_shard44
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard44 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard44 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard44 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard44
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard44 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard44 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard44 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard44
    (i : Fin 5) :
    tropicalOverlapRelation8Shard44 i =
      tropicalOverlapSourceCombination8Shard44 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard44,
      tropicalOverlapSourceCombination8Shard44,
      tropicalOverlapProvenance8Shard44,
      tropicalOverlapSourceIExponent8Shard44,
      tropicalOverlapSourceJExponent8Shard44, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 44. -/
theorem tropicalOverlapRelation8_provenance_shard44 (i : Fin 5) :
    tropicalOverlapRelation8Shard44 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard44 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard44]
  unfold tropicalOverlapSourceCombination8Shard44
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard44,
    tropicalOverlapSourceJExponent8_replay_shard44]

end

end MonochromaticQuantumGraphs.N8D3
