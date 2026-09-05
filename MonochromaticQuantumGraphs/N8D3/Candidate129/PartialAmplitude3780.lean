import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3780Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3780_core_compatible : CoreCompatible coloring3780 := by
  decide

theorem partial_amplitude3780_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3780).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3780 (by decide)
    coloring3780_core_compatible table3780 table3780_complete
  rw [table3780_expanded, table3780_polynomial] at hs
  exact hs

theorem partial_premise120 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p120).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3780 p120 (1) (0 : Exponent 143) _ (partial_amplitude3780_holds W h hW)
  exact premiseCheck120

end MonochromaticQuantumGraphs.N8D3.Candidate129
