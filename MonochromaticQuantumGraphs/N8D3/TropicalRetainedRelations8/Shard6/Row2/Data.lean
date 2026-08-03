import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 32. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 32. -/
def tropicalOverlapProvenance8Row32 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 8, coordinateB := 139, sourceJ := 106, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 32. -/
def tropicalOverlapRelation8Row32 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 126 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 127 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 69 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row32 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 101 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 126 139,
  tropicalOverlapDegreeFiveExponent8 1 69 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 41 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 126 139,
  tropicalOverlapDegreeFiveExponent8 20 51 69 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row32 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 101 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 127 138,
  tropicalOverlapDegreeFiveExponent8 1 69 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 41 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 127 138,
  tropicalOverlapDegreeFiveExponent8 20 51 69 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row32 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row32.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row32 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row32 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
