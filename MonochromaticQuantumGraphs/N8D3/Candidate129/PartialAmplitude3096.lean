import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3096Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3096_core_compatible : CoreCompatible coloring3096 := by
  decide

theorem partial_amplitude3096_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3096).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3096 (by decide)
    coloring3096_core_compatible table3096 table3096_complete
  rw [table3096_expanded, table3096_polynomial] at hs
  exact hs

theorem partial_premise085 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p085).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3096 p085 (1) (0 : Exponent 143) _ (partial_amplitude3096_holds W h hW)
  exact premiseCheck085

end MonochromaticQuantumGraphs.N8D3.Candidate129
