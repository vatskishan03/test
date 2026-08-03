import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 48. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 48. -/
def tropicalOverlapProvenance8Row48 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 14, coordinateB := 141, sourceJ := 74, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 48. -/
def tropicalOverlapRelation8Row48 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 114 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 115 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 87 126 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 87 126 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 122 141) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 122 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row48 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 64 114 126 141,
  tropicalOverlapDegreeFiveExponent8 1 75 87 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 87 138 141,
  tropicalOverlapDegreeFiveExponent8 11 51 87 126 141,
  tropicalOverlapDegreeFiveExponent8 19 51 75 122 141
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row48 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 104 138 141,
  tropicalOverlapDegreeFiveExponent8 1 64 115 126 138,
  tropicalOverlapDegreeFiveExponent8 1 75 87 138 141,
  tropicalOverlapDegreeFiveExponent8 11 41 87 138 141,
  tropicalOverlapDegreeFiveExponent8 11 52 87 126 138,
  tropicalOverlapDegreeFiveExponent8 19 52 75 122 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row48 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row48.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row48 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row48 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
