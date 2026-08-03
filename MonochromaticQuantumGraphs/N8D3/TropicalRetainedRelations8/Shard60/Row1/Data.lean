import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 301. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 301. -/
def tropicalOverlapProvenance8Row301 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 150, coordinateB := 90, sourceJ := 158, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 301. -/
def tropicalOverlapRelation8Row301 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 106 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 89 114 133) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 103 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 90 111 133) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 77 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row301 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 90 103 139,
  tropicalOverlapDegreeFiveExponent8 1 65 90 111 133,
  tropicalOverlapDegreeFiveExponent8 1 77 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 43 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 90 133,
  tropicalOverlapDegreeFiveExponent8 20 51 77 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row301 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 89 106 139,
  tropicalOverlapDegreeFiveExponent8 1 65 89 114 133,
  tropicalOverlapDegreeFiveExponent8 1 77 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 43 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 51 89 90 133,
  tropicalOverlapDegreeFiveExponent8 20 51 77 89 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row301 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row301.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row301 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row301 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
