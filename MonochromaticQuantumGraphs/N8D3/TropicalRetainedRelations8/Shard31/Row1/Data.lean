import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 156. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 156. -/
def tropicalOverlapProvenance8Row156 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 56, coordinateB := 7, sourceJ := 57, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 156. -/
def tropicalOverlapRelation8Row156 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 43 90 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 90 132) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 71 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 43 90 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 90 132) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 71 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row156 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 106 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 114 132,
  tropicalOverlapDegreeFiveExponent8 1 7 71 90 138,
  tropicalOverlapDegreeFiveExponent8 7 9 43 90 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 90 132,
  tropicalOverlapDegreeFiveExponent8 7 20 51 71 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row156 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 106 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 114 132,
  tropicalOverlapDegreeFiveExponent8 1 7 71 90 138,
  tropicalOverlapDegreeFiveExponent8 1 15 43 90 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 90 132,
  tropicalOverlapDegreeFiveExponent8 1 26 51 71 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row156 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row156.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row156 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row156 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
