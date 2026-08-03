import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 225--229. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 45. -/
def tropicalOverlapProvenance8Shard45 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 104, coordinateB := 142, sourceJ := 164, coordinateA := 139 },
  { epsilon := -1, sourceI := 104, coordinateB := 90, sourceJ := 112, coordinateA := 89 },
  { epsilon := 1, sourceI := 105, coordinateB := 142, sourceJ := 165, coordinateA := 139 },
  { epsilon := -1, sourceI := 106, coordinateB := 90, sourceJ := 114, coordinateA := 89 },
  { epsilon := -1, sourceI := 108, coordinateB := 6, sourceJ := 109, coordinateA := 0 }
]

/-- The five explicit sparse target polynomials in overlap shard 45. -/
def tropicalOverlapRelation8Shard45 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 111 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 112 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 89 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 89 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 69 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 69 120 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 101 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 111 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 69 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 69 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 111 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 112 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 89 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 89 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 120 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 101 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 111 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 38 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 75 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 75 120) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard45 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 101 139 142,
    tropicalOverlapDegreeFiveExponent8 0 59 111 127 142,
    tropicalOverlapDegreeFiveExponent8 0 69 89 139 142,
    tropicalOverlapDegreeFiveExponent8 9 38 89 139 142,
    tropicalOverlapDegreeFiveExponent8 9 48 89 127 142,
    tropicalOverlapDegreeFiveExponent8 20 48 69 120 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 90 101 139,
    tropicalOverlapDegreeFiveExponent8 0 59 90 111 127,
    tropicalOverlapDegreeFiveExponent8 0 69 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 38 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 48 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 48 69 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 101 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 111 127 142,
    tropicalOverlapDegreeFiveExponent8 6 69 89 139 142,
    tropicalOverlapDegreeFiveExponent8 15 38 89 139 142,
    tropicalOverlapDegreeFiveExponent8 15 48 89 127 142,
    tropicalOverlapDegreeFiveExponent8 26 48 69 120 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 90 101 139,
    tropicalOverlapDegreeFiveExponent8 1 59 90 111 127,
    tropicalOverlapDegreeFiveExponent8 1 69 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 41 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 51 69 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 101 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 111 127,
    tropicalOverlapDegreeFiveExponent8 0 6 75 89 139,
    tropicalOverlapDegreeFiveExponent8 6 11 38 89 139,
    tropicalOverlapDegreeFiveExponent8 6 11 48 89 127,
    tropicalOverlapDegreeFiveExponent8 6 20 48 75 120
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard45 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 101 139 142,
    tropicalOverlapDegreeFiveExponent8 0 59 112 127 139,
    tropicalOverlapDegreeFiveExponent8 0 69 89 139 142,
    tropicalOverlapDegreeFiveExponent8 9 38 89 139 142,
    tropicalOverlapDegreeFiveExponent8 9 49 89 127 139,
    tropicalOverlapDegreeFiveExponent8 20 49 69 120 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 89 104 139,
    tropicalOverlapDegreeFiveExponent8 0 59 89 114 127,
    tropicalOverlapDegreeFiveExponent8 0 69 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 38 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 48 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 48 69 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 101 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 112 127 139,
    tropicalOverlapDegreeFiveExponent8 6 69 89 139 142,
    tropicalOverlapDegreeFiveExponent8 15 38 89 139 142,
    tropicalOverlapDegreeFiveExponent8 15 49 89 127 139,
    tropicalOverlapDegreeFiveExponent8 26 49 69 120 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 1 59 89 104 139,
    tropicalOverlapDegreeFiveExponent8 1 59 89 114 127,
    tropicalOverlapDegreeFiveExponent8 1 69 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 41 89 90 139,
    tropicalOverlapDegreeFiveExponent8 9 51 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 51 69 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 101 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 111 127,
    tropicalOverlapDegreeFiveExponent8 0 6 75 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 38 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 48 89 127,
    tropicalOverlapDegreeFiveExponent8 0 26 48 75 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 45. -/
theorem tropicalOverlapSourceIExponent8_replay_shard45
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard45 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard45 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard45 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 45. -/
theorem tropicalOverlapSourceJExponent8_replay_shard45
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard45 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard45 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard45 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard45
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard45 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard45 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard45 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard45
    (i : Fin 5) :
    tropicalOverlapRelation8Shard45 i =
      tropicalOverlapSourceCombination8Shard45 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard45,
      tropicalOverlapSourceCombination8Shard45,
      tropicalOverlapProvenance8Shard45,
      tropicalOverlapSourceIExponent8Shard45,
      tropicalOverlapSourceJExponent8Shard45, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 45. -/
theorem tropicalOverlapRelation8_provenance_shard45 (i : Fin 5) :
    tropicalOverlapRelation8Shard45 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard45 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard45]
  unfold tropicalOverlapSourceCombination8Shard45
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard45,
    tropicalOverlapSourceJExponent8_replay_shard45]

end

end MonochromaticQuantumGraphs.N8D3
