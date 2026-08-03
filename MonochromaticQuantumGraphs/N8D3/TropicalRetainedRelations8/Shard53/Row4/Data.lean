import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 269. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 269. -/
def tropicalOverlapProvenance8Row269 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 128, coordinateB := 90, sourceJ := 136, coordinateA := 89 }

/-- The explicit sparse target polynomial in overlap row 269. -/
def tropicalOverlapRelation8Row269 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 105 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 89 114 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 102 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 65 90 111 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 89 123) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 48 76 90 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row269 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 90 102 139,
  tropicalOverlapDegreeFiveExponent8 0 65 90 111 130,
  tropicalOverlapDegreeFiveExponent8 0 76 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 39 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 48 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 48 76 90 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row269 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 65 89 105 139,
  tropicalOverlapDegreeFiveExponent8 0 65 89 114 130,
  tropicalOverlapDegreeFiveExponent8 0 76 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 39 89 90 139,
  tropicalOverlapDegreeFiveExponent8 11 48 89 90 130,
  tropicalOverlapDegreeFiveExponent8 20 48 76 89 123
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row269 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row269.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row269 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row269 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
