import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 309. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 309. -/
def tropicalOverlapProvenance8Row309 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 160, coordinateB := 89, sourceJ := 165, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 309. -/
def tropicalOverlapRelation8Row309 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 101 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 88 112 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 89 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 69 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row309 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 89 98 142,
  tropicalOverlapDegreeFiveExponent8 6 59 89 109 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 38 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 49 69 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row309 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 88 101 142,
  tropicalOverlapDegreeFiveExponent8 6 59 88 112 127,
  tropicalOverlapDegreeFiveExponent8 6 69 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 38 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 89 127,
  tropicalOverlapDegreeFiveExponent8 26 49 69 88 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row309 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row309.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row309 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row309 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
