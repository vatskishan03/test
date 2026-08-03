import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 322. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 322. -/
def tropicalOverlapProvenance8Row322 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 166, coordinateB := 90, sourceJ := 174, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 322. -/
def tropicalOverlapRelation8Row322 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 89 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 101 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 90 112 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row322 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 90 101 142,
  tropicalOverlapDegreeFiveExponent8 1 59 90 112 127,
  tropicalOverlapDegreeFiveExponent8 1 69 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 41 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 52 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 52 69 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row322 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 89 104 142,
  tropicalOverlapDegreeFiveExponent8 1 59 89 115 127,
  tropicalOverlapDegreeFiveExponent8 1 69 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 41 89 90 142,
  tropicalOverlapDegreeFiveExponent8 9 52 89 90 127,
  tropicalOverlapDegreeFiveExponent8 20 52 69 89 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row322 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row322.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row322 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row322 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
