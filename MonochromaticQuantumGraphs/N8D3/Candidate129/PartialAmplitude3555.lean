import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3555Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3555_core_compatible : CoreCompatible coloring3555 := by
  decide

theorem partial_amplitude3555_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3555).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3555 (by decide)
    coloring3555_core_compatible table3555 table3555_complete
  rw [table3555_expanded, table3555_polynomial] at hs
  exact hs

theorem partial_premise045 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p045).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3555 p045 (1) (0 : Exponent 143) _ (partial_amplitude3555_holds W h hW)
  exact premiseCheck045

end MonochromaticQuantumGraphs.N8D3.Candidate129
