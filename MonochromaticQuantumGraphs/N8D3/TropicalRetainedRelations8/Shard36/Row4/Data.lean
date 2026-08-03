import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 184. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 184. -/
def tropicalOverlapProvenance8Row184 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 76, coordinateB := 7, sourceJ := 77, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 184. -/
def tropicalOverlapRelation8Row184 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 41 90 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 15 52 90 126) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 26 52 69 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 41 90 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 52 90 126) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 52 69 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row184 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 104 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 115 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 90 141,
  tropicalOverlapDegreeFiveExponent8 7 9 41 90 141,
  tropicalOverlapDegreeFiveExponent8 7 9 52 90 126,
  tropicalOverlapDegreeFiveExponent8 7 20 52 69 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row184 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 59 104 141,
  tropicalOverlapDegreeFiveExponent8 1 7 59 115 126,
  tropicalOverlapDegreeFiveExponent8 1 7 69 90 141,
  tropicalOverlapDegreeFiveExponent8 1 15 41 90 141,
  tropicalOverlapDegreeFiveExponent8 1 15 52 90 126,
  tropicalOverlapDegreeFiveExponent8 1 26 52 69 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row184 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row184.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row184 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row184 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
