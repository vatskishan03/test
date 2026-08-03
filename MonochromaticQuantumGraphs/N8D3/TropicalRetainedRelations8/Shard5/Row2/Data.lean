import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 27. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 27. -/
def tropicalOverlapProvenance8Row27 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 6, coordinateB := 87, sourceJ := 14, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 27. -/
def tropicalOverlapRelation8Row27 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 104 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 114 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 101 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 111 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 75 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row27 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 87 101 138,
  tropicalOverlapDegreeFiveExponent8 1 64 87 111 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 41 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 51 75 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row27 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 86 104 138,
  tropicalOverlapDegreeFiveExponent8 1 64 86 114 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 41 86 87 138,
  tropicalOverlapDegreeFiveExponent8 11 51 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 51 75 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row27 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row27.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row27 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row27 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
