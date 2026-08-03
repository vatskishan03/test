import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentOffCube8
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentTerminalAlgebra8

/-!
# Common branch-zero derivative contradiction

This module regenerates the two branch-zero derivative identities from the
official perfect-matching sum.  Its character hypotheses are the four rows
actually used by the recovered C3-0 state; the residual branch dispatch must
separately prove those same rows for each of C3-0, C9-0 and C15-0.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 10000

/-- Restrict the official 105-column sum to precisely the supported columns
for any fixed coloring. -/
theorem pmSumN8_eq_sum_tropicalSupportedTerms8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (q : Fin 8 → Fin 3) :
    pmSumN 8 3 W q =
      ∑ m ∈ Finset.univ.filter
        (fun m : Fin 105 => tropicalMatchingSupported8 q m = true),
        pmTerm8 W q m := by
  rw [pmSumN8_eq_sum_pmTerm8]
  symm
  apply Finset.sum_subset (by simp)
  intro m _ hm
  apply pmTerm8_eq_zero_of_tropicalMatchingUnsupported8 hSupport
  cases hs : tropicalMatchingSupported8 q m
  · rfl
  · exfalso
    exact hm (Finset.mem_filter.mpr ⟨Finset.mem_univ _, hs⟩)

/-- The monochromatic target coloring in the branch-zero derivative. -/
def branch0TargetColoring8 : Fin 8 → Fin 3 := ![0, 0, 0, 0, 0, 0, 0, 0]

/-- Change only vertex five from color zero to color one. -/
def branch0TargetChangedColoring8 : Fin 8 → Fin 3 :=
  ![0, 0, 0, 0, 0, 1, 0, 0]

/-- The forbidden coloring used by the second derivative. -/
def branch0ZeroColoring8 : Fin 8 → Fin 3 := ![0, 0, 0, 0, 0, 0, 1, 1]

/-- Again change only vertex five. -/
def branch0ZeroChangedColoring8 : Fin 8 → Fin 3 :=
  ![0, 0, 0, 0, 0, 1, 1, 1]

/-- The twenty supported columns common to the two target colorings. -/
def branch0TargetMatchingSet8 : Finset (Fin 105) :=
  {0, 1, 6, 7, 9, 10, 21, 22, 24, 25, 28, 29, 37, 40, 43, 44,
    51, 54, 58, 59}

/-- The nine supported columns common to the two forbidden colorings. -/
def branch0ZeroMatchingSet8 : Finset (Fin 105) :=
  {0, 1, 6, 21, 24, 25, 40, 51, 54}

/-- Bounded target support lookup before the remaining three tables. -/
theorem branch0TargetSupportedSet8 :
    Finset.univ.filter (fun m : Fin 105 =>
      tropicalMatchingSupported8 branch0TargetColoring8 m = true) =
      branch0TargetMatchingSet8 := by
  decide

theorem branch0TargetChangedSupportedSet8 :
    Finset.univ.filter (fun m : Fin 105 =>
      tropicalMatchingSupported8 branch0TargetChangedColoring8 m = true) =
      branch0TargetMatchingSet8 := by
  decide

theorem branch0ZeroSupportedSet8 :
    Finset.univ.filter (fun m : Fin 105 =>
      tropicalMatchingSupported8 branch0ZeroColoring8 m = true) =
      branch0ZeroMatchingSet8 := by
  decide

theorem branch0ZeroChangedSupportedSet8 :
    Finset.univ.filter (fun m : Fin 105 =>
      tropicalMatchingSupported8 branch0ZeroChangedColoring8 m = true) =
      branch0ZeroMatchingSet8 := by
  decide

/-- Short notation for one canonically oriented support coordinate. -/
def branchWeight8 (W : WeightsN 8 3 ℂ)
    (u v : Fin 8) (a b : Fin 3) : ℂ := W (mkEdge u v a b)

def branch0X8 (W : WeightsN 8 3 ℂ) : ℂ := branchWeight8 W 2 5 0 1
def branch0Y8 (W : WeightsN 8 3 ℂ) : ℂ := branchWeight8 W 2 5 0 0

/-- Cleared version of `R*w35^00-w35^01`. -/
def branch0Delta8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branch0X8 W * branchWeight8 W 3 5 0 0 -
    branch0Y8 W * branchWeight8 W 3 5 0 1

