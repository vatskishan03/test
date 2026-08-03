import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 57. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 57. -/
def tropicalOverlapProvenance8Row57 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 18, coordinateB := 7, sourceJ := 19, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 57. -/
def tropicalOverlapRelation8Row57 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 41 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 75 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 41 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 90 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 75 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row57 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 104 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 114 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 90 138,
  tropicalOverlapDegreeFiveExponent8 7 11 41 90 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 90 126,
  tropicalOverlapDegreeFiveExponent8 7 20 51 75 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row57 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 104 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 114 126,
  tropicalOverlapDegreeFiveExponent8 1 7 75 90 138,
  tropicalOverlapDegreeFiveExponent8 1 17 41 90 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 90 126,
  tropicalOverlapDegreeFiveExponent8 1 26 51 75 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row57 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row57.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row57 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row57 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
