import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 175. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 175. -/
def tropicalOverlapProvenance8Row175 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 64, coordinateB := 90, sourceJ := 76, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 175. -/
def tropicalOverlapRelation8Row175 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 104 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 115 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 86 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row175 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 90 101 141,
  tropicalOverlapDegreeFiveExponent8 1 58 90 112 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 90 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 90 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 90 126,
  tropicalOverlapDegreeFiveExponent8 19 52 69 90 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row175 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 104 141,
  tropicalOverlapDegreeFiveExponent8 1 59 86 115 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 90 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 90 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 90 126,
  tropicalOverlapDegreeFiveExponent8 20 52 69 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row175 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row175.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row175 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row175 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
