import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 96. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 96. -/
def tropicalOverlapProvenance8Row96 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 28, coordinateB := 139, sourceJ := 126, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 96. -/
def tropicalOverlapRelation8Row96 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 129 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 130 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row96 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 102 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 129 139,
  tropicalOverlapDegreeFiveExponent8 1 70 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 129 139,
  tropicalOverlapDegreeFiveExponent8 20 51 70 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row96 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 102 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 130 138,
  tropicalOverlapDegreeFiveExponent8 1 70 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 42 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 130 138,
  tropicalOverlapDegreeFiveExponent8 20 51 70 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row96 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row96.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row96 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row96 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
