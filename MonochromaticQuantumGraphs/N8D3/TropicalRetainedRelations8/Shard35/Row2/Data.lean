import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 177. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 177. -/
def tropicalOverlapProvenance8Row177 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 66, coordinateB := 89, sourceJ := 70, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 177. -/
def tropicalOverlapRelation8Row177 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 89 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 65 86 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 75 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row177 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 89 101 141,
  tropicalOverlapDegreeFiveExponent8 1 64 89 112 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 41 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 89 126,
  tropicalOverlapDegreeFiveExponent8 19 52 75 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row177 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 65 86 101 141,
  tropicalOverlapDegreeFiveExponent8 1 65 86 112 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 41 86 89 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 89 126,
  tropicalOverlapDegreeFiveExponent8 20 52 75 86 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row177 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row177.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row177 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row177 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
