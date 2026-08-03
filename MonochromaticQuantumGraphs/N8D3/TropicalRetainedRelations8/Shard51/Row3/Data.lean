import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 258. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 258. -/
def tropicalOverlapProvenance8Row258 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 124, coordinateB := 6, sourceJ := 125, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 258. -/
def tropicalOverlapRelation8Row258 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 39 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 15 48 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 26 48 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 9 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 20 48 70 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row258 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 102 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 130,
  tropicalOverlapDegreeFiveExponent8 0 6 70 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 39 89 139,
  tropicalOverlapDegreeFiveExponent8 6 9 48 89 130,
  tropicalOverlapDegreeFiveExponent8 6 20 48 70 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row258 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 6 59 102 139,
  tropicalOverlapDegreeFiveExponent8 0 6 59 111 130,
  tropicalOverlapDegreeFiveExponent8 0 6 70 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 39 89 139,
  tropicalOverlapDegreeFiveExponent8 0 15 48 89 130,
  tropicalOverlapDegreeFiveExponent8 0 26 48 70 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row258 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row258.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row258 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row258 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
