import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 299. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 299. -/
def tropicalOverlapProvenance8Row299 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 148, coordinateB := 7, sourceJ := 151, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 299. -/
def tropicalOverlapRelation8Row299 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 77 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 77 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row299 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 103 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 111 133,
  tropicalOverlapDegreeFiveExponent8 0 7 77 89 139,
  tropicalOverlapDegreeFiveExponent8 7 11 40 89 139,
  tropicalOverlapDegreeFiveExponent8 7 11 48 89 133,
  tropicalOverlapDegreeFiveExponent8 7 20 48 77 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row299 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 65 103 139,
  tropicalOverlapDegreeFiveExponent8 0 7 65 111 133,
  tropicalOverlapDegreeFiveExponent8 0 7 77 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 43 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 51 89 133,
  tropicalOverlapDegreeFiveExponent8 0 26 51 77 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row299 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row299.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row299 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row299 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
