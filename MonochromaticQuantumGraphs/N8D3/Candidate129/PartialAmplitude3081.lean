import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3081Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3081_core_compatible : CoreCompatible coloring3081 := by
  decide

theorem partial_amplitude3081_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3081).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3081 (by decide)
    coloring3081_core_compatible table3081 table3081_complete
  rw [table3081_expanded, table3081_polynomial] at hs
  exact hs

theorem partial_premise061 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p061).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3081 p061 (1) (0 : Exponent 143) _ (partial_amplitude3081_holds W h hW)
  exact premiseCheck061

end MonochromaticQuantumGraphs.N8D3.Candidate129
