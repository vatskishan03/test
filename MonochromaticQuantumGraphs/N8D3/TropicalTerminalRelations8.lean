import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8.Shard0
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8.Shard1

/-!
# Official EqSystem adapter for the eight N8D3 terminal sources

This module reconstructs the selected official `pmSumN` equations without a
second 105-column matching table.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem tropicalTerminalOfficialIndex8_eq :
    tropicalTerminalOfficialIndex8 = ![65, 73, 74, 75, 77, 437, 874, 1213] := by
  rfl

theorem tropicalTerminalColoringCode8_eq :
    tropicalTerminalColoringCode8 = ![733, 756, 758, 759, 761, 1462, 2917, 3646] := by
  rfl

/-- All eight source colorings are nonmonochromatic. -/
theorem tropicalTerminalColoring8_not_allEqual (r : Fin 8) :
    ¬ allEqual (tropicalTerminalColoring8 r) := by
  revert r
  decide

/-- Each row's support filter is exactly its declared six-to-nine columns. -/
theorem tropicalTerminalSupportedMatchingSet8 (r : Fin 8) :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 r) m = true) =
        tropicalTerminalMatchingSet8 r := by
  fin_cases r
  · exact tropicalTerminalSupportedMatchingSet8_row0
  · exact tropicalTerminalSupportedMatchingSet8_row1
  · exact tropicalTerminalSupportedMatchingSet8_row2
  · exact tropicalTerminalSupportedMatchingSet8_row3
  · exact tropicalTerminalSupportedMatchingSet8_row4
  · exact tropicalTerminalSupportedMatchingSet8_row5
  · exact tropicalTerminalSupportedMatchingSet8_row6
  · exact tropicalTerminalSupportedMatchingSet8_row7

theorem tropicalTerminalMatching8_supported
    (r : Fin 8) {m : Fin 105} (hm : m ∈ tropicalTerminalMatchingSet8 r) :
    tropicalMatchingSupported8 (tropicalTerminalColoring8 r) m = true := by
  have hmem : m ∈ Finset.univ.filter (fun n : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 r) n = true) := by
    rw [tropicalTerminalSupportedMatchingSet8 r]
    exact hm
  exact (Finset.mem_filter.mp hmem).2

/-- Evaluation is the corresponding sparse part of the official matching sum. -/
theorem eval_tropicalTerminalRelation8
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (r : Fin 8) :
    (tropicalTerminalRelation8 r).eval (tropicalSupportWeight8 W) =
      ∑ m ∈ tropicalTerminalMatchingSet8 r,
        pmTerm8 W (tropicalTerminalColoring8 r) m := by
  classical
  unfold tropicalTerminalRelation8
  rw [LaurentPolynomial.eval_finset_sum
    (tropicalSupportWeight8 W) (tropicalTerminalMatchingSet8 r)]
  apply Finset.sum_congr rfl
  intro m hm
  rw [LaurentPolynomial.eval_single, one_zsmul]
  exact laurentEval_tropicalMatchingLocalExponent8 hSupport
    (tropicalTerminalMatching8_supported r hm)

/-- The official EqSystem supplies all eight reconstructed terminal sources. -/
theorem tropicalTerminalRelations8_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    ∀ r : Fin 8,
      (tropicalTerminalRelation8 r).Holds (tropicalSupportWeight8 W) := by
  intro r
  have hpm : pmSumN 8 3 W (tropicalTerminalColoring8 r) = 0 := by
    simpa [tropicalTerminalColoring8_not_allEqual r] using
      hEq (tropicalTerminalColoring8 r)
  have hactive :
      (∑ m ∈ tropicalTerminalMatchingSet8 r,
        pmTerm8 W (tropicalTerminalColoring8 r) m) = 0 := by
    rw [← tropicalTerminalSupportedMatchingSet8 r]
    rw [← pmSumN8_eq_sum_tropicalSupportedTerms8
      hSupport (tropicalTerminalColoring8 r)]
    exact hpm
  unfold LaurentPolynomial.Holds
  rw [eval_tropicalTerminalRelation8 hSupport]
  exact hactive

/-- Official terminal relation 65. -/
def tropicalTerminalRelation65_8 : LaurentPolynomial (Fin 144) :=
  tropicalTerminalRelation8 0

