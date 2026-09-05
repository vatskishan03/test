import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3107Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3107_core_compatible : CoreCompatible coloring3107 := by
  decide

theorem partial_amplitude3107_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3107).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3107 (by decide)
    coloring3107_core_compatible table3107 table3107_complete
  rw [table3107_expanded, table3107_polynomial] at hs
  exact hs

theorem partial_premise116 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p116).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3107 p116 (1) (0 : Exponent 143) _ (partial_amplitude3107_holds W h hW)
  exact premiseCheck116

end MonochromaticQuantumGraphs.N8D3.Candidate129
