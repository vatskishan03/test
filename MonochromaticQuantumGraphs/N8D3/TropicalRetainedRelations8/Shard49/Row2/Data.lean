import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 247. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 247. -/
def tropicalOverlapProvenance8Row247 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 120, coordinateB := 142, sourceJ := 180, coordinateA := 139 }

/-- The explicit sparse target polynomial in overlap row 247. -/
def tropicalOverlapRelation8Row247 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 108 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 6 59 109 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 48 88 130 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 49 88 130 139) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 48 70 117 142) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 49 70 117 139) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row247 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 99 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 108 130 142,
  tropicalOverlapDegreeFiveExponent8 6 70 88 139 142,
  tropicalOverlapDegreeFiveExponent8 15 39 88 139 142,
  tropicalOverlapDegreeFiveExponent8 15 48 88 130 142,
  tropicalOverlapDegreeFiveExponent8 26 48 70 117 142
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row247 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 6 59 99 139 142,
  tropicalOverlapDegreeFiveExponent8 6 59 109 130 139,
  tropicalOverlapDegreeFiveExponent8 6 70 88 139 142,
  tropicalOverlapDegreeFiveExponent8 15 39 88 139 142,
  tropicalOverlapDegreeFiveExponent8 15 49 88 130 139,
  tropicalOverlapDegreeFiveExponent8 26 49 70 117 139
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row247 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row247.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row247 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row247 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
