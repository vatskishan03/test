import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3585Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3585_core_compatible : CoreCompatible coloring3585 := by
  decide

theorem partial_amplitude3585_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3585).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3585 (by decide)
    coloring3585_core_compatible table3585 table3585_complete
  rw [table3585_expanded, table3585_polynomial] at hs
  exact hs

theorem partial_premise066 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p066).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3585 p066 (1) (0 : Exponent 143) _ (partial_amplitude3585_holds W h hW)
  exact premiseCheck066

end MonochromaticQuantumGraphs.N8D3.Candidate129
