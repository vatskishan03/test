import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 235--239. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 47. -/
def tropicalOverlapProvenance8Shard47 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 110, coordinateB := 90, sourceJ := 118, coordinateA := 89 },
  { epsilon := -1, sourceI := 112, coordinateB := 6, sourceJ := 113, coordinateA := 0 },
  { epsilon := -1, sourceI := 112, coordinateB := 1, sourceJ := 114, coordinateA := 0 },
  { epsilon := -1, sourceI := 112, coordinateB := 7, sourceJ := 115, coordinateA := 0 },
  { epsilon := 1, sourceI := 112, coordinateB := 142, sourceJ := 172, coordinateA := 139 }
]

/-- The five explicit sparse target polynomials in overlap shard 47. -/
def tropicalOverlapRelation8Shard47 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 101 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 111 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 69 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 41 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 38 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 69 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 90 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 90 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 69 123) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 114 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 115 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 90 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 90 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 69 123 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 69 123 139) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard47 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 90 101 139,
    tropicalOverlapDegreeFiveExponent8 1 65 90 111 127,
    tropicalOverlapDegreeFiveExponent8 1 75 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 41 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 51 75 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 104 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 114 127,
    tropicalOverlapDegreeFiveExponent8 0 6 69 90 139,
    tropicalOverlapDegreeFiveExponent8 6 9 38 90 139,
    tropicalOverlapDegreeFiveExponent8 6 9 48 90 127,
    tropicalOverlapDegreeFiveExponent8 6 20 48 69 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 104 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 114 127,
    tropicalOverlapDegreeFiveExponent8 0 1 69 90 139,
    tropicalOverlapDegreeFiveExponent8 1 9 38 90 139,
    tropicalOverlapDegreeFiveExponent8 1 9 48 90 127,
    tropicalOverlapDegreeFiveExponent8 1 20 48 69 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 104 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 114 127,
    tropicalOverlapDegreeFiveExponent8 0 7 69 90 139,
    tropicalOverlapDegreeFiveExponent8 7 9 38 90 139,
    tropicalOverlapDegreeFiveExponent8 7 9 48 90 127,
    tropicalOverlapDegreeFiveExponent8 7 20 48 69 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 104 139 142,
    tropicalOverlapDegreeFiveExponent8 0 59 114 127 142,
    tropicalOverlapDegreeFiveExponent8 0 69 90 139 142,
    tropicalOverlapDegreeFiveExponent8 9 38 90 139 142,
    tropicalOverlapDegreeFiveExponent8 9 48 90 127 142,
    tropicalOverlapDegreeFiveExponent8 20 48 69 123 142
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard47 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 1 65 89 104 139,
    tropicalOverlapDegreeFiveExponent8 1 65 89 114 127,
    tropicalOverlapDegreeFiveExponent8 1 75 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 41 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 51 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 51 75 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 6 59 104 139,
    tropicalOverlapDegreeFiveExponent8 0 6 59 114 127,
    tropicalOverlapDegreeFiveExponent8 0 6 69 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 38 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 48 90 127,
    tropicalOverlapDegreeFiveExponent8 0 26 48 69 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 59 104 139,
    tropicalOverlapDegreeFiveExponent8 0 1 59 114 127,
    tropicalOverlapDegreeFiveExponent8 0 1 69 90 139,
    tropicalOverlapDegreeFiveExponent8 0 9 41 90 139,
    tropicalOverlapDegreeFiveExponent8 0 9 51 90 127,
    tropicalOverlapDegreeFiveExponent8 0 20 51 69 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 59 104 139,
    tropicalOverlapDegreeFiveExponent8 0 7 59 114 127,
    tropicalOverlapDegreeFiveExponent8 0 7 69 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 41 90 139,
    tropicalOverlapDegreeFiveExponent8 0 15 51 90 127,
    tropicalOverlapDegreeFiveExponent8 0 26 51 69 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 59 104 139 142,
    tropicalOverlapDegreeFiveExponent8 0 59 115 127 139,
    tropicalOverlapDegreeFiveExponent8 0 69 90 139 142,
    tropicalOverlapDegreeFiveExponent8 9 38 90 139 142,
    tropicalOverlapDegreeFiveExponent8 9 49 90 127 139,
    tropicalOverlapDegreeFiveExponent8 20 49 69 123 139
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 47. -/
theorem tropicalOverlapSourceIExponent8_replay_shard47
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard47 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard47 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard47 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 47. -/
theorem tropicalOverlapSourceJExponent8_replay_shard47
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard47 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard47 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard47 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard47
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard47 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard47 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard47 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard47
    (i : Fin 5) :
    tropicalOverlapRelation8Shard47 i =
      tropicalOverlapSourceCombination8Shard47 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard47,
      tropicalOverlapSourceCombination8Shard47,
      tropicalOverlapProvenance8Shard47,
      tropicalOverlapSourceIExponent8Shard47,
      tropicalOverlapSourceJExponent8Shard47, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 47. -/
theorem tropicalOverlapRelation8_provenance_shard47 (i : Fin 5) :
    tropicalOverlapRelation8Shard47 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard47 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard47]
  unfold tropicalOverlapSourceCombination8Shard47
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard47,
    tropicalOverlapSourceJExponent8_replay_shard47]

end

end MonochromaticQuantumGraphs.N8D3
