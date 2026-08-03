import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 330. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 330. -/
def tropicalOverlapProvenance8Row330 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 172, coordinateB := 7, sourceJ := 175, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 330. -/
def tropicalOverlapRelation8Row330 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 41 90 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 52 90 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 52 69 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 38 90 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 49 90 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 49 69 123) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row330 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 104 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 115 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 90 142,
  tropicalOverlapDegreeFiveExponent8 7 9 38 90 142,
  tropicalOverlapDegreeFiveExponent8 7 9 49 90 127,
  tropicalOverlapDegreeFiveExponent8 7 20 49 69 123
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row330 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 104 142,
  tropicalOverlapDegreeFiveExponent8 0 7 59 115 127,
  tropicalOverlapDegreeFiveExponent8 0 7 69 90 142,
  tropicalOverlapDegreeFiveExponent8 0 15 41 90 142,
  tropicalOverlapDegreeFiveExponent8 0 15 52 90 127,
  tropicalOverlapDegreeFiveExponent8 0 26 52 69 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row330 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row330.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row330 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row330 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
