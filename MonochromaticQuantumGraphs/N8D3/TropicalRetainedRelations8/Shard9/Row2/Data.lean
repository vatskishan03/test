import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 47. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 47. -/
def tropicalOverlapProvenance8Row47 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 14, coordinateB := 7, sourceJ := 15, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 47. -/
def tropicalOverlapRelation8Row47 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 75 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 87 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 75 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row47 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 104 138,
  tropicalOverlapDegreeFiveExponent8 1 7 64 114 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 87 138,
  tropicalOverlapDegreeFiveExponent8 7 11 41 87 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 87 126,
  tropicalOverlapDegreeFiveExponent8 7 19 51 75 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row47 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 104 138,
  tropicalOverlapDegreeFiveExponent8 1 7 64 114 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 87 138,
  tropicalOverlapDegreeFiveExponent8 1 17 41 87 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 87 126,
  tropicalOverlapDegreeFiveExponent8 1 25 51 75 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row47 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row47.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row47 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row47 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
