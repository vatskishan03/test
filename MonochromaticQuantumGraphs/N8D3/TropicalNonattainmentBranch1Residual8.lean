import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch1Residual8.Shard0
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch1Residual8.Shard1
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch1Residual8.Shard2
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch1Residual8.Shard3
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch1Residual8.Shard4

/-!
# Common branch-one residual and torus contradiction

This module recombines the five bounded matching-expansion shards, cancels the
five branch-one signed characters, and derives the exact five torus equations
from `EqSystemN 8 3`.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

/-- Recombine the five independently checked residual expansions. -/
theorem branch1ResidualGroupedExpansion8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (i : Fin 5) :
    branch1X8 W * pmSumN 8 3 W (branch1ResidualBaseColoring8 i) -
        branch1Y8 W * pmSumN 8 3 W (branch1ResidualChangedColoring8 i) =
      branch1ResidualGroupedRhs8 W i := by
  fin_cases i
  · exact branch1ResidualGroupedExpansion8_shard0 hSupport
  · exact branch1ResidualGroupedExpansion8_shard1 hSupport
  · exact branch1ResidualGroupedExpansion8_shard2 hSupport
  · exact branch1ResidualGroupedExpansion8_shard3 hSupport
  · exact branch1ResidualGroupedExpansion8_shard4 hSupport

/-- The five common signed characters cancel every group except the cleared
`27` determinant. -/
theorem branch1ResidualDerivativeIdentity8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hCharacters : Branch1DerivativeCharacters8 W) (i : Fin 5) :
    branch1X8 W * pmSumN 8 3 W (branch1ResidualBaseColoring8 i) -
        branch1Y8 W * pmSumN 8 3 W (branch1ResidualChangedColoring8 i) =
      branch1Delta8 W * branch1ResidualFactor8 W i := by
  rw [branch1ResidualGroupedExpansion8 hSupport i]
  rcases hCharacters with ⟨_h02target, h25high, h02, h25mid, h23⟩
  have h02zero :
      branch1X8 W * branchWeight8 W 0 2 0 2 -
        branch1Y8 W * branchWeight8 W 0 2 0 0 = 0 :=
    sub_eq_zero.mpr h02
  have h23zero :
      branch1X8 W * branchWeight8 W 2 3 2 2 -
        branch1Y8 W * branchWeight8 W 2 3 0 2 = 0 :=
    sub_eq_zero.mpr h23
  have h25zero : branch1Residual25Bracket8 W i = 0 := by
    fin_cases i
    · change branch1X8 W * branch1Y8 W -
        branch1Y8 W * branch1X8 W = 0
      ring
    · exact sub_eq_zero.mpr h25mid
    · exact sub_eq_zero.mpr h25mid
    · exact sub_eq_zero.mpr h25high
    · exact sub_eq_zero.mpr h25high
  unfold branch1ResidualGroupedRhs8
  rw [h02zero, h23zero, h25zero]
  ring

@[simp] theorem branch1TargetColoring8_allEqual :
    allEqual branch1TargetColoring8 := by
  decide

theorem branch1TargetChangedColoring8_not_allEqual :
    ¬ allEqual branch1TargetChangedColoring8 := by
  decide

theorem branch1X8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branch1X8 W ≠ 0 := by
  unfold branch1X8 branchWeight8
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  decide

/-- The target derivative makes the cleared `27` determinant nonzero. -/
theorem branch1Delta8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W)
    (hCharacters : Branch1DerivativeCharacters8 W) :
    branch1Delta8 W ≠ 0 := by
  have hTargetValue : pmSumN 8 3 W branch1TargetColoring8 = 1 := by
    simpa using hEq branch1TargetColoring8
  have hChangedValue :
      pmSumN 8 3 W branch1TargetChangedColoring8 = 0 := by
    simpa [branch1TargetChangedColoring8_not_allEqual] using
      hEq branch1TargetChangedColoring8
  have hTarget := branch1TargetDerivativeIdentity8 hSupport hCharacters
  rw [hTargetValue, hChangedValue] at hTarget
  have hCleared :
      branch1X8 W = branch1Delta8 W * branch1TargetFactor8 W := by
    simpa using hTarget
  intro hDelta
  apply branch1X8_ne_zero hSupport
  rw [hDelta, zero_mul] at hCleared
  exact hCleared

