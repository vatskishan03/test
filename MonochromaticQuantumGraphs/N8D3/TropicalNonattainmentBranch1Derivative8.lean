import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch0Derivative8

/-!
# Common branch-one derivative contradiction

This module regenerates the target derivative and the five residual derivative
equations from the official perfect-matching sum.  Its five signed-character
hypotheses are the exact cancellations needed by the three branch-one terminal
states; the residual dispatch must prove them for C3-1, C9-1 and C15-1.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 10000

/-- The monochromatic color-two target used in the branch-one derivative. -/
def branch1TargetColoring8 : Fin 8 → Fin 3 := ![2, 2, 2, 2, 2, 2, 2, 2]

/-- Change only vertex two from color two to color zero. -/
def branch1TargetChangedColoring8 : Fin 8 → Fin 3 :=
  ![2, 2, 0, 2, 2, 2, 2, 2]

/-- The five forbidden base colorings from the canonical branch manifest. -/
def branch1ResidualBaseColoring8 : Fin 5 → Fin 8 → Fin 3 := ![
  ![0, 0, 2, 2, 0, 0, 1, 2],
  ![0, 0, 2, 2, 0, 1, 1, 2],
  ![0, 0, 2, 2, 0, 1, 2, 2],
  ![0, 0, 2, 2, 0, 2, 1, 2],
  ![0, 0, 2, 2, 0, 2, 2, 2]
]

/-- The corresponding five colorings with vertex two changed to zero. -/
def branch1ResidualChangedColoring8 : Fin 5 → Fin 8 → Fin 3 := ![
  ![0, 0, 0, 2, 0, 0, 1, 2],
  ![0, 0, 0, 2, 0, 1, 1, 2],
  ![0, 0, 0, 2, 0, 1, 2, 2],
  ![0, 0, 0, 2, 0, 2, 1, 2],
  ![0, 0, 0, 2, 0, 2, 2, 2]
]

/-- The twenty supported columns common to the two target colorings. -/
def branch1TargetMatchingSet8 : Finset (Fin 105) :=
  {0, 1, 2, 6, 12, 15, 16, 17, 21, 24, 33, 35, 38, 40, 41,
    94, 96, 99, 102, 104}

/-- Ten columns survive in each of the first four residual pairs. -/
def branch1ResidualMatchingSet10_8 : Finset (Fin 105) :=
  {0, 1, 6, 21, 24, 38, 40, 41, 51, 54}

/-- The fifth residual pair additionally contains columns two and twelve. -/
def branch1ResidualMatchingSet12_8 : Finset (Fin 105) :=
  {0, 1, 2, 6, 12, 21, 24, 38, 40, 41, 51, 54}

def branch1ResidualMatchingSet8 (i : Fin 5) : Finset (Fin 105) :=
  if i = 4 then branch1ResidualMatchingSet12_8
  else branch1ResidualMatchingSet10_8

theorem branch1TargetSupportedSet8 :
    Finset.univ.filter (fun m : Fin 105 =>
      tropicalMatchingSupported8 branch1TargetColoring8 m = true) =
      branch1TargetMatchingSet8 := by
  decide

theorem branch1TargetChangedSupportedSet8 :
    Finset.univ.filter (fun m : Fin 105 =>
      tropicalMatchingSupported8 branch1TargetChangedColoring8 m = true) =
      branch1TargetMatchingSet8 := by
  decide

theorem branch1ResidualBaseSupportedSet8 (i : Fin 5) :
    Finset.univ.filter (fun m : Fin 105 =>
      tropicalMatchingSupported8 (branch1ResidualBaseColoring8 i) m = true) =
      branch1ResidualMatchingSet8 i := by
  fin_cases i <;> decide

theorem branch1ResidualChangedSupportedSet8 (i : Fin 5) :
    Finset.univ.filter (fun m : Fin 105 =>
      tropicalMatchingSupported8 (branch1ResidualChangedColoring8 i) m = true) =
      branch1ResidualMatchingSet8 i := by
  fin_cases i <;> decide

def branch1X8 (W : WeightsN 8 3 ℂ) : ℂ := branchWeight8 W 2 5 0 0
def branch1Y8 (W : WeightsN 8 3 ℂ) : ℂ := branchWeight8 W 2 5 2 0

/-- Cleared version of `U*w27^22-w27^02`. -/
def branch1Delta8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branch1X8 W * branchWeight8 W 2 7 2 2 -
    branch1Y8 W * branchWeight8 W 2 7 0 2

/-- The four residual three-edge monomials in the color-two target
derivative. -/
def branch1TargetFactor8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 1 2 2 * branchWeight8 W 3 4 2 2 *
      branchWeight8 W 5 6 2 2 +
  branchWeight8 W 0 3 2 2 * branchWeight8 W 1 4 2 2 *
      branchWeight8 W 5 6 2 2 +
  branchWeight8 W 0 3 2 2 * branchWeight8 W 1 5 2 2 *
      branchWeight8 W 4 6 2 2 +
  branchWeight8 W 0 3 2 2 * branchWeight8 W 1 6 2 2 *
      branchWeight8 W 4 5 2 2

