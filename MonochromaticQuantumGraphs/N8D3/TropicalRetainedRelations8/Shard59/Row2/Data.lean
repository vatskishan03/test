import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 297. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 297. -/
def tropicalOverlapProvenance8Row297 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 148, coordinateB := 6, sourceJ := 149, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 297. -/
def tropicalOverlapRelation8Row297 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 40 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 17 48 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 77 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 11 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 77 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row297 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 103 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 111 133,
  tropicalOverlapDegreeFiveExponent8 0 6 77 89 139,
  tropicalOverlapDegreeFiveExponent8 6 11 40 89 139,
  tropicalOverlapDegreeFiveExponent8 6 11 48 89 133,
  tropicalOverlapDegreeFiveExponent8 6 20 48 77 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row297 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 65 103 139,
  tropicalOverlapDegreeFiveExponent8 0 6 65 111 133,
  tropicalOverlapDegreeFiveExponent8 0 6 77 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 40 89 139,
  tropicalOverlapDegreeFiveExponent8 0 17 48 89 133,
  tropicalOverlapDegreeFiveExponent8 0 26 48 77 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row297 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row297.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row297 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row297 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
