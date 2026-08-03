import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 317. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 317. -/
def tropicalOverlapProvenance8Row317 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 163, coordinateB := 90, sourceJ := 179, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 317. -/
def tropicalOverlapRelation8Row317 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 104 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 88 115 127) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 98 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 90 109 127) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 88 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 90 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row317 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 90 98 142,
  tropicalOverlapDegreeFiveExponent8 7 65 90 109 127,
  tropicalOverlapDegreeFiveExponent8 7 75 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 41 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 52 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 52 75 90 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row317 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 88 104 142,
  tropicalOverlapDegreeFiveExponent8 7 65 88 115 127,
  tropicalOverlapDegreeFiveExponent8 7 75 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 41 88 90 142,
  tropicalOverlapDegreeFiveExponent8 17 52 88 90 127,
  tropicalOverlapDegreeFiveExponent8 26 52 75 88 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row317 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row317.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row317 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row317 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
