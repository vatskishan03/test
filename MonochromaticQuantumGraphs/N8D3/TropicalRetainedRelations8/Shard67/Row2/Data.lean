import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 337. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 337. -/
def tropicalOverlapProvenance8Row337 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 181, coordinateB := 89, sourceJ := 187, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 337. -/
def tropicalOverlapRelation8Row337 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 88 112 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 89 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row337 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 89 99 142,
  tropicalOverlapDegreeFiveExponent8 7 59 89 109 130,
  tropicalOverlapDegreeFiveExponent8 7 70 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 42 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 52 70 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row337 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 88 102 142,
  tropicalOverlapDegreeFiveExponent8 7 59 88 112 130,
  tropicalOverlapDegreeFiveExponent8 7 70 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 42 88 89 142,
  tropicalOverlapDegreeFiveExponent8 15 52 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 52 70 88 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row337 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row337.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row337 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row337 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
