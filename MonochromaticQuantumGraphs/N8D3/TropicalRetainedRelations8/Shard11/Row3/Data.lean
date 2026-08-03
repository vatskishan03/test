import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 58. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 58. -/
def tropicalOverlapProvenance8Row58 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 18, coordinateB := 141, sourceJ := 78, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 58. -/
def tropicalOverlapRelation8Row58 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 90 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row58 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 65 114 126 141,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 11 51 90 126 141,
  tropicalOverlapDegreeFiveExponent8 20 51 75 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row58 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 65 115 126 138,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 141,
  tropicalOverlapDegreeFiveExponent8 11 52 90 126 138,
  tropicalOverlapDegreeFiveExponent8 20 52 75 122 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row58 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row58.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row58 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row58 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
