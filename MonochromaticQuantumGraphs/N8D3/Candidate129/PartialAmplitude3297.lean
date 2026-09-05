import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3297Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3297_core_compatible : CoreCompatible coloring3297 := by
  decide

theorem partial_amplitude3297_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3297).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3297 (by decide)
    coloring3297_core_compatible table3297 table3297_complete
  rw [table3297_expanded, table3297_polynomial] at hs
  exact hs

theorem partial_premise035 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p035).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3297 p035 (1) (0 : Exponent 143) _ (partial_amplitude3297_holds W h hW)
  exact premiseCheck035

end MonochromaticQuantumGraphs.N8D3.Candidate129
