import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 74. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 74. -/
def tropicalOverlapProvenance8Row74 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 21, coordinateB := 87, sourceJ := 35, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 74. -/
def tropicalOverlapRelation8Row74 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 105 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 85 114 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 99 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 64 87 108 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 85 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 51 76 87 116) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row74 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 87 99 138,
  tropicalOverlapDegreeFiveExponent8 7 64 87 108 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 42 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 87 129,
  tropicalOverlapDegreeFiveExponent8 25 51 76 87 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row74 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 64 85 105 138,
  tropicalOverlapDegreeFiveExponent8 7 64 85 114 129,
  tropicalOverlapDegreeFiveExponent8 7 76 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 42 85 87 138,
  tropicalOverlapDegreeFiveExponent8 17 51 85 87 129,
  tropicalOverlapDegreeFiveExponent8 25 51 76 85 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row74 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row74.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row74 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row74 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
