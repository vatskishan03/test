import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 222. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 222. -/
def tropicalOverlapProvenance8Row222 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 104, coordinateB := 6, sourceJ := 105, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 222. -/
def tropicalOverlapRelation8Row222 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 38 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 127) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 69 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 38 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 127) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 69 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row222 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 101 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 127,
  tropicalOverlapDegreeFiveExponent8 0 6 69 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 38 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 48 89 127,
  tropicalOverlapDegreeFiveExponent8 6 20 48 69 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row222 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 101 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 127,
  tropicalOverlapDegreeFiveExponent8 0 6 69 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 38 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 48 89 127,
  tropicalOverlapDegreeFiveExponent8 0 26 48 69 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row222 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row222.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row222 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row222 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
