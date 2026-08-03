import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 95. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 95. -/
def tropicalOverlapProvenance8Row95 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 28, coordinateB := 141, sourceJ := 88, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 95. -/
def tropicalOverlapRelation8Row95 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 89 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 70 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row95 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 102 138 141,
  tropicalOverlapDegreeFiveExponent8 1 59 111 129 141,
  tropicalOverlapDegreeFiveExponent8 1 70 89 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 89 138 141,
  tropicalOverlapDegreeFiveExponent8 9 51 89 129 141,
  tropicalOverlapDegreeFiveExponent8 20 51 70 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row95 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 102 138 141,
  tropicalOverlapDegreeFiveExponent8 1 59 112 129 138,
  tropicalOverlapDegreeFiveExponent8 1 70 89 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 89 138 141,
  tropicalOverlapDegreeFiveExponent8 9 52 89 129 138,
  tropicalOverlapDegreeFiveExponent8 20 52 70 119 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row95 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row95.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row95 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row95 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
