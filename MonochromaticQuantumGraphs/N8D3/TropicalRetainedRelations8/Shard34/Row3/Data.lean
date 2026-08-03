import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 173. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 173. -/
def tropicalOverlapProvenance8Row173 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 64, coordinateB := 89, sourceJ := 68, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 173. -/
def tropicalOverlapRelation8Row173 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 101 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 89 112 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 69 89 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 52 69 86 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row173 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 89 101 141,
  tropicalOverlapDegreeFiveExponent8 1 58 89 112 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 89 126,
  tropicalOverlapDegreeFiveExponent8 19 52 69 89 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row173 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 101 141,
  tropicalOverlapDegreeFiveExponent8 1 59 86 112 126,
  tropicalOverlapDegreeFiveExponent8 1 69 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 41 86 89 141,
  tropicalOverlapDegreeFiveExponent8 9 52 86 89 126,
  tropicalOverlapDegreeFiveExponent8 20 52 69 86 119
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row173 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row173.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row173 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row173 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
