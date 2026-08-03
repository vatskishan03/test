import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 204. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 204. -/
def tropicalOverlapProvenance8Row204 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 88, coordinateB := 7, sourceJ := 89, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 204. -/
def tropicalOverlapRelation8Row204 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 89 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 89 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 70 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 89 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 89 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 70 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row204 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 102 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 112 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 89 141,
  tropicalOverlapDegreeFiveExponent8 7 9 42 89 141,
  tropicalOverlapDegreeFiveExponent8 7 9 52 89 129,
  tropicalOverlapDegreeFiveExponent8 7 20 52 70 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row204 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 102 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 112 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 89 141,
  tropicalOverlapDegreeFiveExponent8 1 15 42 89 141,
  tropicalOverlapDegreeFiveExponent8 1 15 52 89 129,
  tropicalOverlapDegreeFiveExponent8 1 26 52 70 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row204 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row204.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row204 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row204 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
