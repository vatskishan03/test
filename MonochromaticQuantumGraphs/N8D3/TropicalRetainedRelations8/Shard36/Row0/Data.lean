import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 180. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 180. -/
def tropicalOverlapProvenance8Row180 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 68, coordinateB := 7, sourceJ := 69, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 180. -/
def tropicalOverlapRelation8Row180 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 89 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 69 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 89 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 89 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 69 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row180 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 101 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 112 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 89 141,
  tropicalOverlapDegreeFiveExponent8 7 9 41 89 141,
  tropicalOverlapDegreeFiveExponent8 7 9 52 89 126,
  tropicalOverlapDegreeFiveExponent8 7 20 52 69 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row180 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 101 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 112 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 89 141,
  tropicalOverlapDegreeFiveExponent8 1 15 41 89 141,
  tropicalOverlapDegreeFiveExponent8 1 15 52 89 126,
  tropicalOverlapDegreeFiveExponent8 1 26 52 69 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row180 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row180.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row180 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row180 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
