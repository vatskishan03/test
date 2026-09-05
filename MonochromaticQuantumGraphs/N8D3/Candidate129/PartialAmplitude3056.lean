import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3056Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3056_core_compatible : CoreCompatible coloring3056 := by
  decide

theorem partial_amplitude3056_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3056).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3056 (by decide)
    coloring3056_core_compatible table3056 table3056_complete
  rw [table3056_expanded, table3056_polynomial] at hs
  exact hs

theorem partial_premise107 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p107).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3056 p107 (1) (0 : Exponent 143) _ (partial_amplitude3056_holds W h hW)
  exact premiseCheck107

end MonochromaticQuantumGraphs.N8D3.Candidate129
