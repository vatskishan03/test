import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 125. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 125. -/
def tropicalOverlapProvenance8Row125 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 39, coordinateB := 141, sourceJ := 99, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 125. -/
def tropicalOverlapRelation8Row125 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 76 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 76 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row125 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 114 129 141,
  tropicalOverlapDegreeFiveExponent8 7 76 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 90 129 141,
  tropicalOverlapDegreeFiveExponent8 26 51 76 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row125 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 115 129 138,
  tropicalOverlapDegreeFiveExponent8 7 76 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 90 129 138,
  tropicalOverlapDegreeFiveExponent8 26 52 76 122 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row125 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row125.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row125 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row125 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
