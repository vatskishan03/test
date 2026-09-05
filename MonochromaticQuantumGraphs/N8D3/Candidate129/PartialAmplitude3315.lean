import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3315Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3315_core_compatible : CoreCompatible coloring3315 := by
  decide

theorem partial_amplitude3315_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3315).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3315 (by decide)
    coloring3315_core_compatible table3315 table3315_complete
  rw [table3315_expanded, table3315_polynomial] at hs
  exact hs

theorem partial_premise038 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p038).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3315 p038 (1) (0 : Exponent 143) _ (partial_amplitude3315_holds W h hW)
  exact premiseCheck038

end MonochromaticQuantumGraphs.N8D3.Candidate129
