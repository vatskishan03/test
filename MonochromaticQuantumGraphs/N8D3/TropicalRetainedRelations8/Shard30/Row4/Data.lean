import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 154. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 154. -/
def tropicalOverlapProvenance8Row154 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 52, coordinateB := 7, sourceJ := 53, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 154. -/
def tropicalOverlapRelation8Row154 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 87 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 71 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 87 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 71 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row154 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 106 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 114 132,
  tropicalOverlapDegreeFiveExponent8 1 7 71 87 138,
  tropicalOverlapDegreeFiveExponent8 7 9 43 87 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 87 132,
  tropicalOverlapDegreeFiveExponent8 7 19 51 71 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row154 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 106 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 114 132,
  tropicalOverlapDegreeFiveExponent8 1 7 71 87 138,
  tropicalOverlapDegreeFiveExponent8 1 15 43 87 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 87 132,
  tropicalOverlapDegreeFiveExponent8 1 25 51 71 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row154 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row154.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row154 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row154 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