/-- The four residual three-edge monomials in the target derivative. -/
def branch0TargetFactor8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 1 0 0 * branchWeight8 W 2 6 0 0 *
      branchWeight8 W 4 7 0 0 +
  branchWeight8 W 0 2 0 0 * branchWeight8 W 1 6 0 0 *
      branchWeight8 W 4 7 0 0 +
  branchWeight8 W 0 2 0 0 * branchWeight8 W 1 7 0 0 *
      branchWeight8 W 4 6 0 0 +
  branchWeight8 W 0 4 0 0 * branchWeight8 W 1 7 0 0 *
      branchWeight8 W 2 6 0 0

private def branch0Target45Residual8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 1 0 0 * branchWeight8 W 2 3 0 0 *
      branchWeight8 W 6 7 0 0 +
  branchWeight8 W 0 2 0 0 * branchWeight8 W 1 7 0 0 *
      branchWeight8 W 3 6 0 0 +
  branchWeight8 W 0 3 0 0 * branchWeight8 W 1 7 0 0 *
      branchWeight8 W 2 6 0 0

private def branch0Target57Residual8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 1 0 0 * branchWeight8 W 2 3 0 0 *
      branchWeight8 W 4 6 0 0 +
  branchWeight8 W 0 1 0 0 * branchWeight8 W 2 6 0 0 *
      branchWeight8 W 3 4 0 0 +
  branchWeight8 W 0 2 0 0 * branchWeight8 W 1 6 0 0 *
      branchWeight8 W 3 4 0 0 +
  branchWeight8 W 0 4 0 0 * branchWeight8 W 1 6 0 0 *
      branchWeight8 W 2 3 0 0

private def branch0Target15Residual8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 2 0 0 * branchWeight8 W 3 4 0 0 *
      branchWeight8 W 6 7 0 0 +
  branchWeight8 W 0 2 0 0 * branchWeight8 W 3 6 0 0 *
      branchWeight8 W 4 7 0 0 +
  branchWeight8 W 0 3 0 0 * branchWeight8 W 2 6 0 0 *
      branchWeight8 W 4 7 0 0 +
  branchWeight8 W 0 4 0 0 * branchWeight8 W 2 3 0 0 *
      branchWeight8 W 6 7 0 0

set_option maxHeartbeats 1000000 in
/-- Raw matching expansion grouped by the partner of vertex five. -/
theorem branch0TargetGroupedExpansion8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branch0X8 W * pmSumN 8 3 W branch0TargetColoring8 -
        branch0Y8 W * pmSumN 8 3 W branch0TargetChangedColoring8 =
      (branch0X8 W * branchWeight8 W 4 5 0 0 -
          branch0Y8 W * branchWeight8 W 4 5 0 1) *
          branch0Target45Residual8 W +
      (branch0X8 W * branchWeight8 W 5 7 0 0 -
          branch0Y8 W * branchWeight8 W 5 7 1 0) *
          branch0Target57Residual8 W +
      (branch0X8 W * branchWeight8 W 1 5 0 0 -
          branch0Y8 W * branchWeight8 W 1 5 0 1) *
          branch0Target15Residual8 W +
      branch0Delta8 W * branch0TargetFactor8 W := by
  rw [pmSumN8_eq_sum_tropicalSupportedTerms8 hSupport,
    branch0TargetSupportedSet8,
    pmSumN8_eq_sum_tropicalSupportedTerms8 hSupport,
    branch0TargetChangedSupportedSet8]
  simp [branch0TargetMatchingSet8, pmTerm8, matchingEdges8,
    branch0TargetColoring8, branch0TargetChangedColoring8,
    branchWeight8, branch0X8, branch0Y8, branch0Delta8,
    branch0TargetFactor8, branch0Target45Residual8,
    branch0Target57Residual8, branch0Target15Residual8,
    Fin.prod_univ_four]
  ring

/-- The residual factor multiplying the `45` bracket in the forbidden
derivative. -/
private def branch0Zero45Residual8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 1 0 0 * branchWeight8 W 2 3 0 0 *
    branchWeight8 W 6 7 1 1

/-- The three residual monomials multiplying the `57` bracket in the
forbidden derivative. -/
private def branch0Zero57Residual8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 1 0 0 * branchWeight8 W 2 3 0 0 *
      branchWeight8 W 4 6 0 1 +
  branchWeight8 W 0 2 0 0 * branchWeight8 W 1 6 0 1 *
      branchWeight8 W 3 4 0 0 +
  branchWeight8 W 0 4 0 0 * branchWeight8 W 1 6 0 1 *
      branchWeight8 W 2 3 0 0

/-- The two residual monomials multiplying the `15` bracket in the forbidden
derivative. -/
private def branch0Zero15Residual8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 2 0 0 * branchWeight8 W 3 4 0 0 *
      branchWeight8 W 6 7 1 1 +
  branchWeight8 W 0 4 0 0 * branchWeight8 W 2 3 0 0 *
      branchWeight8 W 6 7 1 1

