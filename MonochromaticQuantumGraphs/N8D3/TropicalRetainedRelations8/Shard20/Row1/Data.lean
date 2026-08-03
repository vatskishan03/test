import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 101. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 101. -/
def tropicalOverlapProvenance8Row101 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 30, coordinateB := 7, sourceJ := 31, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 101. -/
def tropicalOverlapRelation8Row101 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 89 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 51 76 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 89 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 89 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 51 76 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row101 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 102 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 111 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 89 138,
  tropicalOverlapDegreeFiveExponent8 7 11 42 89 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 89 129,
  tropicalOverlapDegreeFiveExponent8 7 20 51 76 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row101 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 102 138,
  tropicalOverlapDegreeFiveExponent8 1 7 65 111 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 89 138,
  tropicalOverlapDegreeFiveExponent8 1 17 42 89 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 89 129,
  tropicalOverlapDegreeFiveExponent8 1 26 51 76 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row101 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row101.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row101 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row101 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
