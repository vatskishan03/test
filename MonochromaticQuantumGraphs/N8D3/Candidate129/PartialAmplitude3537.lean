import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3537Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3537_core_compatible : CoreCompatible coloring3537 := by
  decide

theorem partial_amplitude3537_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3537).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3537 (by decide)
    coloring3537_core_compatible table3537 table3537_complete
  rw [table3537_expanded, table3537_polynomial] at hs
  exact hs

theorem partial_premise042 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p042).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3537 p042 (1) (0 : Exponent 143) _ (partial_amplitude3537_holds W h hW)
  exact premiseCheck042

end MonochromaticQuantumGraphs.N8D3.Candidate129
