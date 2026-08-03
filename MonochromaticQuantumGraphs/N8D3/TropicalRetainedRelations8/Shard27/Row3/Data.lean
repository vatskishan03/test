import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 138. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 138. -/
def tropicalOverlapProvenance8Row138 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 42, coordinateB := 139, sourceJ := 141, coordinateA := 138 }

/-- The explicit sparse target polynomial in overlap row 138. -/
def tropicalOverlapRelation8Row138 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 108 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 132 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 15 51 88 133 138) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 116 139) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 51 71 117 138) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row138 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 100 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 108 132 139,
  tropicalOverlapDegreeFiveExponent8 7 71 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 43 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 132 139,
  tropicalOverlapDegreeFiveExponent8 26 51 71 116 139
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row138 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 100 138 139,
  tropicalOverlapDegreeFiveExponent8 7 59 108 133 138,
  tropicalOverlapDegreeFiveExponent8 7 71 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 43 88 138 139,
  tropicalOverlapDegreeFiveExponent8 15 51 88 133 138,
  tropicalOverlapDegreeFiveExponent8 26 51 71 117 138
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row138 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row138.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row138 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row138 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
