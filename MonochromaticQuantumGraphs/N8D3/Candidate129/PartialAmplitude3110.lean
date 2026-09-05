import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3110Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3110_core_compatible : CoreCompatible coloring3110 := by
  decide

theorem partial_amplitude3110_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3110).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3110 (by decide)
    coloring3110_core_compatible table3110 table3110_complete
  rw [table3110_expanded, table3110_polynomial] at hs
  exact hs

theorem partial_premise128 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p128).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3110 p128 (1) (0 : Exponent 143) _ (partial_amplitude3110_holds W h hW)
  exact premiseCheck128

end MonochromaticQuantumGraphs.N8D3.Candidate129
