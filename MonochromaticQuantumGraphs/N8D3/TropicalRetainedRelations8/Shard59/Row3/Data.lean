import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 298. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 298. -/
def tropicalOverlapProvenance8Row298 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 148, coordinateB := 1, sourceJ := 150, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 298. -/
def tropicalOverlapRelation8Row298 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 43 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 11 51 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 77 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 11 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 77 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row298 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 103 139,
  tropicalOverlapDegreeFiveExponent8 0 1 65 111 133,
  tropicalOverlapDegreeFiveExponent8 0 1 77 89 139,
  tropicalOverlapDegreeFiveExponent8 1 11 40 89 139,
  tropicalOverlapDegreeFiveExponent8 1 11 48 89 133,
  tropicalOverlapDegreeFiveExponent8 1 20 48 77 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row298 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 65 103 139,
  tropicalOverlapDegreeFiveExponent8 0 1 65 111 133,
  tropicalOverlapDegreeFiveExponent8 0 1 77 89 139,
  tropicalOverlapDegreeFiveExponent8 0 11 43 89 139,
  tropicalOverlapDegreeFiveExponent8 0 11 51 89 133,
  tropicalOverlapDegreeFiveExponent8 0 20 51 77 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row298 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row298.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row298 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row298 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
