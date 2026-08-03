import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Kernel replay for first-overlap rows 230--234. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap shard 46. -/
def tropicalOverlapProvenance8Shard46 :
    Fin 5 → TropicalOverlapProvenance8 :=
![
  { epsilon := -1, sourceI := 108, coordinateB := 1, sourceJ := 110, coordinateA := 0 },
  { epsilon := -1, sourceI := 108, coordinateB := 7, sourceJ := 111, coordinateA := 0 },
  { epsilon := 1, sourceI := 108, coordinateB := 142, sourceJ := 168, coordinateA := 139 },
  { epsilon := -1, sourceI := 108, coordinateB := 90, sourceJ := 116, coordinateA := 89 },
  { epsilon := 1, sourceI := 109, coordinateB := 142, sourceJ := 169, coordinateA := 139 }
]

/-- The five explicit sparse target polynomials in overlap shard 46. -/
def tropicalOverlapRelation8Shard46 :
    Fin 5 → LaurentPolynomial (Fin 144) :=
![
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 75 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 75 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 41 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 75 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 75 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 111 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 112 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 89 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 89 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 75 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 75 120 139) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 104 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 114 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 101 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 111 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 75 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 75 90 120) 1),
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 111 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 112 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 48 89 127 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 49 89 127 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 75 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 75 120 139) 1)
]

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Shard46 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 101 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 111 127,
    tropicalOverlapDegreeFiveExponent8 0 1 75 89 139,
    tropicalOverlapDegreeFiveExponent8 1 11 38 89 139,
    tropicalOverlapDegreeFiveExponent8 1 11 48 89 127,
    tropicalOverlapDegreeFiveExponent8 1 20 48 75 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 101 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 111 127,
    tropicalOverlapDegreeFiveExponent8 0 7 75 89 139,
    tropicalOverlapDegreeFiveExponent8 7 11 38 89 139,
    tropicalOverlapDegreeFiveExponent8 7 11 48 89 127,
    tropicalOverlapDegreeFiveExponent8 7 20 48 75 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 101 139 142,
    tropicalOverlapDegreeFiveExponent8 0 65 111 127 142,
    tropicalOverlapDegreeFiveExponent8 0 75 89 139 142,
    tropicalOverlapDegreeFiveExponent8 11 38 89 139 142,
    tropicalOverlapDegreeFiveExponent8 11 48 89 127 142,
    tropicalOverlapDegreeFiveExponent8 20 48 75 120 142
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 90 101 139,
    tropicalOverlapDegreeFiveExponent8 0 65 90 111 127,
    tropicalOverlapDegreeFiveExponent8 0 75 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 38 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 48 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 48 75 90 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 101 139 142,
    tropicalOverlapDegreeFiveExponent8 6 65 111 127 142,
    tropicalOverlapDegreeFiveExponent8 6 75 89 139 142,
    tropicalOverlapDegreeFiveExponent8 17 38 89 139 142,
    tropicalOverlapDegreeFiveExponent8 17 48 89 127 142,
    tropicalOverlapDegreeFiveExponent8 26 48 75 120 142
]
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Shard46 :
    Fin 5 → Fin 6 → LaurentExponent (Fin 144) :=
