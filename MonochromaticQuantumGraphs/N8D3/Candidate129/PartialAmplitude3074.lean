import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3074Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3074_core_compatible : CoreCompatible coloring3074 := by
  decide

theorem partial_amplitude3074_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3074).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3074 (by decide)
    coloring3074_core_compatible table3074 table3074_complete
  rw [table3074_expanded, table3074_polynomial] at hs
  exact hs

theorem partial_premise112 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p112).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3074 p112 (1) (0 : Exponent 143) _ (partial_amplitude3074_holds W h hW)
  exact premiseCheck112

end MonochromaticQuantumGraphs.N8D3.Candidate129
