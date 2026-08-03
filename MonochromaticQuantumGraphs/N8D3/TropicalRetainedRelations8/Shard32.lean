import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 160--164. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 32. -/
def tropicalOverlapProvenance8Shard32 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 58, coordinateB := 139, sourceJ := 158, coordinateA := 138 },
  { epsilon := 1, sourceI := 59, coordinateB := 139, sourceJ := 159, coordinateA := 138 },
  { epsilon := 1, sourceI := 60, coordinateB := 88, sourceJ := 62, coordinateA := 85 },
  { epsilon := -1, sourceI := 60, coordinateB := 86, sourceJ := 65, coordinateA := 85 },
  { epsilon := 1, sourceI := 60, coordinateB := 89, sourceJ := 69, coordinateA := 85 }
]

/-- The five explicit sparse target polynomials in overlap shard 32. -/
def tropicalOverlapRelation8Shard32 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 123 138) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 88 109 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 98 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 109 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 88 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 85 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 85 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 98 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 86 109 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 85 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 86 116) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 98 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 89 109 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 89 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 85 119) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard32 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 106 138 139,
    tropicalOverlapDegreeFiveExponent8 1 65 114 132 139,
    tropicalOverlapDegreeFiveExponent8 1 77 90 138 139,
    tropicalOverlapDegreeFiveExponent8 11 43 90 138 139,
    tropicalOverlapDegreeFiveExponent8 11 51 90 132 139,
    tropicalOverlapDegreeFiveExponent8 20 51 77 122 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 106 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 114 132 139,
    tropicalOverlapDegreeFiveExponent8 7 77 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 43 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 90 132 139,
    tropicalOverlapDegreeFiveExponent8 26 51 77 122 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 88 98 141,
    tropicalOverlapDegreeFiveExponent8 7 58 88 109 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 88 141,
    tropicalOverlapDegreeFiveExponent8 15 41 85 88 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 88 126,
    tropicalOverlapDegreeFiveExponent8 25 52 69 88 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 86 98 141,
    tropicalOverlapDegreeFiveExponent8 7 58 86 109 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 86 141,
    tropicalOverlapDegreeFiveExponent8 15 41 85 86 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 86 126,
    tropicalOverlapDegreeFiveExponent8 25 52 69 86 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 89 98 141,
    tropicalOverlapDegreeFiveExponent8 7 58 89 109 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 89 141,
    tropicalOverlapDegreeFiveExponent8 15 41 85 89 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 89 126,
    tropicalOverlapDegreeFiveExponent8 25 52 69 89 116
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard32 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 106 138 139,
    tropicalOverlapDegreeFiveExponent8 1 65 114 133 138,
    tropicalOverlapDegreeFiveExponent8 1 77 90 138 139,
    tropicalOverlapDegreeFiveExponent8 11 43 90 138 139,
    tropicalOverlapDegreeFiveExponent8 11 51 90 133 138,
    tropicalOverlapDegreeFiveExponent8 20 51 77 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 65 106 138 139,
    tropicalOverlapDegreeFiveExponent8 7 65 114 133 138,
    tropicalOverlapDegreeFiveExponent8 7 77 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 43 90 138 139,
    tropicalOverlapDegreeFiveExponent8 17 51 90 133 138,
    tropicalOverlapDegreeFiveExponent8 26 51 77 123 138
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 98 141,
    tropicalOverlapDegreeFiveExponent8 7 59 85 109 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 88 141,
    tropicalOverlapDegreeFiveExponent8 15 41 85 88 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 88 126,
    tropicalOverlapDegreeFiveExponent8 26 52 69 85 116
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 58 85 101 141,
    tropicalOverlapDegreeFiveExponent8 7 58 85 112 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 86 141,
    tropicalOverlapDegreeFiveExponent8 15 41 85 86 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 86 126,
    tropicalOverlapDegreeFiveExponent8 25 52 69 85 119
],
  ![
    tropicalOverlapDegreeFiveExponent8 7 59 85 101 141,
    tropicalOverlapDegreeFiveExponent8 7 59 85 112 126,
    tropicalOverlapDegreeFiveExponent8 7 69 85 89 141,
    tropicalOverlapDegreeFiveExponent8 15 41 85 89 141,
    tropicalOverlapDegreeFiveExponent8 15 52 85 89 126,
    tropicalOverlapDegreeFiveExponent8 26 52 69 85 119
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 32. -/
theorem tropicalOverlapSourceIExponent8_replay_shard32
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard32 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard32 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard32 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 32. -/
theorem tropicalOverlapSourceJExponent8_replay_shard32
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard32 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard32 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard32 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard32
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard32 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard32 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard32 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard32
    (i : Fin 5) :
    tropicalOverlapRelation8Shard32 i =
      tropicalOverlapSourceCombination8Shard32 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard32,
      tropicalOverlapSourceCombination8Shard32,
      tropicalOverlapProvenance8Shard32,
      tropicalOverlapSourceIExponent8Shard32,
      tropicalOverlapSourceJExponent8Shard32, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 32. -/
theorem tropicalOverlapRelation8_provenance_shard32 (i : Fin 5) :
    tropicalOverlapRelation8Shard32 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard32 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard32]
  unfold tropicalOverlapSourceCombination8Shard32
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard32,
    tropicalOverlapSourceJExponent8_replay_shard32]

end

end MonochromaticQuantumGraphs.N8D3
