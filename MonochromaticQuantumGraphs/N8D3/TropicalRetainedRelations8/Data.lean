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

/-- Transport the exact support-rank inverse along a concrete coordinate
identity.  Overlap source replays use this to avoid expanding all 144
coordinates of a matching exponent. -/
theorem tropicalSupportRank8_eq_of_globalCoordinate8
    {x : Fin 252} {i : Fin 144}
    (h : x = tropicalSupportGlobalCoordinate8 i) :
    tropicalSupportRank8 x = i :=
  (congrArg tropicalSupportRank8 h).trans
    (tropicalSupportRank8_globalCoordinate8 i)

/-- Reconstruct a matching exponent from its four concrete supported
coordinates. -/
theorem tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (q : Fin 8 → Fin 3) (m : Fin 105)
    (a0 a1 a2 a3 : Fin 144)
    (h0 : tropicalMatchingCoordinate8 q m 0 =
      tropicalSupportGlobalCoordinate8 a0)
    (h1 : tropicalMatchingCoordinate8 q m 1 =
      tropicalSupportGlobalCoordinate8 a1)
    (h2 : tropicalMatchingCoordinate8 q m 2 =
      tropicalSupportGlobalCoordinate8 a2)
    (h3 : tropicalMatchingCoordinate8 q m 3 =
      tropicalSupportGlobalCoordinate8 a3) :
    tropicalMatchingLocalExponent8 q m =
      Pi.single a0 (1 : ℤ) + Pi.single a1 (1 : ℤ) +
        Pi.single a2 (1 : ℤ) + Pi.single a3 (1 : ℤ) := by
  unfold tropicalMatchingLocalExponent8
  rw [Fin.sum_univ_four,
    tropicalSupportRank8_eq_of_globalCoordinate8 h0,
    tropicalSupportRank8_eq_of_globalCoordinate8 h1,
    tropicalSupportRank8_eq_of_globalCoordinate8 h2,
    tropicalSupportRank8_eq_of_globalCoordinate8 h3]

/-- Interpret exact overlap provenance as a sparse Laurent polynomial. -/
def tropicalOverlapProvenancePolynomial8
    (p : TropicalOverlapProvenance8) : LaurentPolynomial (Fin 144) :=
  p.epsilon •
    (LaurentPolynomial.translate (Pi.single p.coordinateB (1 : ℤ))
        (tropicalBaseRelation8 p.sourceI) -
      LaurentPolynomial.translate (Pi.single p.coordinateA (1 : ℤ))
        (tropicalBaseRelation8 p.sourceJ))

/-- Expand a translated reconstructed base relation without inspecting the
quotient-based support representation of `Finsupp`. -/
theorem tropicalOverlapTranslateBaseRelation8
    (shift : LaurentExponent (Fin 144)) (r : Fin 200) :
    LaurentPolynomial.translate shift (tropicalBaseRelation8 r) =
      ∑ j : Fin 6,
        Finsupp.single
          (shift + tropicalMatchingLocalExponent8 (tropicalBaseColoring8 r)
            (tropicalBaseMatching8 j)) 1 := by
  classical
  unfold tropicalBaseRelation8
  calc
    LaurentPolynomial.translate shift
        (∑ j : Fin 6,
          Finsupp.single
            (tropicalMatchingLocalExponent8 (tropicalBaseColoring8 r)
              (tropicalBaseMatching8 j)) 1) =
      ∑ j : Fin 6,
        LaurentPolynomial.translate shift
          (Finsupp.single
            (tropicalMatchingLocalExponent8 (tropicalBaseColoring8 r)
              (tropicalBaseMatching8 j)) 1) := by
        exact map_sum (LaurentPolynomial.translateLinear shift) _ Finset.univ
    _ = ∑ j : Fin 6,
        Finsupp.single
          (shift + tropicalMatchingLocalExponent8 (tropicalBaseColoring8 r)
            (tropicalBaseMatching8 j)) 1 := by
      apply Finset.sum_congr rfl
      intro j _
      exact LaurentPolynomial.translate_single shift _ 1

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
