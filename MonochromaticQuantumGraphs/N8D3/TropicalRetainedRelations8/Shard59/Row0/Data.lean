import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 295. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 295. -/
def tropicalOverlapProvenance8Row295 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 144, coordinateB := 90, sourceJ := 152, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 295. -/
def tropicalOverlapRelation8Row295 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 89 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 103 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 59 90 111 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 71 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 71 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row295 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 90 103 139,
  tropicalOverlapDegreeFiveExponent8 0 59 90 111 133,
  tropicalOverlapDegreeFiveExponent8 0 71 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 40 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 48 89 90 133,
  tropicalOverlapDegreeFiveExponent8 20 48 71 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row295 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 59 89 106 139,
  tropicalOverlapDegreeFiveExponent8 0 59 89 114 133,
  tropicalOverlapDegreeFiveExponent8 0 71 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 40 89 90 139,
  tropicalOverlapDegreeFiveExponent8 9 48 89 90 133,
  tropicalOverlapDegreeFiveExponent8 20 48 71 89 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row295 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row295.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row295 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row295 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
