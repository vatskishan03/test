import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 0. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 0. -/
def tropicalOverlapProvenance8Row0 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 0, coordinateB := 141, sourceJ := 60, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 0. -/
def tropicalOverlapRelation8Row0 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 108 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 109 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 85 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 85 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 69 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 69 116 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row0 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 98 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 108 126 141,
  tropicalOverlapDegreeFiveExponent8 7 69 85 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 85 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 85 126 141,
  tropicalOverlapDegreeFiveExponent8 25 51 69 116 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row0 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 98 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 109 126 138,
  tropicalOverlapDegreeFiveExponent8 7 69 85 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 85 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 126 138,
  tropicalOverlapDegreeFiveExponent8 25 52 69 116 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row0 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row0.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row0 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row0 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
