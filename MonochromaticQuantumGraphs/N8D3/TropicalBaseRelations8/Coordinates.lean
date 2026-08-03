import MonochromaticQuantumGraphs.LaurentCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Data
import MonochromaticQuantumGraphs.N8D3.TropicalSupportCoordinates8

/-!
# Coordinate algebra for the 200 N8D3 base relations

This module ranks canonical global support coordinates, reconstructs each
matching monomial's local Laurent exponent, and proves that its evaluation is
the corresponding official `pmTerm8` monomial.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000

/-- Rank a global coordinate among the increasing canonical support table.
The modulo makes the definition total; on a supported coordinate the rank is
strictly below 144 and the inverse theorem below kernel-checks exactness. -/
def tropicalSupportRank8 (x : Fin 252) : Fin 144 :=
  ⟨(Finset.univ.filter (fun i : Fin 144 ↦
      tropicalSupportGlobalCoordinate8 i < x)).card % 144,
    Nat.mod_lt _ (by omega)⟩

/-- Ranking and indexing are inverse on every supported global coordinate. -/
theorem tropicalSupportGlobalCoordinate8_rank8
    (x : Fin 252) (hx : tropicalSupportCoord8 x = true) :
    tropicalSupportGlobalCoordinate8 (tropicalSupportRank8 x) = x := by
  revert x
  decide

/-- Ranking the existing increasing table recovers its original local
coordinate. -/
theorem tropicalSupportRank8_globalCoordinate8 (i : Fin 144) :
    tropicalSupportRank8 (tropicalSupportGlobalCoordinate8 i) = i := by
  revert i
  decide

/-- Each of the four coordinates of a supported matching monomial is itself
in the canonical support. -/
theorem tropicalMatchingSupported8_coordinate
    {q : Fin 8 → Fin 3} {m : Fin 105}
    (h : tropicalMatchingSupported8 q m = true) (k : Fin 4) :
    tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m k) = true := by
  simp only [tropicalMatchingSupported8, Bool.and_eq_true_iff] at h
  rcases h with ⟨⟨⟨h0, h1⟩, h2⟩, h3⟩
  have hk : k = 0 ∨ k = 1 ∨ k = 2 ∨ k = 3 := by
    omega
  rcases hk with hk | hk | hk | hk
  · simpa [hk] using h0
  · simpa [hk] using h1
  · simpa [hk] using h2
  · simpa [hk] using h3

/-- Reconstruct one supported matching monomial's exponent directly from
the existing matching table and the support-rank inverse. -/
def tropicalMatchingLocalExponent8
    (q : Fin 8 → Fin 3) (m : Fin 105) : LaurentExponent (Fin 144) :=
  ∑ k : Fin 4,
    Pi.single (tropicalSupportRank8 (tropicalMatchingCoordinate8 q m k)) 1

private theorem laurentEval_piSingle_one8
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (x : ι → ℂ) (i : ι) :
    laurentEval x (Pi.single i (1 : ℤ)) = x i := by
  simp [laurentEval, Pi.single_apply]

/-- Evaluation of the reconstructed local exponent is exactly the official
`pmTerm8` monomial. -/
theorem laurentEval_tropicalMatchingLocalExponent8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    {q : Fin 8 → Fin 3} {m : Fin 105}
    (hm : tropicalMatchingSupported8 q m = true) :
    laurentEval (tropicalSupportWeight8 W)
        (tropicalMatchingLocalExponent8 q m) =
      pmTerm8 W q m := by
  classical
  unfold tropicalMatchingLocalExponent8
  rw [laurentEval_finset_sum
    (tropicalSupportWeight8 W)
    (tropicalSupportWeight8_ne_zero hSupport) Finset.univ]
  unfold pmTerm8
  apply Finset.prod_congr rfl
  intro k _
  rw [laurentEval_piSingle_one8]
  unfold tropicalSupportWeight8 tropicalSupportEdge8
  rw [tropicalSupportGlobalCoordinate8_rank8 _
    (tropicalMatchingSupported8_coordinate hm k)]
  exact congrArg W
    (tropicalEdgeOfGlobalCoordinate8_coordinate8
      (matchingEdges8_lt m k) (q (matchingEdges8 m k).1)
        (q (matchingEdges8 m k).2))

end


end MonochromaticQuantumGraphs.N8D3
