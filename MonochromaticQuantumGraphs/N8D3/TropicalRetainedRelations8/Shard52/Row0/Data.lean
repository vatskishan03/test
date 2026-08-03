import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 260. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 260. -/
def tropicalOverlapProvenance8Row260 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 124, coordinateB := 7, sourceJ := 127, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 260. -/
def tropicalOverlapRelation8Row260 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 51 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 9 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 20 48 70 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row260 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 102 139,
  tropicalOverlapDegreeFiveExponent8 0 7 59 111 130,
  tropicalOverlapDegreeFiveExponent8 0 7 70 89 139,
  tropicalOverlapDegreeFiveExponent8 7 9 39 89 139,
  tropicalOverlapDegreeFiveExponent8 7 9 48 89 130,
  tropicalOverlapDegreeFiveExponent8 7 20 48 70 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row260 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 7 59 102 139,
  tropicalOverlapDegreeFiveExponent8 0 7 59 111 130,
  tropicalOverlapDegreeFiveExponent8 0 7 70 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 42 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 51 89 130,
  tropicalOverlapDegreeFiveExponent8 0 26 51 70 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row260 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row260.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row260 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row260 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
