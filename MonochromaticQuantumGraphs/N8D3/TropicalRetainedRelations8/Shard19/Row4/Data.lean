import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 99. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 99. -/
def tropicalOverlapProvenance8Row99 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 29, coordinateB := 139, sourceJ := 127, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 99. -/
def tropicalOverlapRelation8Row99 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 111 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row99 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 102 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 111 129 139,
  tropicalOverlapDegreeFiveExponent8 7 70 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 89 129 139,
  tropicalOverlapDegreeFiveExponent8 26 51 70 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row99 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 102 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 111 130 138,
  tropicalOverlapDegreeFiveExponent8 7 70 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 89 130 138,
  tropicalOverlapDegreeFiveExponent8 26 51 70 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row99 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row99.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row99 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row99 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
