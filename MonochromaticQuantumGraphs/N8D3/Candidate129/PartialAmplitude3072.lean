import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3072Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3072_core_compatible : CoreCompatible coloring3072 := by
  decide

theorem partial_amplitude3072_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3072).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3072 (by decide)
    coloring3072_core_compatible table3072 table3072_complete
  rw [table3072_expanded, table3072_polynomial] at hs
  exact hs

theorem partial_premise029 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p029).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3072 p029 (1) (0 : Exponent 143) _ (partial_amplitude3072_holds W h hW)
  exact premiseCheck029

end MonochromaticQuantumGraphs.N8D3.Candidate129
