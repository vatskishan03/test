import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3101Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3101_core_compatible : CoreCompatible coloring3101 := by
  decide

theorem partial_amplitude3101_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3101).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3101 (by decide)
    coloring3101_core_compatible table3101 table3101_complete
  rw [table3101_expanded, table3101_polynomial] at hs
  exact hs

theorem partial_premise111 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p111).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3101 p111 (1) (0 : Exponent 143) _ (partial_amplitude3101_holds W h hW)
  exact premiseCheck111

end MonochromaticQuantumGraphs.N8D3.Candidate129
