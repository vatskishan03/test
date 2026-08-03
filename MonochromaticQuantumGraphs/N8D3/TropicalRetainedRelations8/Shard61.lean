import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 305--309. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 61. -/
def tropicalOverlapProvenance8Shard61 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 156, coordinateB := 6, sourceJ := 157, coordinateA := 0 },
  { epsilon := -1, sourceI := 156, coordinateB := 1, sourceJ := 158, coordinateA := 0 },
  { epsilon := -1, sourceI := 156, coordinateB := 7, sourceJ := 159, coordinateA := 0 },
  { epsilon := -1, sourceI := 160, coordinateB := 7, sourceJ := 161, coordinateA := 6 },
  { epsilon := -1, sourceI := 160, coordinateB := 89, sourceJ := 165, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 61. -/
def tropicalOverlapRelation8Shard61 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 40 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 77 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 77 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 77 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 77 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 43 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 90 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 77 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 40 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 90 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 77 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 41 88 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 52 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 52 69 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 38 88 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 49 88 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 49 69 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 101 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 112 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 89 117) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard61 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 106 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 114 133,
    tropicalOverlapDegreeFiveExponent8 0 6 77 90 139,
    tropicalOverlapDegreeFiveExponent8 6 11 40 90 139,
    tropicalOverlapDegreeFiveExponent8 6 11 48 90 133,
    tropicalOverlapDegreeFiveExponent8 6 20 48 77 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 106 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 114 133,
    tropicalOverlapDegreeFiveExponent8 0 1 77 90 139,
    tropicalOverlapDegreeFiveExponent8 1 11 40 90 139,
    tropicalOverlapDegreeFiveExponent8 1 11 48 90 133,
    tropicalOverlapDegreeFiveExponent8 1 20 48 77 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 106 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 114 133,
    tropicalOverlapDegreeFiveExponent8 0 7 77 90 139,
    tropicalOverlapDegreeFiveExponent8 7 11 40 90 139,
    tropicalOverlapDegreeFiveExponent8 7 11 48 90 133,
    tropicalOverlapDegreeFiveExponent8 7 20 48 77 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 59 98 142,
    tropicalOverlapDegreeFiveExponent8 6 7 59 109 127,
    tropicalOverlapDegreeFiveExponent8 6 7 69 88 142,
    tropicalOverlapDegreeFiveExponent8 7 15 38 88 142,
    tropicalOverlapDegreeFiveExponent8 7 15 49 88 127,
    tropicalOverlapDegreeFiveExponent8 7 26 49 69 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 89 98 142,
    tropicalOverlapDegreeFiveExponent8 6 59 89 109 127,
    tropicalOverlapDegreeFiveExponent8 6 69 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 38 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 49 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 49 69 89 117
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard61 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 106 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 114 133,
    tropicalOverlapDegreeFiveExponent8 0 6 77 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 40 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 48 90 133,
    tropicalOverlapDegreeFiveExponent8 0 26 48 77 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 106 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 114 133,
    tropicalOverlapDegreeFiveExponent8 0 1 77 90 139,
    tropicalOverlapDegreeFiveExponent8 0 11 43 90 139,
    tropicalOverlapDegreeFiveExponent8 0 11 51 90 133,
    tropicalOverlapDegreeFiveExponent8 0 20 51 77 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 106 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 114 133,
    tropicalOverlapDegreeFiveExponent8 0 7 77 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 43 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 51 90 133,
    tropicalOverlapDegreeFiveExponent8 0 26 51 77 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 59 98 142,
    tropicalOverlapDegreeFiveExponent8 6 7 59 109 127,
    tropicalOverlapDegreeFiveExponent8 6 7 69 88 142,
    tropicalOverlapDegreeFiveExponent8 6 15 41 88 142,
    tropicalOverlapDegreeFiveExponent8 6 15 52 88 127,
    tropicalOverlapDegreeFiveExponent8 6 26 52 69 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 88 101 142,
    tropicalOverlapDegreeFiveExponent8 6 59 88 112 127,
    tropicalOverlapDegreeFiveExponent8 6 69 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 38 88 89 142,
    tropicalOverlapDegreeFiveExponent8 15 49 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 49 69 88 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 61. -/
theorem tropicalOverlapSourceIExponent8_replay_shard61
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard61 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard61 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard61 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 61. -/
theorem tropicalOverlapSourceJExponent8_replay_shard61
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard61 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard61 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard61 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard61
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard61 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard61 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard61 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard61
    (i : Fin 5) :
    tropicalOverlapRelation8Shard61 i =
      tropicalOverlapSourceCombination8Shard61 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard61,
      tropicalOverlapSourceCombination8Shard61,
      tropicalOverlapProvenance8Shard61,
      tropicalOverlapSourceIExponent8Shard61,
      tropicalOverlapSourceJExponent8Shard61, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 61. -/
theorem tropicalOverlapRelation8_provenance_shard61 (i : Fin 5) :
    tropicalOverlapRelation8Shard61 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard61 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard61]
  unfold tropicalOverlapSourceCombination8Shard61
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard61,
    tropicalOverlapSourceJExponent8_replay_shard61]

end

end MonochromaticQuantumGraphs.N8D3
