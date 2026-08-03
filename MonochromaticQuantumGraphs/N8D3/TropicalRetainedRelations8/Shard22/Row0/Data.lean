import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 110. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 110. -/
def tropicalOverlapProvenance8Row110 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 33, coordinateB := 141, sourceJ := 93, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 110. -/
def tropicalOverlapRelation8Row110 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 114 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 115 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 87 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 87 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row110 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 114 129 141,
  tropicalOverlapDegreeFiveExponent8 7 70 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 87 129 141,
  tropicalOverlapDegreeFiveExponent8 25 51 70 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row110 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 105 138 141,
  tropicalOverlapDegreeFiveExponent8 7 58 115 129 138,
  tropicalOverlapDegreeFiveExponent8 7 70 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 42 87 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 87 129 138,
  tropicalOverlapDegreeFiveExponent8 25 52 70 122 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row110 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row110.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row110 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row110 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
