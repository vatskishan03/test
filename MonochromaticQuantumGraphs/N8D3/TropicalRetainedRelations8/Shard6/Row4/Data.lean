import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 34. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 34. -/
def tropicalOverlapProvenance8Row34 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 9, coordinateB := 141, sourceJ := 69, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 34. -/
def tropicalOverlapRelation8Row34 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 112 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 52 89 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 69 119 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 69 119 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row34 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 111 126 141,
  tropicalOverlapDegreeFiveExponent8 7 69 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 51 89 126 141,
  tropicalOverlapDegreeFiveExponent8 26 51 69 119 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row34 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 101 138 141,
  tropicalOverlapDegreeFiveExponent8 7 59 112 126 138,
  tropicalOverlapDegreeFiveExponent8 7 69 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 41 89 138 141,
  tropicalOverlapDegreeFiveExponent8 15 52 89 126 138,
  tropicalOverlapDegreeFiveExponent8 26 52 69 119 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row34 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row34.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row34 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row34 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
