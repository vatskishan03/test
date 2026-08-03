import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch1Derivative8

/-!
# Data for the five bounded branch-one residual expansions

The residual factors are grouped by the partner of vertex two.  The five
matching expansions live in separate shard modules so no single proof crosses
the compiler memory guard.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph

noncomputable section

/-- The two residual monomials for matchings where vertex two is paired with
vertex zero. -/
def branch1Residual02Group8 (W : WeightsN 8 3 ℂ) (i : Fin 5) : ℂ :=
  let q := branch1ResidualBaseColoring8 i
  branchWeight8 W 1 5 (q 1) (q 5) *
      branchWeight8 W 3 4 (q 3) (q 4) *
      branchWeight8 W 6 7 (q 6) (q 7) +
  branchWeight8 W 1 6 (q 1) (q 6) *
      branchWeight8 W 3 4 (q 3) (q 4) *
      branchWeight8 W 5 7 (q 5) (q 7)

/-- The residual monomials for matchings where vertex two is paired with
vertex three.  The final coloring has one additional supported column. -/
def branch1Residual23Group8 (W : WeightsN 8 3 ℂ) (i : Fin 5) : ℂ :=
  let q := branch1ResidualBaseColoring8 i
  branchWeight8 W 0 1 (q 0) (q 1) *
      branchWeight8 W 4 5 (q 4) (q 5) *
      branchWeight8 W 6 7 (q 6) (q 7) +
  branchWeight8 W 0 1 (q 0) (q 1) *
      branchWeight8 W 4 6 (q 4) (q 6) *
      branchWeight8 W 5 7 (q 5) (q 7) +
  branchWeight8 W 0 4 (q 0) (q 4) *
      branchWeight8 W 1 5 (q 1) (q 5) *
      branchWeight8 W 6 7 (q 6) (q 7) +
  branchWeight8 W 0 4 (q 0) (q 4) *
      branchWeight8 W 1 6 (q 1) (q 6) *
      branchWeight8 W 5 7 (q 5) (q 7) +
  if i = 4 then
    branchWeight8 W 0 1 (q 0) (q 1) *
      branchWeight8 W 4 7 (q 4) (q 7) *
      branchWeight8 W 5 6 (q 5) (q 6)
  else 0

/-- The two residual monomials for matchings where vertex two is paired with
vertex five. -/
def branch1Residual25Group8 (W : WeightsN 8 3 ℂ) (i : Fin 5) : ℂ :=
  let q := branch1ResidualBaseColoring8 i
  branchWeight8 W 0 1 (q 0) (q 1) *
      branchWeight8 W 3 4 (q 3) (q 4) *
      branchWeight8 W 6 7 (q 6) (q 7) +
  branchWeight8 W 0 3 (q 0) (q 3) *
      branchWeight8 W 1 6 (q 1) (q 6) *
      branchWeight8 W 4 7 (q 4) (q 7)

/-- The cleared `25` bracket appropriate to each residual pair. -/
def branch1Residual25Bracket8 (W : WeightsN 8 3 ℂ) : Fin 5 → ℂ := ![
  branch1X8 W * branch1Y8 W - branch1Y8 W * branch1X8 W,
  branch1X8 W * branchWeight8 W 2 5 2 1 -
    branch1Y8 W * branchWeight8 W 2 5 0 1,
  branch1X8 W * branchWeight8 W 2 5 2 1 -
    branch1Y8 W * branchWeight8 W 2 5 0 1,
  branch1X8 W * branchWeight8 W 2 5 2 2 -
    branch1Y8 W * branchWeight8 W 2 5 0 2,
  branch1X8 W * branchWeight8 W 2 5 2 2 -
    branch1Y8 W * branchWeight8 W 2 5 0 2
]

/-- The five residual expressions exactly as stated in the canonical
manifest; the common `w03^02` factor is retained in the first four. -/
def branch1ResidualFactor8 (W : WeightsN 8 3 ℂ) : Fin 5 → ℂ := ![
  branchWeight8 W 0 3 0 2 *
    (branchWeight8 W 1 5 0 0 * branchWeight8 W 4 6 0 1 +
      branchWeight8 W 1 6 0 1 * branchWeight8 W 4 5 0 0),
  branchWeight8 W 0 3 0 2 *
    (branchWeight8 W 1 5 0 1 * branchWeight8 W 4 6 0 1 +
      branchWeight8 W 1 6 0 1 * branchWeight8 W 4 5 0 1),
  branchWeight8 W 0 3 0 2 *
    (branchWeight8 W 1 5 0 1 * branchWeight8 W 4 6 0 2 +
      branchWeight8 W 1 6 0 2 * branchWeight8 W 4 5 0 1),
  branchWeight8 W 0 3 0 2 *
    (branchWeight8 W 1 5 0 2 * branchWeight8 W 4 6 0 1 +
      branchWeight8 W 1 6 0 1 * branchWeight8 W 4 5 0 2),
  branchWeight8 W 0 1 0 0 * branchWeight8 W 3 4 2 0 *
      branchWeight8 W 5 6 2 2 +
    branchWeight8 W 0 3 0 2 * branchWeight8 W 1 5 0 2 *
      branchWeight8 W 4 6 0 2 +
    branchWeight8 W 0 3 0 2 * branchWeight8 W 1 6 0 2 *
      branchWeight8 W 4 5 0 2
]

/-- The common right side of every grouped residual expansion. -/
def branch1ResidualGroupedRhs8 (W : WeightsN 8 3 ℂ) (i : Fin 5) : ℂ :=
  (branch1X8 W * branchWeight8 W 0 2 0 2 -
      branch1Y8 W * branchWeight8 W 0 2 0 0) *
      branch1Residual02Group8 W i +
  (branch1X8 W * branchWeight8 W 2 3 2 2 -
      branch1Y8 W * branchWeight8 W 2 3 0 2) *
      branch1Residual23Group8 W i +
  branch1Residual25Bracket8 W i * branch1Residual25Group8 W i +
  branch1Delta8 W * branch1ResidualFactor8 W i

theorem branch1ResidualBaseColoring8_not_allEqual (i : Fin 5) :
    ¬ allEqual (branch1ResidualBaseColoring8 i) := by
  fin_cases i <;> decide

theorem branch1ResidualChangedColoring8_not_allEqual (i : Fin 5) :
    ¬ allEqual (branch1ResidualChangedColoring8 i) := by
  fin_cases i <;> decide

end

end MonochromaticQuantumGraphs.N8D3
