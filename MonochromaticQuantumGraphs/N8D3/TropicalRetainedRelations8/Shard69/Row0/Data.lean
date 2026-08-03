import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 345. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 345. -/
def tropicalOverlapProvenance8Row345 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 184, coordinateB := 1, sourceJ := 186, coordinateA := 0 }

/-- The explicit sparse target polynomial in overlap row 345. -/
def tropicalOverlapRelation8Row345 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 42 89 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 9 52 89 130) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 0 20 52 70 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 39 89 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 9 49 89 130) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 20 49 70 120) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row345 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 102 142,
  tropicalOverlapDegreeFiveExponent8 0 1 59 112 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 89 142,
  tropicalOverlapDegreeFiveExponent8 1 9 39 89 142,
  tropicalOverlapDegreeFiveExponent8 1 9 49 89 130,
  tropicalOverlapDegreeFiveExponent8 1 20 49 70 120
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row345 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 0 1 59 102 142,
  tropicalOverlapDegreeFiveExponent8 0 1 59 112 130,
  tropicalOverlapDegreeFiveExponent8 0 1 70 89 142,
  tropicalOverlapDegreeFiveExponent8 0 9 42 89 142,
  tropicalOverlapDegreeFiveExponent8 0 9 52 89 130,
  tropicalOverlapDegreeFiveExponent8 0 20 52 70 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row345 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row345.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row345 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row345 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
