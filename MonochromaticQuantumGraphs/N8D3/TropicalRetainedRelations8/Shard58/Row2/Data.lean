import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 292. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 292. -/
def tropicalOverlapProvenance8Row292 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 144, coordinateB := 6, sourceJ := 145, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 292. -/
def tropicalOverlapRelation8Row292 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 40 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 133) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 71 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 40 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 133) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 71 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row292 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 103 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 133,
  tropicalOverlapDegreeFiveExponent8 0 6 71 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 40 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 48 89 133,
  tropicalOverlapDegreeFiveExponent8 6 20 48 71 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row292 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 103 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 133,
  tropicalOverlapDegreeFiveExponent8 0 6 71 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 40 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 48 89 133,
  tropicalOverlapDegreeFiveExponent8 0 26 48 71 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row292 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row292.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row292 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row292 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
