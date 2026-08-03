import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 261. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 261. -/
def tropicalOverlapProvenance8Row261 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 124, coordinateB := 142, sourceJ := 184, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 261. -/
def tropicalOverlapRelation8Row261 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 111 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 112 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 48 89 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 9 49 89 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 70 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 70 120 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row261 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 102 139 142,
  tropicalOverlapDegreeFiveExponent8 0 59 111 130 142,
  tropicalOverlapDegreeFiveExponent8 0 70 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 39 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 48 89 130 142,
  tropicalOverlapDegreeFiveExponent8 20 48 70 120 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row261 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 102 139 142,
  tropicalOverlapDegreeFiveExponent8 0 59 112 130 139,
  tropicalOverlapDegreeFiveExponent8 0 70 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 39 89 139 142,
  tropicalOverlapDegreeFiveExponent8 9 49 89 130 139,
  tropicalOverlapDegreeFiveExponent8 20 49 70 120 139
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row261 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row261.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row261 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row261 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
