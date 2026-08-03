import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 85. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 85. -/
def tropicalOverlapProvenance8Row85 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 24, coordinateB := 87, sourceJ := 32, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 85. -/
def tropicalOverlapRelation8Row85 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 105 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 114 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 102 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 111 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row85 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 87 102 138,
  tropicalOverlapDegreeFiveExponent8 1 58 87 111 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 42 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 87 129,
  tropicalOverlapDegreeFiveExponent8 19 51 70 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row85 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 86 105 138,
  tropicalOverlapDegreeFiveExponent8 1 58 86 114 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 42 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 87 129,
  tropicalOverlapDegreeFiveExponent8 19 51 70 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row85 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row85.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row85 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row85 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
