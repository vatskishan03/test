import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 178. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 178. -/
def tropicalOverlapProvenance8Row178 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 66, coordinateB := 87, sourceJ := 74, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 178. -/
def tropicalOverlapRelation8Row178 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 104 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 86 115 126) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 101 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 64 87 112 126) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 86 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 52 75 87 119) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row178 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 87 101 141,
  tropicalOverlapDegreeFiveExponent8 1 64 87 112 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 87 141,
  tropicalOverlapDegreeFiveExponent8 11 41 86 87 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 52 75 87 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row178 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 64 86 104 141,
  tropicalOverlapDegreeFiveExponent8 1 64 86 115 126,
  tropicalOverlapDegreeFiveExponent8 1 75 86 87 141,
  tropicalOverlapDegreeFiveExponent8 11 41 86 87 141,
  tropicalOverlapDegreeFiveExponent8 11 52 86 87 126,
  tropicalOverlapDegreeFiveExponent8 19 52 75 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row178 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row178.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row178 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row178 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
