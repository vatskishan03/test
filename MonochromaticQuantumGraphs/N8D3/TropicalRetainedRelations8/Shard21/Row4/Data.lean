import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 109. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 109. -/
def tropicalOverlapProvenance8Row109 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 32, coordinateB := 141, sourceJ := 92, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 109. -/
def tropicalOverlapRelation8Row109 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 87 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 87 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row109 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 105 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 114 129 141,
  tropicalOverlapDegreeFiveExponent8 1 70 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 51 87 129 141,
  tropicalOverlapDegreeFiveExponent8 19 51 70 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row109 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 105 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 115 129 138,
  tropicalOverlapDegreeFiveExponent8 1 70 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 52 87 129 138,
  tropicalOverlapDegreeFiveExponent8 19 52 70 122 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row109 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row109.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row109 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row109 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
