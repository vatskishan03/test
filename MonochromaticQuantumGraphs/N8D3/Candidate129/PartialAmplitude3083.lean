import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3083Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3083_core_compatible : CoreCompatible coloring3083 := by
  decide

theorem partial_amplitude3083_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3083).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3083 (by decide)
    coloring3083_core_compatible table3083 table3083_complete
  rw [table3083_expanded, table3083_polynomial] at hs
  exact hs

theorem partial_premise106 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p106).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3083 p106 (1) (0 : Exponent 143) _ (partial_amplitude3083_holds W h hW)
  exact premiseCheck106

end MonochromaticQuantumGraphs.N8D3.Candidate129
