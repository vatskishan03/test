import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 259. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 259. -/
def tropicalOverlapProvenance8Row259 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 124, coordinateB := 1, sourceJ := 126, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 259. -/
def tropicalOverlapRelation8Row259 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 89 139) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 51 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 51 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 89 139) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 48 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 48 70 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row259 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 102 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 111 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 89 139,
  tropicalOverlapDegreeFiveExponent8 1 9 39 89 139,
  tropicalOverlapDegreeFiveExponent8 1 9 48 89 130,
  tropicalOverlapDegreeFiveExponent8 1 20 48 70 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row259 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 102 139,
  tropicalOverlapDegreeFiveExponent8 0 1 59 111 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 89 139,
  tropicalOverlapDegreeFiveExponent8 0 9 42 89 139,
  tropicalOverlapDegreeFiveExponent8 0 9 51 89 130,
  tropicalOverlapDegreeFiveExponent8 0 20 51 70 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row259 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row259.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row259 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row259 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
