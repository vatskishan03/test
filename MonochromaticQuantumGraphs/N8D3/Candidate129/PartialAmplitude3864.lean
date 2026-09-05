import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3864Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3864_core_compatible : CoreCompatible coloring3864 := by
  decide

theorem partial_amplitude3864_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3864).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3864 (by decide)
    coloring3864_core_compatible table3864 table3864_complete
  rw [table3864_expanded, table3864_polynomial] at hs
  exact hs

theorem partial_premise132 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p132).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3864 p132 (1) (0 : Exponent 143) _ (partial_amplitude3864_holds W h hW)
  exact premiseCheck132

end MonochromaticQuantumGraphs.N8D3.Candidate129
