import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3612Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3612_core_compatible : CoreCompatible coloring3612 := by
  decide

theorem partial_amplitude3612_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3612).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3612 (by decide)
    coloring3612_core_compatible table3612 table3612_complete
  rw [table3612_expanded, table3612_polynomial] at hs
  exact hs

theorem partial_premise055 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p055).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3612 p055 (1) (0 : Exponent 143) _ (partial_amplitude3612_holds W h hW)
  exact premiseCheck055

end MonochromaticQuantumGraphs.N8D3.Candidate129
