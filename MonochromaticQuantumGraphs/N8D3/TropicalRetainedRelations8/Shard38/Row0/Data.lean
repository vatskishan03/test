import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data

/-! Explicit data for first-overlap row 190. -/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact two-base-source provenance for overlap row 190. -/
def tropicalOverlapProvenance8Row190 : TropicalOverlapProvenance8 :=
  { epsilon := 1, sourceI := 80, coordinateB := 90, sourceJ := 97, coordinateA := 85 }

/-- The explicit sparse target polynomial in overlap row 190. -/
def tropicalOverlapRelation8Row190 : LaurentPolynomial (Fin 144) :=
  Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 99 141) 1 +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 58 90 109 129) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 105 141) 1) +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 7 59 85 115 129) 1) +
    Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 25 52 70 90 116) 1 +
    (-Finsupp.single
      (tropicalOverlapDegreeFiveExponent8 26 52 70 85 122) 1)

/-- Explicit shifted exponents of the six monomials from source `B_i`. -/
def tropicalOverlapSourceIExponent8Row190 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 58 90 99 141,
  tropicalOverlapDegreeFiveExponent8 7 58 90 109 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 90 129,
  tropicalOverlapDegreeFiveExponent8 25 52 70 90 116
]

/-- Explicit shifted exponents of the six monomials from source `B_j`. -/
def tropicalOverlapSourceJExponent8Row190 :
    Fin 6 → LaurentExponent (Fin 144) :=
![
  tropicalOverlapDegreeFiveExponent8 7 59 85 105 141,
  tropicalOverlapDegreeFiveExponent8 7 59 85 115 129,
  tropicalOverlapDegreeFiveExponent8 7 70 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 42 85 90 141,
  tropicalOverlapDegreeFiveExponent8 15 52 85 90 129,
  tropicalOverlapDegreeFiveExponent8 26 52 70 85 122
]

/-- The exact translated-source combination after exponent replay. -/
def tropicalOverlapSourceCombination8Row190 :
    LaurentPolynomial (Fin 144) :=
  tropicalOverlapProvenance8Row190.epsilon •
    ((∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceIExponent8Row190 j) 1) -
      ∑ j : Fin 6,
        Finsupp.single (tropicalOverlapSourceJExponent8Row190 j) 1)

end

end MonochromaticQuantumGraphs.N8D3
