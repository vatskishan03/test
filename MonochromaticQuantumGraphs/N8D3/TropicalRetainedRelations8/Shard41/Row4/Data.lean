import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 209. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 209. -/
def tropicalOverlapProvenance8Row209 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 98, coordinateB := 7, sourceJ := 99, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 209. -/
def tropicalOverlapRelation8Row209 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 76 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 90 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 90 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 76 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row209 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 105 141,
  tropicalOverlapDegreeFiveExponent8 1 7 65 115 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 90 141,
  tropicalOverlapDegreeFiveExponent8 7 11 42 90 141,
  tropicalOverlapDegreeFiveExponent8 7 11 52 90 129,
  tropicalOverlapDegreeFiveExponent8 7 20 52 76 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row209 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 65 105 141,
  tropicalOverlapDegreeFiveExponent8 1 7 65 115 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 90 141,
  tropicalOverlapDegreeFiveExponent8 1 17 42 90 141,
  tropicalOverlapDegreeFiveExponent8 1 17 52 90 129,
  tropicalOverlapDegreeFiveExponent8 1 26 52 76 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row209 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row209.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row209 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row209 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
