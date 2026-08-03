import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 86. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 86. -/
def tropicalOverlapProvenance8Row86 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 24, coordinateB := 90, sourceJ := 36, coordinateA := 86 }

/-- The explicit sparse target polynomial in overlap row 86. -/
def tropicalOverlapRelation8Row86 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 102 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 58 90 111 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 105 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 59 86 114 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 19 51 70 90 119) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 20 51 70 86 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row86 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 58 90 102 138,
  tropicalOverlapDegreeFiveExponent8 1 58 90 111 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 42 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 90 129,
  tropicalOverlapDegreeFiveExponent8 19 51 70 90 119
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row86 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 59 86 105 138,
  tropicalOverlapDegreeFiveExponent8 1 59 86 114 129,
  tropicalOverlapDegreeFiveExponent8 1 70 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 42 86 90 138,
  tropicalOverlapDegreeFiveExponent8 9 51 86 90 129,
  tropicalOverlapDegreeFiveExponent8 20 51 70 86 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row86 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row86.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row86 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row86 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
