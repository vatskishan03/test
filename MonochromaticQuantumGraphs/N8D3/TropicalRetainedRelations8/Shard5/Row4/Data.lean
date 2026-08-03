import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 29. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 29. -/
def tropicalOverlapProvenance8Row29 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 7, coordinateB := 141, sourceJ := 67, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 29. -/
def tropicalOverlapRelation8Row29 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 86 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 86 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 75 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 75 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row29 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 64 111 126 141,
  tropicalOverlapDegreeFiveExponent8 7 75 86 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 86 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 86 126 141,
  tropicalOverlapDegreeFiveExponent8 25 51 75 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row29 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 64 112 126 138,
  tropicalOverlapDegreeFiveExponent8 7 75 86 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 86 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 86 126 138,
  tropicalOverlapDegreeFiveExponent8 25 52 75 119 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row29 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row29.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row29 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row29 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
