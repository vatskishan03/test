import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 111. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 111. -/
def tropicalOverlapProvenance8Row111 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 34, coordinateB := 7, sourceJ := 35, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 111. -/
def tropicalOverlapRelation8Row111 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 87 138) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 51 87 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 51 76 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 87 138) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 51 87 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 51 76 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row111 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 105 138,
  tropicalOverlapDegreeFiveExponent8 1 7 64 114 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 87 138,
  tropicalOverlapDegreeFiveExponent8 7 11 42 87 138,
  tropicalOverlapDegreeFiveExponent8 7 11 51 87 129,
  tropicalOverlapDegreeFiveExponent8 7 19 51 76 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row111 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 105 138,
  tropicalOverlapDegreeFiveExponent8 1 7 64 114 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 87 138,
  tropicalOverlapDegreeFiveExponent8 1 17 42 87 138,
  tropicalOverlapDegreeFiveExponent8 1 17 51 87 129,
  tropicalOverlapDegreeFiveExponent8 1 25 51 76 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row111 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row111.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row111 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row111 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
