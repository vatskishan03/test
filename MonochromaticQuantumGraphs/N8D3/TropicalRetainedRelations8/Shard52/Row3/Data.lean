import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 263. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 263. -/
def tropicalOverlapProvenance8Row263 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 125, coordinateB := 142, sourceJ := 185, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 263. -/
def tropicalOverlapRelation8Row263 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 111 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 112 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 89 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 89 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 120 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row263 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 102 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 111 130 142,
  tropicalOverlapDegreeFiveExponent8 6 70 89 139 142,
  tropicalOverlapDegreeFiveExponent8 15 39 89 139 142,
  tropicalOverlapDegreeFiveExponent8 15 48 89 130 142,
  tropicalOverlapDegreeFiveExponent8 26 48 70 120 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row263 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 102 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 112 130 139,
  tropicalOverlapDegreeFiveExponent8 6 70 89 139 142,
  tropicalOverlapDegreeFiveExponent8 15 39 89 139 142,
  tropicalOverlapDegreeFiveExponent8 15 49 89 130 139,
  tropicalOverlapDegreeFiveExponent8 26 49 70 120 139
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row263 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row263.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row263 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row263 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
