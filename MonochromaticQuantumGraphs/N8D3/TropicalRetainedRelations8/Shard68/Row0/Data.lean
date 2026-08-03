import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 340. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 340. -/
def tropicalOverlapProvenance8Row340 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 182, coordinateB := 89, sourceJ := 189, coordinateA := 88 }

/-- The explicit sparse target polynomial in overlap row 340. -/
def tropicalOverlapRelation8Row340 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 102 142) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 88 112 130) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 99 142) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 65 89 109 130) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 88 120) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 76 89 117) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row340 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 89 99 142,
  tropicalOverlapDegreeFiveExponent8 6 65 89 109 130,
  tropicalOverlapDegreeFiveExponent8 6 76 88 89 142,
  tropicalOverlapDegreeFiveExponent8 17 39 88 89 142,
  tropicalOverlapDegreeFiveExponent8 17 49 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 49 76 89 117
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row340 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 65 88 102 142,
  tropicalOverlapDegreeFiveExponent8 6 65 88 112 130,
  tropicalOverlapDegreeFiveExponent8 6 76 88 89 142,
  tropicalOverlapDegreeFiveExponent8 17 39 88 89 142,
  tropicalOverlapDegreeFiveExponent8 17 49 88 89 130,
  tropicalOverlapDegreeFiveExponent8 26 49 76 88 120
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row340 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row340.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row340 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row340 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
