import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3366Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3366_core_compatible : CoreCompatible coloring3366 := by
  decide

theorem partial_amplitude3366_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3366).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3366 (by decide)
    coloring3366_core_compatible table3366 table3366_complete
  rw [table3366_expanded, table3366_polynomial] at hs
  exact hs

theorem partial_premise070 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p070).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3366 p070 (1) (0 : Exponent 143) _ (partial_amplitude3366_holds W h hW)
  exact premiseCheck070

end MonochromaticQuantumGraphs.N8D3.Candidate129
