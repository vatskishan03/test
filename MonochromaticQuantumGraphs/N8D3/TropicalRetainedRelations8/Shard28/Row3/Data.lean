import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 143. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 143. -/
def tropicalOverlapProvenance8Row143 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 44, coordinateB := 90, sourceJ := 56, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 143. -/
def tropicalOverlapRelation8Row143 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 103 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 111 132) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 106 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 114 132) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 71 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 71 86 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row143 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 90 103 138,
  tropicalOverlapDegreeFiveExponent8 1 58 90 111 132,
  tropicalOverlapDegreeFiveExponent8 1 71 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 43 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 90 132,
  tropicalOverlapDegreeFiveExponent8 19 51 71 90 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row143 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 106 138,
  tropicalOverlapDegreeFiveExponent8 1 59 86 114 132,
  tropicalOverlapDegreeFiveExponent8 1 71 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 43 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 90 132,
  tropicalOverlapDegreeFiveExponent8 20 51 71 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row143 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row143.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row143 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row143 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
