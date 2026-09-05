import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3342Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3342_core_compatible : CoreCompatible coloring3342 := by
  decide

theorem partial_amplitude3342_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3342).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3342 (by decide)
    coloring3342_core_compatible table3342 table3342_complete
  rw [table3342_expanded, table3342_polynomial] at hs
  exact hs

theorem partial_premise078 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p078).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3342 p078 (1) (0 : Exponent 143) _ (partial_amplitude3342_holds W h hW)
  exact premiseCheck078

end MonochromaticQuantumGraphs.N8D3.Candidate129
