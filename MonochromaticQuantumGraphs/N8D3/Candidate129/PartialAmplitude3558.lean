import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3558Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3558_core_compatible : CoreCompatible coloring3558 := by
  decide

theorem partial_amplitude3558_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3558).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3558 (by decide)
    coloring3558_core_compatible table3558 table3558_complete
  rw [table3558_expanded, table3558_polynomial] at hs
  exact hs

theorem partial_premise046 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p046).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3558 p046 (1) (0 : Exponent 143) _ (partial_amplitude3558_holds W h hW)
  exact premiseCheck046

end MonochromaticQuantumGraphs.N8D3.Candidate129
