import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 70. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 70. -/
def tropicalOverlapProvenance8Row70 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 21, coordinateB := 141, sourceJ := 81, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 70. -/
def tropicalOverlapRelation8Row70 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 108 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 109 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 85 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 85 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 116 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 76 116 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row70 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 99 138 141,
  tropicalOverlapDegreeFiveExponent8 7 64 108 129 141,
  tropicalOverlapDegreeFiveExponent8 7 76 85 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 85 129 141,
  tropicalOverlapDegreeFiveExponent8 25 51 76 116 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row70 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 99 138 141,
  tropicalOverlapDegreeFiveExponent8 7 64 109 129 138,
  tropicalOverlapDegreeFiveExponent8 7 76 85 138 141,
  tropicalOverlapDegreeFiveExponent8 17 42 85 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 85 129 138,
  tropicalOverlapDegreeFiveExponent8 25 52 76 116 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row70 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row70.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row70 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row70 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