private def branch1Target02Residual8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 1 3 2 2 * branchWeight8 W 4 5 2 2 *
      branchWeight8 W 6 7 2 2 +
  branchWeight8 W 1 3 2 2 * branchWeight8 W 4 6 2 2 *
      branchWeight8 W 5 7 2 2 +
  branchWeight8 W 1 3 2 2 * branchWeight8 W 4 7 2 2 *
      branchWeight8 W 5 6 2 2 +
  branchWeight8 W 1 5 2 2 * branchWeight8 W 3 4 2 2 *
      branchWeight8 W 6 7 2 2 +
  branchWeight8 W 1 6 2 2 * branchWeight8 W 3 4 2 2 *
      branchWeight8 W 5 7 2 2

private def branch1Target23Residual8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 1 2 2 * branchWeight8 W 4 5 2 2 *
      branchWeight8 W 6 7 2 2 +
  branchWeight8 W 0 1 2 2 * branchWeight8 W 4 6 2 2 *
      branchWeight8 W 5 7 2 2 +
  branchWeight8 W 0 1 2 2 * branchWeight8 W 4 7 2 2 *
      branchWeight8 W 5 6 2 2 +
  branchWeight8 W 0 7 2 2 * branchWeight8 W 1 4 2 2 *
      branchWeight8 W 5 6 2 2 +
  branchWeight8 W 0 7 2 2 * branchWeight8 W 1 5 2 2 *
      branchWeight8 W 4 6 2 2 +
  branchWeight8 W 0 7 2 2 * branchWeight8 W 1 6 2 2 *
      branchWeight8 W 4 5 2 2

private def branch1Target25Residual8 (W : WeightsN 8 3 ℂ) : ℂ :=
  branchWeight8 W 0 1 2 2 * branchWeight8 W 3 4 2 2 *
      branchWeight8 W 6 7 2 2 +
  branchWeight8 W 0 3 2 2 * branchWeight8 W 1 4 2 2 *
      branchWeight8 W 6 7 2 2 +
  branchWeight8 W 0 3 2 2 * branchWeight8 W 1 6 2 2 *
      branchWeight8 W 4 7 2 2 +
  branchWeight8 W 0 7 2 2 * branchWeight8 W 1 3 2 2 *
      branchWeight8 W 4 6 2 2 +
  branchWeight8 W 0 7 2 2 * branchWeight8 W 1 6 2 2 *
      branchWeight8 W 3 4 2 2

set_option maxHeartbeats 1000000 in
/-- Raw target expansion grouped by the partner of vertex two. -/
theorem branch1TargetGroupedExpansion8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    branch1X8 W * pmSumN 8 3 W branch1TargetColoring8 -
        branch1Y8 W * pmSumN 8 3 W branch1TargetChangedColoring8 =
      (branch1X8 W * branchWeight8 W 0 2 2 2 -
          branch1Y8 W * branchWeight8 W 0 2 2 0) *
          branch1Target02Residual8 W +
      (branch1X8 W * branchWeight8 W 2 3 2 2 -
          branch1Y8 W * branchWeight8 W 2 3 0 2) *
          branch1Target23Residual8 W +
      (branch1X8 W * branchWeight8 W 2 5 2 2 -
          branch1Y8 W * branchWeight8 W 2 5 0 2) *
          branch1Target25Residual8 W +
      branch1Delta8 W * branch1TargetFactor8 W := by
  rw [pmSumN8_eq_sum_tropicalSupportedTerms8 hSupport,
    branch1TargetSupportedSet8,
    pmSumN8_eq_sum_tropicalSupportedTerms8 hSupport,
    branch1TargetChangedSupportedSet8]
  simp [branch1TargetMatchingSet8, pmTerm8, matchingEdges8,
    branch1TargetColoring8, branch1TargetChangedColoring8,
    branchWeight8, branch1X8, branch1Y8, branch1Delta8,
    branch1TargetFactor8, branch1Target02Residual8,
    branch1Target23Residual8, branch1Target25Residual8,
    Fin.prod_univ_four]
  ring

/-- The five signed characters used by the common branch-one derivatives. -/
def Branch1DerivativeCharacters8 (W : WeightsN 8 3 ℂ) : Prop :=
  branch1X8 W * branchWeight8 W 0 2 2 2 =
      branch1Y8 W * branchWeight8 W 0 2 2 0 ∧
  branch1X8 W * branchWeight8 W 2 5 2 2 =
      branch1Y8 W * branchWeight8 W 2 5 0 2 ∧
  branch1X8 W * branchWeight8 W 0 2 0 2 =
      branch1Y8 W * branchWeight8 W 0 2 0 0 ∧
  branch1X8 W * branchWeight8 W 2 5 2 1 =
      branch1Y8 W * branchWeight8 W 2 5 0 1 ∧
  branch1X8 W * branchWeight8 W 2 3 2 2 =
      branch1Y8 W * branchWeight8 W 2 3 0 2

/-- The character cancellations leave only the cleared `27` determinant in
the target derivative. -/
theorem branch1TargetDerivativeIdentity8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hCharacters : Branch1DerivativeCharacters8 W) :
    branch1X8 W * pmSumN 8 3 W branch1TargetColoring8 -
        branch1Y8 W * pmSumN 8 3 W branch1TargetChangedColoring8 =
      branch1Delta8 W * branch1TargetFactor8 W := by
  rw [branch1TargetGroupedExpansion8 hSupport]
  rcases hCharacters with ⟨h02, h25, _h02zero, _h25mid, h23⟩
  rw [h02, h23, h25]
  ring

end

end MonochromaticQuantumGraphs.N8D3
