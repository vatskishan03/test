import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 83. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 83. -/
def tropicalOverlapProvenance8Row83 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 24, coordinateB := 141, sourceJ := 84, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 83. -/
def tropicalOverlapRelation8Row83 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 111 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 112 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 86 129 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 86 129 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 70 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row83 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 102 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 111 129 141,
  tropicalOverlapDegreeFiveExponent8 1 70 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 51 86 129 141,
  tropicalOverlapDegreeFiveExponent8 19 51 70 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row83 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 102 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 112 129 138,
  tropicalOverlapDegreeFiveExponent8 1 70 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 42 86 138 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 129 138,
  tropicalOverlapDegreeFiveExponent8 19 52 70 119 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row83 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row83.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row83 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row83 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
