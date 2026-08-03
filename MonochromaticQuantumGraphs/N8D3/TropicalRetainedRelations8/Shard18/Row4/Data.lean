import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 94. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 94. -/
def tropicalOverlapProvenance8Row94 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 28, coordinateB := 7, sourceJ := 29, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 94. -/
def tropicalOverlapRelation8Row94 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 51 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 70 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 51 89 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 70 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row94 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 102 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 111 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 89 138,
  tropicalOverlapDegreeFiveExponent8 7 9 42 89 138,
  tropicalOverlapDegreeFiveExponent8 7 9 51 89 129,
  tropicalOverlapDegreeFiveExponent8 7 20 51 70 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row94 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 102 138,
  tropicalOverlapDegreeFiveExponent8 1 7 59 111 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 89 138,
  tropicalOverlapDegreeFiveExponent8 1 15 42 89 138,
  tropicalOverlapDegreeFiveExponent8 1 15 51 89 129,
  tropicalOverlapDegreeFiveExponent8 1 26 51 70 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row94 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row94.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row94 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row94 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
