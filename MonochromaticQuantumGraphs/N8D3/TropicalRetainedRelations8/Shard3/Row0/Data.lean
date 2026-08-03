import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 15. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 15. -/
def tropicalOverlapProvenance8Row15 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 3, coordinateB := 141, sourceJ := 63, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 15. -/
def tropicalOverlapRelation8Row15 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 109 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 88 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 116 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row15 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 98 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 108 126 141,
  tropicalOverlapDegreeFiveExponent8 7 75 88 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 88 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 88 126 141,
  tropicalOverlapDegreeFiveExponent8 26 51 75 116 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row15 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 98 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 109 126 138,
  tropicalOverlapDegreeFiveExponent8 7 75 88 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 88 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 88 126 138,
  tropicalOverlapDegreeFiveExponent8 26 52 75 116 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row15 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row15.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row15 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row15 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
