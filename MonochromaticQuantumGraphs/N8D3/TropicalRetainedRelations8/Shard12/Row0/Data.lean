import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 60. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 60. -/
def tropicalOverlapProvenance8Row60 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 18, coordinateB := 142, sourceJ := 178, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 60. -/
def tropicalOverlapRelation8Row60 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 115 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 126 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 52 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 122 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row60 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 114 126 142,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 51 90 126 142,
  tropicalOverlapDegreeFiveExponent8 20 51 75 122 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row60 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 142,
  tropicalOverlapDegreeFiveExponent8 1 65 115 127 138,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 142,
  tropicalOverlapDegreeFiveExponent8 11 52 90 127 138,
  tropicalOverlapDegreeFiveExponent8 20 52 75 123 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row60 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row60.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row60 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row60 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
