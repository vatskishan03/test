import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 105. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 105. -/
def tropicalOverlapProvenance8Row105 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 31, coordinateB := 141, sourceJ := 91, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 105. -/
def tropicalOverlapRelation8Row105 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 89 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 89 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row105 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 102 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 111 129 141,
  tropicalOverlapDegreeFiveExponent8 7 76 89 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 89 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 89 129 141,
  tropicalOverlapDegreeFiveExponent8 26 51 76 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row105 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 102 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 112 129 138,
  tropicalOverlapDegreeFiveExponent8 7 76 89 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 89 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 89 129 138,
  tropicalOverlapDegreeFiveExponent8 26 52 76 119 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row105 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row105.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row105 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row105 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
