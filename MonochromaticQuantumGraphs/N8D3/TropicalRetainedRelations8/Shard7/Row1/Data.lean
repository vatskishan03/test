import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 36. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 36. -/
def tropicalOverlapProvenance8Row36 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 9, coordinateB := 142, sourceJ := 167, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 36. -/
def tropicalOverlapRelation8Row36 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 119 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row36 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 101 138 142,
  tropicalOverlapDegreeFiveExponent8 7 59 111 126 142,
  tropicalOverlapDegreeFiveExponent8 7 69 89 138 142,
  tropicalOverlapDegreeFiveExponent8 15 41 89 138 142,
  tropicalOverlapDegreeFiveExponent8 15 51 89 126 142,
  tropicalOverlapDegreeFiveExponent8 26 51 69 119 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row36 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 101 138 142,
  tropicalOverlapDegreeFiveExponent8 7 59 112 127 138,
  tropicalOverlapDegreeFiveExponent8 7 69 89 138 142,
  tropicalOverlapDegreeFiveExponent8 15 41 89 138 142,
  tropicalOverlapDegreeFiveExponent8 15 52 89 127 138,
  tropicalOverlapDegreeFiveExponent8 26 52 69 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row36 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row36.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row36 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row36 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
