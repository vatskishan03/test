import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 69. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 69. -/
def tropicalOverlapProvenance8Row69 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 20, coordinateB := 90, sourceJ := 37, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 69. -/
def tropicalOverlapRelation8Row69 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 99 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 108 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 105 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 114 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 70 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 70 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row69 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 90 99 138,
  tropicalOverlapDegreeFiveExponent8 7 58 90 108 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 42 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 90 129,
  tropicalOverlapDegreeFiveExponent8 25 51 70 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row69 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 105 138,
  tropicalOverlapDegreeFiveExponent8 7 59 85 114 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 42 85 90 138,
  tropicalOverlapDegreeFiveExponent8 15 51 85 90 129,
  tropicalOverlapDegreeFiveExponent8 26 51 70 85 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row69 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row69.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row69 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row69 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
