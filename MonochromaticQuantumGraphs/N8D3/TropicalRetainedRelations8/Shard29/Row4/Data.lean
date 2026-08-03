import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 149. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 149. -/
def tropicalOverlapProvenance8Row149 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 48, coordinateB := 139, sourceJ := 146, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 149. -/
def tropicalOverlapRelation8Row149 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 111 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 51 89 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 119 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 120 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row149 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 103 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 132 139,
  tropicalOverlapDegreeFiveExponent8 1 71 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 43 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 132 139,
  tropicalOverlapDegreeFiveExponent8 20 51 71 119 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row149 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 103 138 139,
  tropicalOverlapDegreeFiveExponent8 1 59 111 133 138,
  tropicalOverlapDegreeFiveExponent8 1 71 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 43 89 138 139,
  tropicalOverlapDegreeFiveExponent8 9 51 89 133 138,
  tropicalOverlapDegreeFiveExponent8 20 51 71 120 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row149 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row149.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row149 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row149 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