/-- The nonzero residual monomial multiplying the same cleared `35`
determinant in the forbidden derivative. -/
def branch0ZeroFactor8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 2 0 0 * branchWeight8 W 1 6 0 1 *
    branchWeight8 W 4 7 0 1

set_option maxHeartbeats 1000000 in
/-- Raw forbidden-coloring expansion grouped by the partner of vertex five. -/
theorem branch0ZeroGroupedExpansion8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branch0X8 W * pmSumN 8 3 W branch0ZeroColoring8 -
        branch0Y8 W * pmSumN 8 3 W branch0ZeroChangedColoring8 =
      (branch0X8 W * branchWeight8 W 4 5 0 0 -
          branch0Y8 W * branchWeight8 W 4 5 0 1) *
          branch0Zero45Residual8 W +
      (branch0X8 W * branchWeight8 W 5 7 0 1 -
          branch0Y8 W * branchWeight8 W 5 7 1 1) *
          branch0Zero57Residual8 W +
      (branch0X8 W * branchWeight8 W 1 5 0 0 -
          branch0Y8 W * branchWeight8 W 1 5 0 1) *
          branch0Zero15Residual8 W +
      branch0Delta8 W * branch0ZeroFactor8 W := by
  rw [pmSumN8_eq_sum_tropicalSupportedTerms8 hSupport,
    branch0ZeroSupportedSet8,
    pmSumN8_eq_sum_tropicalSupportedTerms8 hSupport,
    branch0ZeroChangedSupportedSet8]
  simp [branch0ZeroMatchingSet8, pmTerm8, matchingEdges8,
    branch0ZeroColoring8, branch0ZeroChangedColoring8,
    branchWeight8, branch0X8, branch0Y8, branch0Delta8,
    branch0ZeroFactor8, branch0Zero45Residual8,
    branch0Zero57Residual8, branch0Zero15Residual8,
    Fin.prod_univ_four]
  ring

/-- The four signed characters common to the three branch-zero terminal
states.  The residual cover replay must establish this predicate separately
for C3-0, C9-0 and C15-0. -/
def Branch0DerivativeCharacters8 (W : WeightsN 8 3 ℂ) : Prop :=
  branch0Y8 W * branchWeight8 W 5 7 1 1 =
      branch0X8 W * branchWeight8 W 5 7 0 1 ∧
  branch0Y8 W * branchWeight8 W 5 7 1 0 =
      branch0X8 W * branchWeight8 W 5 7 0 0 ∧
  branch0Y8 W * branchWeight8 W 4 5 0 1 =
      branch0X8 W * branchWeight8 W 4 5 0 0 ∧
  branchWeight8 W 1 5 0 0 * branch0X8 W =
      branchWeight8 W 1 5 0 1 * branch0Y8 W

/-- The four signed characters cancel all residual target groups, leaving the
cleared `35` determinant. -/
theorem branch0TargetDerivativeIdentity8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hCharacters : Branch0DerivativeCharacters8 W) :
    branch0X8 W * pmSumN 8 3 W branch0TargetColoring8 -
        branch0Y8 W * pmSumN 8 3 W branch0TargetChangedColoring8 =
      branch0Delta8 W * branch0TargetFactor8 W := by
  rw [branch0TargetGroupedExpansion8 hSupport]
  rcases hCharacters with ⟨_h57zero, h57target, h45, h15⟩
  have h45zero :
      branch0X8 W * branchWeight8 W 4 5 0 0 -
        branch0Y8 W * branchWeight8 W 4 5 0 1 = 0 := by
    linear_combination -h45
  have h57zero :
      branch0X8 W * branchWeight8 W 5 7 0 0 -
        branch0Y8 W * branchWeight8 W 5 7 1 0 = 0 := by
    linear_combination -h57target
  have h15zero :
      branch0X8 W * branchWeight8 W 1 5 0 0 -
        branch0Y8 W * branchWeight8 W 1 5 0 1 = 0 := by
    linear_combination h15
  rw [h45zero, h57zero, h15zero]
  ring

