import MonochromaticQuantumGraphs.LaurentPolynomialCertificate
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Support
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Coordinates
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentBranch0Derivative8

/-!
# The 200 official base relations for the N8D3 tropical support

The recovered exact factor pipeline starts from 200 nonmonochromatic
coefficients of the official perfect-matching tensor.  This file is the
kernel-checked bridge from `MonochromaticQuantumGraph.EqSystemN 8 3` to those
200 sparse Laurent relations.

Only the 200 ternary coloring codes are stored as generated data.  Every one
of the 1,200 matching monomials is reconstructed inside Lean from the existing
105-matching table, the canonical support mask, and the six matching indices
`[0, 1, 6, 21, 24, 40]`.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000

/-- The sparse Laurent polynomial for a retained base relation.  Its six
monomials are reconstructed rather than tabulated. -/
def tropicalBaseRelation8 (r : Fin 200) : LaurentPolynomial (Fin 144) :=
  ∑ j : Fin 6,
    Finsupp.single
      (tropicalMatchingLocalExponent8 (tropicalBaseColoring8 r)
        (tropicalBaseMatching8 j)) 1

/-- Evaluation of a reconstructed base relation is the sum of its six
official matching monomials. -/
theorem eval_tropicalBaseRelation8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (r : Fin 200) :
    (tropicalBaseRelation8 r).eval (tropicalSupportWeight8 W) =
      ∑ j : Fin 6,
        pmTerm8 W (tropicalBaseColoring8 r) (tropicalBaseMatching8 j) := by
  classical
  unfold tropicalBaseRelation8
  rw [LaurentPolynomial.eval_finset_sum
    (tropicalSupportWeight8 W) Finset.univ]
  apply Finset.sum_congr rfl
  intro j _
  rw [LaurentPolynomial.eval_single, one_zsmul]
  exact laurentEval_tropicalMatchingLocalExponent8 hSupport
    (tropicalBaseMatching8_supported r j)

/-- Reindexing the explicit six-element support set by `Fin 6`. -/
theorem sum_tropicalBaseMatchingSet8
    {R : Type*} [CommSemiring R] (f : Fin 105 → R) :
    ∑ m ∈ tropicalBaseMatchingSet8, f m =
      ∑ j : Fin 6, f (tropicalBaseMatching8 j) := by
  simp [tropicalBaseMatchingSet8, tropicalBaseMatching8,
    Fin.sum_univ_succ]

/-- The official `EqSystemN 8 3` equations imply all 200 reconstructed
Laurent source relations. -/
theorem tropicalBaseRelations8_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    ∀ r : Fin 200,
      (tropicalBaseRelation8 r).Holds (tropicalSupportWeight8 W) := by
  intro r
  have hpm :
      pmSumN 8 3 W (tropicalBaseColoring8 r) = 0 := by
    simpa [tropicalBaseColoring8_not_allEqual r] using
      hEq (tropicalBaseColoring8 r)
  have hactive :
      (∑ m ∈ tropicalBaseMatchingSet8,
        pmTerm8 W (tropicalBaseColoring8 r) m) = 0 := by
    rw [← tropicalBaseSupportedMatchingSet8 r]
    rw [← pmSumN8_eq_sum_tropicalSupportedTerms8
      hSupport (tropicalBaseColoring8 r)]
    exact hpm
  unfold LaurentPolynomial.Holds
  rw [eval_tropicalBaseRelation8 hSupport]
  rw [← sum_tropicalBaseMatchingSet8]
  exact hactive

end


end MonochromaticQuantumGraphs.N8D3
