import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 268. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 268. -/
def tropicalOverlapProvenance8Row268 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 128, coordinateB := 142, sourceJ := 188, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 268. -/
def tropicalOverlapRelation8Row268 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 111 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 112 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 48 89 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 11 49 89 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 120 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 49 76 120 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row268 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 102 139 142,
  tropicalOverlapDegreeFiveExponent8 0 65 111 130 142,
  tropicalOverlapDegreeFiveExponent8 0 76 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 39 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 48 89 130 142,
  tropicalOverlapDegreeFiveExponent8 20 48 76 120 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row268 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 102 139 142,
  tropicalOverlapDegreeFiveExponent8 0 65 112 130 139,
  tropicalOverlapDegreeFiveExponent8 0 76 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 39 89 139 142,
  tropicalOverlapDegreeFiveExponent8 11 49 89 130 139,
  tropicalOverlapDegreeFiveExponent8 20 49 76 120 139
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row268 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row268.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row268 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row268 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
