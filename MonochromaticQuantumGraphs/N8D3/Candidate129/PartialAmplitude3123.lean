import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3123Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3123_core_compatible : CoreCompatible coloring3123 := by
  decide

theorem partial_amplitude3123_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3123).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3123 (by decide)
    coloring3123_core_compatible table3123 table3123_complete
  rw [table3123_expanded, table3123_polynomial] at hs
  exact hs

theorem partial_premise000 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p000).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3123 p000 (1) (0 : Exponent 143) _ (partial_amplitude3123_holds W h hW)
  exact premiseCheck000

end MonochromaticQuantumGraphs.N8D3.Candidate129
