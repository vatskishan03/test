import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 208. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 208. -/
def tropicalOverlapProvenance8Row208 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 96, coordinateB := 7, sourceJ := 97, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 208. -/
def tropicalOverlapRelation8Row208 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 42 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 90 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 70 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 42 90 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 90 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 70 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row208 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 105 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 115 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 90 141,
  tropicalOverlapDegreeFiveExponent8 7 9 42 90 141,
  tropicalOverlapDegreeFiveExponent8 7 9 52 90 129,
  tropicalOverlapDegreeFiveExponent8 7 20 52 70 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row208 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 105 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 115 129,
  tropicalOverlapDegreeFiveExponent8 1 7 70 90 141,
  tropicalOverlapDegreeFiveExponent8 1 15 42 90 141,
  tropicalOverlapDegreeFiveExponent8 1 15 52 90 129,
  tropicalOverlapDegreeFiveExponent8 1 26 52 70 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row208 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row208.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row208 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row208 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
