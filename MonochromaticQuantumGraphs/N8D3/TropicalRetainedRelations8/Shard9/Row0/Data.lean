import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 45. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 45. -/
def tropicalOverlapProvenance8Row45 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 12, coordinateB := 141, sourceJ := 72, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 45. -/
def tropicalOverlapRelation8Row45 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 87 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 52 87 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row45 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 114 126 141,
  tropicalOverlapDegreeFiveExponent8 1 69 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 41 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 51 87 126 141,
  tropicalOverlapDegreeFiveExponent8 19 51 69 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row45 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 58 115 126 138,
  tropicalOverlapDegreeFiveExponent8 1 69 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 41 87 138 141,
  tropicalOverlapDegreeFiveExponent8 9 52 87 126 138,
  tropicalOverlapDegreeFiveExponent8 19 52 69 122 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row45 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row45.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row45 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row45 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
