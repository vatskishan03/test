import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 215--219. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 43. -/
def tropicalOverlapProvenance8Shard43 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 101, coordinateB := 90, sourceJ := 115, coordinateA := 88 },
  { epsilon := -1, sourceI := 102, coordinateB := 7, sourceJ := 103, coordinateA := 6 },
  { epsilon := 1, sourceI := 102, coordinateB := 142, sourceJ := 162, coordinateA := 139 },
  { epsilon := -1, sourceI := 102, coordinateB := 89, sourceJ := 109, coordinateA := 88 },
  { epsilon := -1, sourceI := 102, coordinateB := 90, sourceJ := 117, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 43. -/
def tropicalOverlapRelation8Shard43 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 90 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 41 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 17 51 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 75 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 38 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 17 48 88 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 75 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 108 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 109 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 88 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 88 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 117 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 117 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 101 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 111 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 90 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 90 117) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard43 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 90 98 139,
    tropicalOverlapDegreeFiveExponent8 7 59 90 108 127,
    tropicalOverlapDegreeFiveExponent8 7 69 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 41 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 51 69 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 65 98 139,
    tropicalOverlapDegreeFiveExponent8 6 7 65 108 127,
    tropicalOverlapDegreeFiveExponent8 6 7 75 88 139,
    tropicalOverlapDegreeFiveExponent8 7 17 38 88 139,
    tropicalOverlapDegreeFiveExponent8 7 17 48 88 127,
    tropicalOverlapDegreeFiveExponent8 7 26 48 75 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 98 139 142,
    tropicalOverlapDegreeFiveExponent8 6 65 108 127 142,
    tropicalOverlapDegreeFiveExponent8 6 75 88 139 142,
    tropicalOverlapDegreeFiveExponent8 17 38 88 139 142,
    tropicalOverlapDegreeFiveExponent8 17 48 88 127 142,
    tropicalOverlapDegreeFiveExponent8 26 48 75 117 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 89 98 139,
    tropicalOverlapDegreeFiveExponent8 6 65 89 108 127,
    tropicalOverlapDegreeFiveExponent8 6 75 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 38 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 48 75 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 90 98 139,
    tropicalOverlapDegreeFiveExponent8 6 65 90 108 127,
    tropicalOverlapDegreeFiveExponent8 6 75 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 38 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 48 75 90 117
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard43 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 88 104 139,
    tropicalOverlapDegreeFiveExponent8 7 59 88 114 127,
    tropicalOverlapDegreeFiveExponent8 7 69 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 41 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 51 69 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 65 98 139,
    tropicalOverlapDegreeFiveExponent8 6 7 65 108 127,
    tropicalOverlapDegreeFiveExponent8 6 7 75 88 139,
    tropicalOverlapDegreeFiveExponent8 6 17 41 88 139,
    tropicalOverlapDegreeFiveExponent8 6 17 51 88 127,
    tropicalOverlapDegreeFiveExponent8 6 26 51 75 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 98 139 142,
    tropicalOverlapDegreeFiveExponent8 6 65 109 127 139,
    tropicalOverlapDegreeFiveExponent8 6 75 88 139 142,
    tropicalOverlapDegreeFiveExponent8 17 38 88 139 142,
    tropicalOverlapDegreeFiveExponent8 17 49 88 127 139,
    tropicalOverlapDegreeFiveExponent8 26 49 75 117 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 88 101 139,
    tropicalOverlapDegreeFiveExponent8 6 65 88 111 127,
    tropicalOverlapDegreeFiveExponent8 6 75 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 38 88 89 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 48 75 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 88 104 139,
    tropicalOverlapDegreeFiveExponent8 6 65 88 114 127,
    tropicalOverlapDegreeFiveExponent8 6 75 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 38 88 90 139,
    tropicalOverlapDegreeFiveExponent8 17 48 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 48 75 88 123
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 43. -/
theorem tropicalOverlapSourceIExponent8_replay_shard43
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard43 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard43 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard43 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 43. -/
theorem tropicalOverlapSourceJExponent8_replay_shard43
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard43 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard43 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard43 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard43
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard43 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard43 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard43 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard43
    (i : Fin 5) :
    tropicalOverlapRelation8Shard43 i =
      tropicalOverlapSourceCombination8Shard43 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard43,
      tropicalOverlapSourceCombination8Shard43,
      tropicalOverlapProvenance8Shard43,
      tropicalOverlapSourceIExponent8Shard43,
      tropicalOverlapSourceJExponent8Shard43, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 43. -/
theorem tropicalOverlapRelation8_provenance_shard43 (i : Fin 5) :
    tropicalOverlapRelation8Shard43 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard43 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard43]
  unfold tropicalOverlapSourceCombination8Shard43
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard43,
    tropicalOverlapSourceJExponent8_replay_shard43]

end

end MonochromaticQuantumGraphs.N8D3
