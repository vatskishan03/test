import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 10--14. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 2. -/
def tropicalOverlapProvenance8Shard2 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 1, coordinateB := 87, sourceJ := 15, coordinateA := 85 },
  { epsilon := 1, sourceI := 1, coordinateB := 90, sourceJ := 19, coordinateA := 85 },
  { epsilon := 1, sourceI := 2, coordinateB := 141, sourceJ := 62, coordinateA := 138 },
  { epsilon := 1, sourceI := 2, coordinateB := 139, sourceJ := 101, coordinateA := 138 },
  { epsilon := 1, sourceI := 2, coordinateB := 142, sourceJ := 161, coordinateA := 138 }
]

/-- The five explicit sparse target polynomials in overlap shard 2. -/
def tropicalOverlapRelation8Shard2 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 114 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 98 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 108 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 87 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 98 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 90 108 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 104 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 85 114 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 85 122) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 116 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 117 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 109 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 88 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 116 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 117 138) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard2 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 87 98 138,
    tropicalOverlapDegreeFiveExponent8 7 64 87 108 126,
    tropicalOverlapDegreeFiveExponent8 7 75 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 41 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 87 126,
    tropicalOverlapDegreeFiveExponent8 25 51 75 87 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 90 98 138,
    tropicalOverlapDegreeFiveExponent8 7 64 90 108 126,
    tropicalOverlapDegreeFiveExponent8 7 75 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 41 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 90 126,
    tropicalOverlapDegreeFiveExponent8 25 51 75 90 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 98 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 108 126 141,
    tropicalOverlapDegreeFiveExponent8 7 69 88 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 88 138 141,
    tropicalOverlapDegreeFiveExponent8 15 51 88 126 141,
    tropicalOverlapDegreeFiveExponent8 26 51 69 116 141
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 98 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 108 126 139,
    tropicalOverlapDegreeFiveExponent8 7 69 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 41 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 126 139,
    tropicalOverlapDegreeFiveExponent8 26 51 69 116 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 98 138 142,
    tropicalOverlapDegreeFiveExponent8 7 59 108 126 142,
    tropicalOverlapDegreeFiveExponent8 7 69 88 138 142,
    tropicalOverlapDegreeFiveExponent8 15 41 88 138 142,
    tropicalOverlapDegreeFiveExponent8 15 51 88 126 142,
    tropicalOverlapDegreeFiveExponent8 26 51 69 116 142
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard2 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 7 64 85 104 138,
    tropicalOverlapDegreeFiveExponent8 7 64 85 114 126,
    tropicalOverlapDegreeFiveExponent8 7 75 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 41 85 87 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 87 126,
    tropicalOverlapDegreeFiveExponent8 25 51 75 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 85 104 138,
    tropicalOverlapDegreeFiveExponent8 7 65 85 114 126,
    tropicalOverlapDegreeFiveExponent8 7 75 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 41 85 90 138,
    tropicalOverlapDegreeFiveExponent8 17 51 85 90 126,
    tropicalOverlapDegreeFiveExponent8 26 51 75 85 122
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 98 138 141,
    tropicalOverlapDegreeFiveExponent8 7 59 109 126 138,
    tropicalOverlapDegreeFiveExponent8 7 69 88 138 141,
    tropicalOverlapDegreeFiveExponent8 15 41 88 138 141,
    tropicalOverlapDegreeFiveExponent8 15 52 88 126 138,
    tropicalOverlapDegreeFiveExponent8 26 52 69 116 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 98 138 139,
    tropicalOverlapDegreeFiveExponent8 7 59 108 127 138,
    tropicalOverlapDegreeFiveExponent8 7 69 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 41 88 138 139,
    tropicalOverlapDegreeFiveExponent8 15 51 88 127 138,
    tropicalOverlapDegreeFiveExponent8 26 51 69 117 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 98 138 142,
    tropicalOverlapDegreeFiveExponent8 7 59 109 127 138,
    tropicalOverlapDegreeFiveExponent8 7 69 88 138 142,
    tropicalOverlapDegreeFiveExponent8 15 41 88 138 142,
    tropicalOverlapDegreeFiveExponent8 15 52 88 127 138,
    tropicalOverlapDegreeFiveExponent8 26 52 69 117 138
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 2. -/
theorem tropicalOverlapSourceIExponent8_replay_shard2
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard2 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard2 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard2 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 2. -/
theorem tropicalOverlapSourceJExponent8_replay_shard2
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard2 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard2 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard2 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard2
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard2 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard2 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard2 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard2
    (i : Fin 5) :
    tropicalOverlapRelation8Shard2 i =
      tropicalOverlapSourceCombination8Shard2 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard2,
      tropicalOverlapSourceCombination8Shard2,
      tropicalOverlapProvenance8Shard2,
      tropicalOverlapSourceIExponent8Shard2,
      tropicalOverlapSourceJExponent8Shard2, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 2. -/
theorem tropicalOverlapRelation8_provenance_shard2 (i : Fin 5) :
    tropicalOverlapRelation8Shard2 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard2 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard2]
  unfold tropicalOverlapSourceCombination8Shard2
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard2,
    tropicalOverlapSourceJExponent8_replay_shard2]

end

end MonochromaticQuantumGraphs.N8D3