theorem tropicalTerminalRelation65_8_explicit :
    tropicalTerminalRelation65_8 =
      tropicalTerminalExplicitRelation8 0 := by
  decide

theorem tropicalTerminalRelation65_8_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    (tropicalTerminalRelation65_8).Holds
      (tropicalSupportWeight8 W) :=
  tropicalTerminalRelations8_hold hSupport hEq 0

/-- Official terminal relation 73. -/
def tropicalTerminalRelation73_8 : LaurentPolynomial (Fin 144) :=
  tropicalTerminalRelation8 1

theorem tropicalTerminalRelation73_8_explicit :
    tropicalTerminalRelation73_8 =
      tropicalTerminalExplicitRelation8 1 := by
  decide

theorem tropicalTerminalRelation73_8_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    (tropicalTerminalRelation73_8).Holds
      (tropicalSupportWeight8 W) :=
  tropicalTerminalRelations8_hold hSupport hEq 1

/-- Official terminal relation 74. -/
def tropicalTerminalRelation74_8 : LaurentPolynomial (Fin 144) :=
  tropicalTerminalRelation8 2

theorem tropicalTerminalRelation74_8_explicit :
    tropicalTerminalRelation74_8 =
      tropicalTerminalExplicitRelation8 2 := by
  decide

theorem tropicalTerminalRelation74_8_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    (tropicalTerminalRelation74_8).Holds
      (tropicalSupportWeight8 W) :=
  tropicalTerminalRelations8_hold hSupport hEq 2

/-- Official terminal relation 75. -/
def tropicalTerminalRelation75_8 : LaurentPolynomial (Fin 144) :=
  tropicalTerminalRelation8 3

theorem tropicalTerminalRelation75_8_explicit :
    tropicalTerminalRelation75_8 =
      tropicalTerminalExplicitRelation8 3 := by
  decide

theorem tropicalTerminalRelation75_8_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    (tropicalTerminalRelation75_8).Holds
      (tropicalSupportWeight8 W) :=
  tropicalTerminalRelations8_hold hSupport hEq 3

/-- Official terminal relation 77. -/
def tropicalTerminalRelation77_8 : LaurentPolynomial (Fin 144) :=
  tropicalTerminalRelation8 4

theorem tropicalTerminalRelation77_8_explicit :
    tropicalTerminalRelation77_8 =
      tropicalTerminalExplicitRelation8 4 := by
  decide

theorem tropicalTerminalRelation77_8_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    (tropicalTerminalRelation77_8).Holds
      (tropicalSupportWeight8 W) :=
  tropicalTerminalRelations8_hold hSupport hEq 4

/-- Official terminal relation 437. -/
def tropicalTerminalRelation437_8 : LaurentPolynomial (Fin 144) :=
  tropicalTerminalRelation8 5

theorem tropicalTerminalRelation437_8_explicit :
    tropicalTerminalRelation437_8 =
      tropicalTerminalExplicitRelation8 5 := by
  decide

theorem tropicalTerminalRelation437_8_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    (tropicalTerminalRelation437_8).Holds
      (tropicalSupportWeight8 W) :=
  tropicalTerminalRelations8_hold hSupport hEq 5

/-- Official terminal relation 874. -/
def tropicalTerminalRelation874_8 : LaurentPolynomial (Fin 144) :=
  tropicalTerminalRelation8 6

theorem tropicalTerminalRelation874_8_explicit :
    tropicalTerminalRelation874_8 =
      tropicalTerminalExplicitRelation8 6 := by
  decide

theorem tropicalTerminalRelation874_8_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    (tropicalTerminalRelation874_8).Holds
      (tropicalSupportWeight8 W) :=
  tropicalTerminalRelations8_hold hSupport hEq 6

/-- Official terminal relation 1213. -/
def tropicalTerminalRelation1213_8 : LaurentPolynomial (Fin 144) :=
  tropicalTerminalRelation8 7

theorem tropicalTerminalRelation1213_8_explicit :
    tropicalTerminalRelation1213_8 =
      tropicalTerminalExplicitRelation8 7 := by
  decide

theorem tropicalTerminalRelation1213_8_hold
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W)
    (hEq : EqSystemN 8 3 W) :
    (tropicalTerminalRelation1213_8).Holds
      (tropicalSupportWeight8 W) :=
  tropicalTerminalRelations8_hold hSupport hEq 7

end

end MonochromaticQuantumGraphs.N8D3
