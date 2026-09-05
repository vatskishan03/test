import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3108Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3108_core_compatible : CoreCompatible coloring3108 := by
  decide

theorem partial_amplitude3108_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3108).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3108 (by decide)
    coloring3108_core_compatible table3108 table3108_complete
  rw [table3108_expanded, table3108_polynomial] at hs
  exact hs

theorem partial_premise013 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p013).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3108 p013 (1) (0 : Exponent 143) _ (partial_amplitude3108_holds W h hW)
  exact premiseCheck013

end MonochromaticQuantumGraphs.N8D3.Candidate129
