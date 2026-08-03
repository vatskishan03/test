import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 24. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 24. -/
def tropicalOverlapProvenance8Row24 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 6, coordinateB := 7, sourceJ := 7, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 24. -/
def tropicalOverlapRelation8Row24 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 86 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 75 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 86 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 75 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row24 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 101 138,
  tropicalOverlapDegreeFiveExponent8 1 7 64 111 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 86 138,
  tropicalOverlapDegreeFiveExponent8 7 11 41 86 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 86 126,
  tropicalOverlapDegreeFiveExponent8 7 19 51 75 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row24 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 101 138,
  tropicalOverlapDegreeFiveExponent8 1 7 64 111 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 86 138,
  tropicalOverlapDegreeFiveExponent8 1 17 41 86 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 86 126,
  tropicalOverlapDegreeFiveExponent8 1 25 51 75 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row24 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row24.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row24 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row24 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
