import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 88. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 88. -/
def tropicalOverlapProvenance8Row88 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 26, coordinateB := 7, sourceJ := 27, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 88. -/
def tropicalOverlapRelation8Row88 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 86 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 76 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 86 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 86 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 76 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row88 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 102 138,
  tropicalOverlapDegreeFiveExponent8 1 7 64 111 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 86 138,
  tropicalOverlapDegreeFiveExponent8 7 11 42 86 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 86 129,
  tropicalOverlapDegreeFiveExponent8 7 19 51 76 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row88 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 102 138,
  tropicalOverlapDegreeFiveExponent8 1 7 64 111 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 86 138,
  tropicalOverlapDegreeFiveExponent8 1 17 42 86 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 86 129,
  tropicalOverlapDegreeFiveExponent8 1 25 51 76 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row88 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row88.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row88 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row88 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