/-- The same four signed characters cancel all residual forbidden groups. -/
theorem branch0ZeroDerivativeIdentity8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hCharacters : Branch0DerivativeCharacters8 W) :
    branch0X8 W * pmSumN 8 3 W branch0ZeroColoring8 -
        branch0Y8 W * pmSumN 8 3 W branch0ZeroChangedColoring8 =
      branch0Delta8 W * branch0ZeroFactor8 W := by
  rw [branch0ZeroGroupedExpansion8 hSupport]
  rcases hCharacters with ⟨h57forbidden, _h57target, h45, h15⟩
  have h45zero :
      branch0X8 W * branchWeight8 W 4 5 0 0 -
        branch0Y8 W * branchWeight8 W 4 5 0 1 = 0 := by
    linear_combination -h45
  have h57zero :
      branch0X8 W * branchWeight8 W 5 7 0 1 -
        branch0Y8 W * branchWeight8 W 5 7 1 1 = 0 := by
    linear_combination -h57forbidden
  have h15zero :
      branch0X8 W * branchWeight8 W 1 5 0 0 -
        branch0Y8 W * branchWeight8 W 1 5 0 1 = 0 := by
    linear_combination h15
  rw [h45zero, h57zero, h15zero]
  ring

@[simp] theorem branch0TargetColoring8_allEqual :
    allEqual branch0TargetColoring8 := by
  decide

theorem branch0TargetChangedColoring8_not_allEqual :
    ¬ allEqual branch0TargetChangedColoring8 := by
  decide

theorem branch0ZeroColoring8_not_allEqual :
    ¬ allEqual branch0ZeroColoring8 := by
  decide

theorem branch0ZeroChangedColoring8_not_allEqual :
    ¬ allEqual branch0ZeroChangedColoring8 := by
  decide

/-- The denominator coordinate in the cleared derivative is in the canonical
support and therefore nonzero on the exact-support torus. -/
theorem branch0X8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branch0X8 W ≠ 0 := by
  unfold branch0X8 branchWeight8
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  decide

/-- The residual monomial in the forbidden derivative consists of three
canonical support coordinates. -/
theorem branch0ZeroFactor8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branch0ZeroFactor8 W ≠ 0 := by
  have h02 : branchWeight8 W 0 2 0 0 ≠ 0 := by
    unfold branchWeight8
    apply (hSupport _).2
    rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
    decide
  have h16 : branchWeight8 W 1 6 0 1 ≠ 0 := by
    unfold branchWeight8
    apply (hSupport _).2
    rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
    decide
  have h47 : branchWeight8 W 4 7 0 1 ≠ 0 := by
    unfold branchWeight8
    apply (hSupport _).2
    rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
    decide
  exact mul_ne_zero (mul_ne_zero h02 h16) h47

/-- No exact GHZ solution on the canonical support can satisfy the four
branch-zero derivative characters.  This is the common algebraic endgame for
the C3-0, C9-0 and C15-0 residual states. -/
theorem branch0DerivativeCharacters_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W)
    (hCharacters : Branch0DerivativeCharacters8 W) : False := by
  have hTargetValue :
      pmSumN 8 3 W branch0TargetColoring8 = 1 := by
    simpa using hEq branch0TargetColoring8
  have hTargetChangedValue :
      pmSumN 8 3 W branch0TargetChangedColoring8 = 0 := by
    simpa [branch0TargetChangedColoring8_not_allEqual] using
      hEq branch0TargetChangedColoring8
  have hZeroValue :
      pmSumN 8 3 W branch0ZeroColoring8 = 0 := by
    simpa [branch0ZeroColoring8_not_allEqual] using
      hEq branch0ZeroColoring8
  have hZeroChangedValue :
      pmSumN 8 3 W branch0ZeroChangedColoring8 = 0 := by
    simpa [branch0ZeroChangedColoring8_not_allEqual] using
      hEq branch0ZeroChangedColoring8
  have hTarget := branch0TargetDerivativeIdentity8 hSupport hCharacters
  have hZero := branch0ZeroDerivativeIdentity8 hSupport hCharacters
  rw [hTargetValue, hTargetChangedValue] at hTarget
  rw [hZeroValue, hZeroChangedValue] at hZero
  have hTargetCleared :
      branch0X8 W = branch0Delta8 W * branch0TargetFactor8 W := by
    simpa using hTarget
  have hZeroCleared :
      0 = branch0Delta8 W * branch0ZeroFactor8 W := by
    simpa using hZero
  have hDeltaNe : branch0Delta8 W ≠ 0 := by
    intro hDelta
    apply branch0X8_ne_zero hSupport
    rw [hDelta, zero_mul] at hTargetCleared
    exact hTargetCleared
  have hDeltaZero : branch0Delta8 W = 0 := by
    exact (mul_eq_zero.mp hZeroCleared.symm).resolve_right
      (branch0ZeroFactor8_ne_zero hSupport)
  exact hDeltaNe hDeltaZero

end

end MonochromaticQuantumGraphs.N8D3
