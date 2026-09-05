import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude894Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring894_core_compatible : CoreCompatible coloring894 := by
  decide

theorem partial_amplitude894_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude894).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring894 (by decide)
    coloring894_core_compatible table894 table894_complete
  rw [table894_expanded, table894_polynomial] at hs
  exact hs

theorem partial_premise021 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p021).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude894 p021 (1) (0 : Exponent 143) _ (partial_amplitude894_holds W h hW)
  exact premiseCheck021

end MonochromaticQuantumGraphs.N8D3.Candidate129
