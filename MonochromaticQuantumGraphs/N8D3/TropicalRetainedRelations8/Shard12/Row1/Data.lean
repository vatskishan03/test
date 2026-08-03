import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 61. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 61. -/
def tropicalOverlapProvenance8Row61 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 19, coordinateB := 141, sourceJ := 79, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 61. -/
def tropicalOverlapRelation8Row61 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 90 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 52 90 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 75 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row61 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 104 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 114 126 141,
  tropicalOverlapDegreeFiveExponent8 7 75 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 51 90 126 141,
  tropicalOverlapDegreeFiveExponent8 26 51 75 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row61 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 104 138 141,
  tropicalOverlapDegreeFiveExponent8 7 65 115 126 138,
  tropicalOverlapDegreeFiveExponent8 7 75 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 17 52 90 126 138,
  tropicalOverlapDegreeFiveExponent8 26 52 75 122 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row61 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row61.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row61 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row61 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
