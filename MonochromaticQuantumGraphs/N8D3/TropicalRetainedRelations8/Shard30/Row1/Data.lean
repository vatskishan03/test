import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 151. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 151. -/
def tropicalOverlapProvenance8Row151 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 50, coordinateB := 7, sourceJ := 51, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 151. -/
def tropicalOverlapRelation8Row151 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 43 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 89 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 77 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 43 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 89 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 77 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row151 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 103 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 111 132,
  tropicalOverlapDegreeFiveExponent8 1 7 77 89 138,
  tropicalOverlapDegreeFiveExponent8 7 11 43 89 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 89 132,
  tropicalOverlapDegreeFiveExponent8 7 20 51 77 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row151 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 103 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 111 132,
  tropicalOverlapDegreeFiveExponent8 1 7 77 89 138,
  tropicalOverlapDegreeFiveExponent8 1 17 43 89 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 89 132,
  tropicalOverlapDegreeFiveExponent8 1 26 51 77 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row151 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row151.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row151 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row151 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
