import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 240--244. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 48. -/
def tropicalOverlapProvenance8Shard48 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := 1, sourceI := 113, coordinateB := 142, sourceJ := 173, coordinateA := 139 },
  { epsilon := -1, sourceI := 116, coordinateB := 6, sourceJ := 117, coordinateA := 0 },
  { epsilon := -1, sourceI := 116, coordinateB := 1, sourceJ := 118, coordinateA := 0 },
  { epsilon := -1, sourceI := 116, coordinateB := 7, sourceJ := 119, coordinateA := 0 },
  { epsilon := 1, sourceI := 116, coordinateB := 142, sourceJ := 176, coordinateA := 139 }
]

/-- The five explicit sparse target polynomials in overlap shard 48. -/
def tropicalOverlapRelation8Shard48 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 114 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 115 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 90 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 90 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 69 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 123 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 38 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 75 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 38 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 75 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 41 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 75 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 38 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 75 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 41 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 75 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 38 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 75 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 114 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 115 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 90 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 90 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 75 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 123 139) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard48 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 104 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 114 127 142,
    tropicalOverlapDegreeFiveExponent8 6 69 90 139 142,
    tropicalOverlapDegreeFiveExponent8 15 38 90 139 142,
    tropicalOverlapDegreeFiveExponent8 15 48 90 127 142,
    tropicalOverlapDegreeFiveExponent8 26 48 69 123 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 104 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 114 127,
    tropicalOverlapDegreeFiveExponent8 0 6 75 90 139,
    tropicalOverlapDegreeFiveExponent8 6 11 38 90 139,
    tropicalOverlapDegreeFiveExponent8 6 11 48 90 127,
    tropicalOverlapDegreeFiveExponent8 6 20 48 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 104 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 114 127,
    tropicalOverlapDegreeFiveExponent8 0 1 75 90 139,
    tropicalOverlapDegreeFiveExponent8 1 11 38 90 139,
    tropicalOverlapDegreeFiveExponent8 1 11 48 90 127,
    tropicalOverlapDegreeFiveExponent8 1 20 48 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 104 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 114 127,
    tropicalOverlapDegreeFiveExponent8 0 7 75 90 139,
    tropicalOverlapDegreeFiveExponent8 7 11 38 90 139,
    tropicalOverlapDegreeFiveExponent8 7 11 48 90 127,
    tropicalOverlapDegreeFiveExponent8 7 20 48 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 104 139 142,
    tropicalOverlapDegreeFiveExponent8 0 65 114 127 142,
    tropicalOverlapDegreeFiveExponent8 0 75 90 139 142,
    tropicalOverlapDegreeFiveExponent8 11 38 90 139 142,
    tropicalOverlapDegreeFiveExponent8 11 48 90 127 142,
    tropicalOverlapDegreeFiveExponent8 20 48 75 123 142
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard48 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 6 59 104 139 142,
    tropicalOverlapDegreeFiveExponent8 6 59 115 127 139,
    tropicalOverlapDegreeFiveExponent8 6 69 90 139 142,
    tropicalOverlapDegreeFiveExponent8 15 38 90 139 142,
    tropicalOverlapDegreeFiveExponent8 15 49 90 127 139,
    tropicalOverlapDegreeFiveExponent8 26 49 69 123 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 65 104 139,
    tropicalOverlapDegreeFiveExponent8 0 6 65 114 127,
    tropicalOverlapDegreeFiveExponent8 0 6 75 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 38 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 48 90 127,
    tropicalOverlapDegreeFiveExponent8 0 26 48 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 104 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 114 127,
    tropicalOverlapDegreeFiveExponent8 0 1 75 90 139,
    tropicalOverlapDegreeFiveExponent8 0 11 41 90 139,
    tropicalOverlapDegreeFiveExponent8 0 11 51 90 127,
    tropicalOverlapDegreeFiveExponent8 0 20 51 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 104 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 114 127,
    tropicalOverlapDegreeFiveExponent8 0 7 75 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 41 90 139,
    tropicalOverlapDegreeFiveExponent8 0 17 51 90 127,
    tropicalOverlapDegreeFiveExponent8 0 26 51 75 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 104 139 142,
    tropicalOverlapDegreeFiveExponent8 0 65 115 127 139,
    tropicalOverlapDegreeFiveExponent8 0 75 90 139 142,
    tropicalOverlapDegreeFiveExponent8 11 38 90 139 142,
    tropicalOverlapDegreeFiveExponent8 11 49 90 127 139,
    tropicalOverlapDegreeFiveExponent8 20 49 75 123 139
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 48. -/
theorem tropicalOverlapSourceIExponent8_replay_shard48
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard48 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard48 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard48 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 48. -/
theorem tropicalOverlapSourceJExponent8_replay_shard48
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard48 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard48 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard48 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard48
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard48 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard48 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard48 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard48
    (i : Fin 5) :
    tropicalOverlapRelation8Shard48 i =
      tropicalOverlapSourceCombination8Shard48 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard48,
      tropicalOverlapSourceCombination8Shard48,
      tropicalOverlapProvenance8Shard48,
      tropicalOverlapSourceIExponent8Shard48,
      tropicalOverlapSourceJExponent8Shard48, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 48. -/
theorem tropicalOverlapRelation8_provenance_shard48 (i : Fin 5) :
    tropicalOverlapRelation8Shard48 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard48 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard48]
  unfold tropicalOverlapSourceCombination8Shard48
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard48,
    tropicalOverlapSourceJExponent8_replay_shard48]

end

end MonochromaticQuantumGraphs.N8D3
