import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 44. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 44. -/
def tropicalOverlapProvenance8Row44 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 12, coordinateB := 7, sourceJ := 13, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 44. -/
def tropicalOverlapRelation8Row44 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 87 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 69 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 87 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 69 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row44 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 104 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 114 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 87 138,
  tropicalOverlapDegreeFiveExponent8 7 9 41 87 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 87 126,
  tropicalOverlapDegreeFiveExponent8 7 19 51 69 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row44 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 58 104 138,
  tropicalOverlapDegreeFiveExponent8 1 7 58 114 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 87 138,
  tropicalOverlapDegreeFiveExponent8 1 15 41 87 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 87 126,
  tropicalOverlapDegreeFiveExponent8 1 25 51 69 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row44 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row44.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row44 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row44 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
