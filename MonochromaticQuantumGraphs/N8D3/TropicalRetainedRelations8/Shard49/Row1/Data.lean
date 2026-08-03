import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 246. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 246. -/
def tropicalOverlapProvenance8Row246 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 120, coordinateB := 7, sourceJ := 121, coordinateA := 6 }

/-- The explicit sparse target polynomial in overlap row 246. -/
def tropicalOverlapRelation8Row246 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 42 88 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 15 51 88 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 26 51 70 117) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 39 88 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 15 48 88 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 26 48 70 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row246 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 99 139,
  tropicalOverlapDegreeFiveExponent8 6 7 59 108 130,
  tropicalOverlapDegreeFiveExponent8 6 7 70 88 139,
  tropicalOverlapDegreeFiveExponent8 7 15 39 88 139,
  tropicalOverlapDegreeFiveExponent8 7 15 48 88 130,
  tropicalOverlapDegreeFiveExponent8 7 26 48 70 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row246 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 7 59 99 139,
  tropicalOverlapDegreeFiveExponent8 6 7 59 108 130,
  tropicalOverlapDegreeFiveExponent8 6 7 70 88 139,
  tropicalOverlapDegreeFiveExponent8 6 15 42 88 139,
  tropicalOverlapDegreeFiveExponent8 6 15 51 88 130,
  tropicalOverlapDegreeFiveExponent8 6 26 51 70 117
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row246 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row246.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row246 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row246 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
