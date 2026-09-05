import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3051Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3051_core_compatible : CoreCompatible coloring3051 := by
  decide

theorem partial_amplitude3051_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3051).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3051 (by decide)
    coloring3051_core_compatible table3051 table3051_complete
  rw [table3051_expanded, table3051_polynomial] at hs
  exact hs

theorem partial_premise025 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p025).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3051 p025 (1) (0 : Exponent 143) _ (partial_amplitude3051_holds W h hW)
  exact premiseCheck025

end MonochromaticQuantumGraphs.N8D3.Candidate129
