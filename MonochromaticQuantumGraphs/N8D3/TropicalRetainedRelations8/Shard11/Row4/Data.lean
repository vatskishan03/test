import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 59. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 59. -/
def tropicalOverlapProvenance8Row59 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 18, coordinateB := 139, sourceJ := 118, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 59. -/
def tropicalOverlapRelation8Row59 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 114 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 90 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 122 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 75 123 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row59 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 114 126 139,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 90 126 139,
  tropicalOverlapDegreeFiveExponent8 20 51 75 122 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row59 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 104 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 114 127 138,
  tropicalOverlapDegreeFiveExponent8 1 75 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 41 90 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 90 127 138,
  tropicalOverlapDegreeFiveExponent8 20 51 75 123 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row59 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row59.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row59 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row59 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
