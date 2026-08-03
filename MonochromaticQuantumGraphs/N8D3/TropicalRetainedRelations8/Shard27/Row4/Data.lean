import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 139. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 139. -/
def tropicalOverlapProvenance8Row139 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 43, coordinateB := 139, sourceJ := 143, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 139. -/
def tropicalOverlapRelation8Row139 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 65 108 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 17 51 88 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 77 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row139 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 100 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 108 132 139,
  tropicalOverlapDegreeFiveExponent8 7 77 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 43 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 132 139,
  tropicalOverlapDegreeFiveExponent8 26 51 77 116 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row139 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 65 100 138 139,
  tropicalOverlapDegreeFiveExponent8 7 65 108 133 138,
  tropicalOverlapDegreeFiveExponent8 7 77 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 43 88 138 139,
  tropicalOverlapDegreeFiveExponent8 17 51 88 133 138,
  tropicalOverlapDegreeFiveExponent8 26 51 77 117 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row139 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row139.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row139 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row139 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
