import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 210--214. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 42. -/
def tropicalOverlapProvenance8Shard42 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 100, coordinateB := 7, sourceJ := 101, coordinateA := 6 },
  { epsilon := 1, sourceI := 100, coordinateB := 142, sourceJ := 160, coordinateA := 139 },
  { epsilon := -1, sourceI := 100, coordinateB := 89, sourceJ := 105, coordinateA := 88 },
  { epsilon := -1, sourceI := 100, coordinateB := 90, sourceJ := 113, coordinateA := 88 },
  { epsilon := -1, sourceI := 101, coordinateB := 89, sourceJ := 107, coordinateA := 88 }
]

/-- The five explicit sparse target polynomials in overlap shard 42. -/
def tropicalOverlapRelation8Shard42 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 41 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 51 88 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 69 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 38 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 48 88 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 69 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 108 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 109 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 88 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 88 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 117 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 117 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 101 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 111 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 89 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 90 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 90 117) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 101 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 111 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 98 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 108 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 89 117) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard42 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 59 98 139,
    tropicalOverlapDegreeFiveExponent8 6 7 59 108 127,
    tropicalOverlapDegreeFiveExponent8 6 7 69 88 139,
    tropicalOverlapDegreeFiveExponent8 7 15 38 88 139,
    tropicalOverlapDegreeFiveExponent8 7 15 48 88 127,
    tropicalOverlapDegreeFiveExponent8 7 26 48 69 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 98 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 108 127 142,
    tropicalOverlapDegreeFiveExponent8 6 69 88 139 142,
    tropicalOverlapDegreeFiveExponent8 15 38 88 139 142,
    tropicalOverlapDegreeFiveExponent8 15 48 88 127 142,
    tropicalOverlapDegreeFiveExponent8 26 48 69 117 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 89 98 139,
    tropicalOverlapDegreeFiveExponent8 6 59 89 108 127,
    tropicalOverlapDegreeFiveExponent8 6 69 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 38 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 48 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 48 69 89 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 90 98 139,
    tropicalOverlapDegreeFiveExponent8 6 59 90 108 127,
    tropicalOverlapDegreeFiveExponent8 6 69 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 38 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 48 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 48 69 90 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 89 98 139,
    tropicalOverlapDegreeFiveExponent8 7 59 89 108 127,
    tropicalOverlapDegreeFiveExponent8 7 69 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 41 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 51 69 89 117
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard42 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 7 59 98 139,
    tropicalOverlapDegreeFiveExponent8 6 7 59 108 127,
    tropicalOverlapDegreeFiveExponent8 6 7 69 88 139,
    tropicalOverlapDegreeFiveExponent8 6 15 41 88 139,
    tropicalOverlapDegreeFiveExponent8 6 15 51 88 127,
    tropicalOverlapDegreeFiveExponent8 6 26 51 69 117
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 98 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 109 127 139,
    tropicalOverlapDegreeFiveExponent8 6 69 88 139 142,
    tropicalOverlapDegreeFiveExponent8 15 38 88 139 142,
    tropicalOverlapDegreeFiveExponent8 15 49 88 127 139,
    tropicalOverlapDegreeFiveExponent8 26 49 69 117 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 88 101 139,
    tropicalOverlapDegreeFiveExponent8 6 59 88 111 127,
    tropicalOverlapDegreeFiveExponent8 6 69 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 38 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 48 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 48 69 88 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 88 104 139,
    tropicalOverlapDegreeFiveExponent8 6 59 88 114 127,
    tropicalOverlapDegreeFiveExponent8 6 69 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 38 88 90 139,
    tropicalOverlapDegreeFiveExponent8 15 48 88 90 127,
    tropicalOverlapDegreeFiveExponent8 26 48 69 88 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 88 101 139,
    tropicalOverlapDegreeFiveExponent8 7 59 88 111 127,
    tropicalOverlapDegreeFiveExponent8 7 69 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 41 88 89 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 89 127,
    tropicalOverlapDegreeFiveExponent8 26 51 69 88 120
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 42. -/
theorem tropicalOverlapSourceIExponent8_replay_shard42
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard42 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard42 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard42 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 42. -/
theorem tropicalOverlapSourceJExponent8_replay_shard42
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard42 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard42 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard42 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard42
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard42 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard42 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard42 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard42
    (i : Fin 5) :
    tropicalOverlapRelation8Shard42 i =
      tropicalOverlapSourceCombination8Shard42 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard42,
      tropicalOverlapSourceCombination8Shard42,
      tropicalOverlapProvenance8Shard42,
      tropicalOverlapSourceIExponent8Shard42,
      tropicalOverlapSourceJExponent8Shard42, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 42. -/
theorem tropicalOverlapRelation8_provenance_shard42 (i : Fin 5) :
    tropicalOverlapRelation8Shard42 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard42 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard42]
  unfold tropicalOverlapSourceCombination8Shard42
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard42,
    tropicalOverlapSourceJExponent8_replay_shard42]

end

end MonochromaticQuantumGraphs.N8D3