/-- Each forbidden derivative forces its manifest residual expression to
vanish. -/
theorem branch1ResidualFactor8_eq_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W)
    (hCharacters : Branch1DerivativeCharacters8 W) (i : Fin 5) :
    branch1ResidualFactor8 W i = 0 := by
  have hBase :
      pmSumN 8 3 W (branch1ResidualBaseColoring8 i) = 0 := by
    simpa [branch1ResidualBaseColoring8_not_allEqual i] using
      hEq (branch1ResidualBaseColoring8 i)
  have hChanged :
      pmSumN 8 3 W (branch1ResidualChangedColoring8 i) = 0 := by
    simpa [branch1ResidualChangedColoring8_not_allEqual i] using
      hEq (branch1ResidualChangedColoring8 i)
  have hDerivative :=
    branch1ResidualDerivativeIdentity8 hSupport hCharacters i
  rw [hBase, hChanged] at hDerivative
  have hProduct : branch1Delta8 W * branch1ResidualFactor8 W i = 0 := by
    simpa using hDerivative.symm
  exact (mul_eq_zero.mp hProduct).resolve_left
    (branch1Delta8_ne_zero hSupport hEq hCharacters)

private theorem branch1H8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branchWeight8 W 0 3 0 2 ≠ 0 := by
  unfold branchWeight8
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  decide

private theorem branch1S8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branchWeight8 W 4 5 0 1 ≠ 0 := by
  unfold branchWeight8
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  decide

private theorem branch1U8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branchWeight8 W 4 6 0 1 ≠ 0 := by
  unfold branchWeight8
  apply (hSupport _).2
  rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
  decide

private theorem branch1M8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branchWeight8 W 0 1 0 0 * branchWeight8 W 3 4 2 0 *
        branchWeight8 W 5 6 2 2 ≠ 0 := by
  have h01 : branchWeight8 W 0 1 0 0 ≠ 0 := by
    unfold branchWeight8
    apply (hSupport _).2
    rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
    decide
  have h34 : branchWeight8 W 3 4 2 0 ≠ 0 := by
    unfold branchWeight8
    apply (hSupport _).2
    rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
    decide
  have h56 : branchWeight8 W 5 6 2 2 ≠ 0 := by
    unfold branchWeight8
    apply (hSupport _).2
    rw [tropicalEdgeSupported8_mkEdge_of_lt (by decide)]
    decide
  exact mul_ne_zero (mul_ne_zero h01 h34) h56

/-- No exact GHZ solution on the canonical support can satisfy the five
branch-one derivative characters.  This is the common algebraic endgame for
C3-1, C9-1 and C15-1. -/
theorem branch1DerivativeCharacters_impossible8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W)
    (hCharacters : Branch1DerivativeCharacters8 W) : False := by
  have h0 := branch1ResidualFactor8_eq_zero hSupport hEq hCharacters 0
  have h1 := branch1ResidualFactor8_eq_zero hSupport hEq hCharacters 1
  have h2 := branch1ResidualFactor8_eq_zero hSupport hEq hCharacters 2
  have h3 := branch1ResidualFactor8_eq_zero hSupport hEq hCharacters 3
  have h4 := branch1ResidualFactor8_eq_zero hSupport hEq hCharacters 4
  have hH := branch1H8_ne_zero hSupport
  simp only [branch1ResidualFactor8, Matrix.cons_val_zero] at h0 h1 h2 h3 h4
  have h0' :
      branchWeight8 W 1 5 0 0 * branchWeight8 W 4 6 0 1 +
        branchWeight8 W 1 6 0 1 * branchWeight8 W 4 5 0 0 = 0 :=
    (mul_eq_zero.mp h0).resolve_left hH
  have h1' :
      branchWeight8 W 1 5 0 1 * branchWeight8 W 4 6 0 1 +
        branchWeight8 W 1 6 0 1 * branchWeight8 W 4 5 0 1 = 0 :=
    (mul_eq_zero.mp h1).resolve_left hH
  have h2' :
      branchWeight8 W 1 5 0 1 * branchWeight8 W 4 6 0 2 +
        branchWeight8 W 1 6 0 2 * branchWeight8 W 4 5 0 1 = 0 :=
    (mul_eq_zero.mp h2).resolve_left hH
  have h3' :
      branchWeight8 W 1 5 0 2 * branchWeight8 W 4 6 0 1 +
        branchWeight8 W 1 6 0 1 * branchWeight8 W 4 5 0 2 = 0 :=
    (mul_eq_zero.mp h3).resolve_left hH
  exact branch1_five_equation_torus_contradiction
    (branch1S8_ne_zero hSupport) (branch1U8_ne_zero hSupport)
    (branch1M8_ne_zero hSupport) h0' h1' h2' h3' h4

end

end MonochromaticQuantumGraphs.N8D3
