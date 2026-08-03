import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 152. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 152. -/
def tropicalOverlapProvenance8Row152 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 50, coordinateB := 139, sourceJ := 150, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 152. -/
def tropicalOverlapRelation8Row152 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 111 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 51 89 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row152 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 103 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 111 132 139,
  tropicalOverlapDegreeFiveExponent8 1 77 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 43 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 132 139,
  tropicalOverlapDegreeFiveExponent8 20 51 77 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row152 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 103 138 139,
  tropicalOverlapDegreeFiveExponent8 1 65 111 133 138,
  tropicalOverlapDegreeFiveExponent8 1 77 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 43 89 138 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 133 138,
  tropicalOverlapDegreeFiveExponent8 20 51 77 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row152 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row152.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row152 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row152 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