![
  ![
    tropicalOverlapDegreeFiveExponent8 0 1 65 101 139,
    tropicalOverlapDegreeFiveExponent8 0 1 65 111 127,
    tropicalOverlapDegreeFiveExponent8 0 1 75 89 139,
    tropicalOverlapDegreeFiveExponent8 0 11 41 89 139,
    tropicalOverlapDegreeFiveExponent8 0 11 51 89 127,
    tropicalOverlapDegreeFiveExponent8 0 20 51 75 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 7 65 101 139,
    tropicalOverlapDegreeFiveExponent8 0 7 65 111 127,
    tropicalOverlapDegreeFiveExponent8 0 7 75 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 41 89 139,
    tropicalOverlapDegreeFiveExponent8 0 17 51 89 127,
    tropicalOverlapDegreeFiveExponent8 0 26 51 75 120
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 101 139 142,
    tropicalOverlapDegreeFiveExponent8 0 65 112 127 139,
    tropicalOverlapDegreeFiveExponent8 0 75 89 139 142,
    tropicalOverlapDegreeFiveExponent8 11 38 89 139 142,
    tropicalOverlapDegreeFiveExponent8 11 49 89 127 139,
    tropicalOverlapDegreeFiveExponent8 20 49 75 120 139
],
  ![
    tropicalOverlapDegreeFiveExponent8 0 65 89 104 139,
    tropicalOverlapDegreeFiveExponent8 0 65 89 114 127,
    tropicalOverlapDegreeFiveExponent8 0 75 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 38 89 90 139,
    tropicalOverlapDegreeFiveExponent8 11 48 89 90 127,
    tropicalOverlapDegreeFiveExponent8 20 48 75 89 123
],
  ![
    tropicalOverlapDegreeFiveExponent8 6 65 101 139 142,
    tropicalOverlapDegreeFiveExponent8 6 65 112 127 139,
    tropicalOverlapDegreeFiveExponent8 6 75 89 139 142,
    tropicalOverlapDegreeFiveExponent8 17 38 89 139 142,
    tropicalOverlapDegreeFiveExponent8 17 49 89 127 139,
    tropicalOverlapDegreeFiveExponent8 26 49 75 120 139
]
]

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_i` exponents in shard 46. -/
theorem tropicalOverlapSourceIExponent8_replay_shard46
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard46 i).coordinateB (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard46 i).sourceI)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceIExponent8Shard46 i j := by
  revert i j
  decide

set_option maxHeartbeats 10000000 in
/-- Kernel replay of all 30 shifted `B_j` exponents in shard 46. -/
theorem tropicalOverlapSourceJExponent8_replay_shard46
    (i : Fin 5) (j : Fin 6) :
    Pi.single (tropicalOverlapProvenance8Shard46 i).coordinateA (1 : ℤ) +
        tropicalMatchingLocalExponent8
          (tropicalBaseColoring8
            (tropicalOverlapProvenance8Shard46 i).sourceJ)
          (tropicalBaseMatching8 j) =
      tropicalOverlapSourceJExponent8Shard46 i j := by
  revert i j
  decide

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Shard46
    (i : Fin 5) : LaurentPolynomial (Fin 144) :=
  (tropicalOverlapProvenance8Shard46 i).epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Shard46 i j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Shard46 i j) 1)

/-- Coefficientwise cancellation of the three common translated faces. -/
private theorem tropicalOverlapRelation8_sourceCombination_shard46
    (i : Fin 5) :
    tropicalOverlapRelation8Shard46 i =
      tropicalOverlapSourceCombination8Shard46 i := by
  fin_cases i <;>
    simp [tropicalOverlapRelation8Shard46,
      tropicalOverlapSourceCombination8Shard46,
      tropicalOverlapProvenance8Shard46,
      tropicalOverlapSourceIExponent8Shard46,
      tropicalOverlapSourceJExponent8Shard46, Fin.sum_univ_succ] <;>
    abel

/-- Staged kernel replay of `T_r = epsilon_r * (x_b B_i - x_a B_j)` for
shard 46. -/
theorem tropicalOverlapRelation8_provenance_shard46 (i : Fin 5) :
    tropicalOverlapRelation8Shard46 i =
      tropicalOverlapProvenancePolynomial8
        (tropicalOverlapProvenance8Shard46 i) := by
  rw [tropicalOverlapRelation8_sourceCombination_shard46]
  unfold tropicalOverlapSourceCombination8Shard46
  unfold tropicalOverlapProvenancePolynomial8
  rw [tropicalOverlapTranslateBaseRelation8,
    tropicalOverlapTranslateBaseRelation8]
  simp_rw [tropicalOverlapSourceIExponent8_replay_shard46,
    tropicalOverlapSourceJExponent8_replay_shard46]

end

end MonochromaticQuantumGraphs.N8D3
