import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 207. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 207. -/
def tropicalOverlapProvenance8Row207 : TropicalOverlapProvenance8 :=
  { epsilon := -1, sourceI := 94, coordinateB := 7, sourceJ := 95, coordinateA := 1 }

/-- The explicit sparse target polynomial in overlap row 207. -/
def tropicalOverlapRelation8Row207 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 42 87 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 17 52 87 129) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 1 25 52 76 122) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 42 87 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 11 52 87 129) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 19 52 76 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row207 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 105 141,
  tropicalOverlapDegreeFiveExponent8 1 7 64 115 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 87 141,
  tropicalOverlapDegreeFiveExponent8 7 11 42 87 141,
  tropicalOverlapDegreeFiveExponent8 7 11 52 87 129,
  tropicalOverlapDegreeFiveExponent8 7 19 52 76 122
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row207 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 1 7 64 105 141,
  tropicalOverlapDegreeFiveExponent8 1 7 64 115 129,
  tropicalOverlapDegreeFiveExponent8 1 7 76 87 141,
  tropicalOverlapDegreeFiveExponent8 1 17 42 87 141,
  tropicalOverlapDegreeFiveExponent8 1 17 52 87 129,
  tropicalOverlapDegreeFiveExponent8 1 25 52 76 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row207 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row207.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row207 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row207 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
