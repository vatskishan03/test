import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 200. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 200. -/
def tropicalOverlapProvenance8Row200 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 86, coordinateB := 7, sourceJ := 87, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 200. -/
def tropicalOverlapRelation8Row200 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 86 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 86 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 76 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 86 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 86 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 76 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row200 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 102 141,
  tropicalOverlapDegreeFiveExponent8 1 7 64 112 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 86 141,
  tropicalOverlapDegreeFiveExponent8 7 11 42 86 141,
  tropicalOverlapDegreeFiveExponent8 7 11 52 86 129,
  tropicalOverlapDegreeFiveExponent8 7 19 52 76 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row200 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 102 141,
  tropicalOverlapDegreeFiveExponent8 1 7 64 112 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 86 141,
  tropicalOverlapDegreeFiveExponent8 1 17 42 86 141,
  tropicalOverlapDegreeFiveExponent8 1 17 52 86 129,
  tropicalOverlapDegreeFiveExponent8 1 25 52 76 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row200 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row200.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row200 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row200 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
