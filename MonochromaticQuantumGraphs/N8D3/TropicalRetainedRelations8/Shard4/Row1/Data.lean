import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 21. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 21. -/
def tropicalOverlapProvenance8Row21 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 4, coordinateB := 87, sourceJ := 12, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 21. -/
def tropicalOverlapRelation8Row21 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 86 114 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 87 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 69 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row21 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 87 101 138,
  tropicalOverlapDegreeFiveExponent8 1 58 87 111 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 41 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 51 69 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row21 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 86 104 138,
  tropicalOverlapDegreeFiveExponent8 1 58 86 114 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 41 86 87 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 51 69 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row21 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row21.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row21 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row21 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
