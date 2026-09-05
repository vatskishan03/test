import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3069Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3069_core_compatible : CoreCompatible coloring3069 := by
  decide

theorem partial_amplitude3069_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3069).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3069 (by decide)
    coloring3069_core_compatible table3069 table3069_complete
  rw [table3069_expanded, table3069_polynomial] at hs
  exact hs

theorem partial_premise028 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p028).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3069 p028 (1) (0 : Exponent 143) _ (partial_amplitude3069_holds W h hW)
  exact premiseCheck028

end MonochromaticQuantumGraphs.N8D3.Candidate129
