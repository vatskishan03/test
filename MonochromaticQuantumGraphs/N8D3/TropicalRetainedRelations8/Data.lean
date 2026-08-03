import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8

/-!
# Common data types for the 360 N8D3 first-overlap relations

Every overlap is recorded as an exact unit multiple of the difference of two
single-variable translations of reconstructed base relations.  Explicit
six-term target polynomials and their equality proofs live in 72 bounded
five-row shards.
-/

namespace MonochromaticQuantumGraphs.N8D3

noncomputable section

set_option maxRecDepth 100000

/-- Exact normalized provenance `epsilon * (x_b B_i - x_a B_j)` for one
first-overlap row. -/
structure TropicalOverlapProvenance8 where
  epsilon : ℤ
  sourceI : Fin 200
  coordinateB : Fin 144
  sourceJ : Fin 200
  coordinateA : Fin 144

/-- The explicit exponent of one squarefree degree-five overlap monomial. -/
def tropicalOverlapDegreeFiveExponent8
    (a b c d e : Fin 144) : LaurentExponent (Fin 144) :=
  Pi.single a (1 : ℤ) + Pi.single b (1 : ℤ) + Pi.single c (1 : ℤ) +
    Pi.single d (1 : ℤ) + Pi.single e (1 : ℤ)

/-- Interpret exact overlap provenance as a sparse Laurent polynomial. -/
def tropicalOverlapProvenancePolynomial8
    (p : TropicalOverlapProvenance8) : LaurentPolynomial (Fin 144) :=
  p.epsilon •
    (LaurentPolynomial.translate (Pi.single p.coordinateB (1 : ℤ))
        (tropicalBaseRelation8 p.sourceI) -
      LaurentPolynomial.translate (Pi.single p.coordinateA (1 : ℤ))
        (tropicalBaseRelation8 p.sourceJ))

/-- Global row represented by one of 72 five-row overlap shards. -/
def tropicalOverlapIndex8 (shard : Fin 72) (row : Fin 5) : Fin 360 :=
  ⟨5 * shard.val + row.val, by omega⟩

/-- The five-row shard containing a global overlap index. -/
def tropicalOverlapShard8 (r : Fin 360) : Fin 72 :=
  ⟨r.val / 5, by omega⟩

/-- The row within the five-row shard containing a global overlap index. -/
def tropicalOverlapRow8 (r : Fin 360) : Fin 5 :=
  ⟨r.val % 5, Nat.mod_lt _ (by omega)⟩

/-- Quotient and remainder reconstruct all 360 overlap indices. -/
theorem tropicalOverlapIndex_recombine8 (r : Fin 360) :
    tropicalOverlapIndex8 (tropicalOverlapShard8 r)
      (tropicalOverlapRow8 r) = r := by
  apply Fin.ext
  simp [tropicalOverlapIndex8, tropicalOverlapShard8, tropicalOverlapRow8]
  omega

end

end MonochromaticQuantumGraphs.N8D3
