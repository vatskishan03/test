import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3609Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3609_core_compatible : CoreCompatible coloring3609 := by
  decide

theorem partial_amplitude3609_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3609).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3609 (by decide)
    coloring3609_core_compatible table3609 table3609_complete
  rw [table3609_expanded, table3609_polynomial] at hs
  exact hs

theorem partial_premise053 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p053).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3609 p053 (1) (0 : Exponent 143) _ (partial_amplitude3609_holds W h hW)
  exact premiseCheck053

end MonochromaticQuantumGraphs.N8D3.Candidate129
