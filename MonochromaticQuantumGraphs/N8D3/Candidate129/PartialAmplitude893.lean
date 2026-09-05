import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude893Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring893_core_compatible : CoreCompatible coloring893 := by
  decide

theorem partial_amplitude893_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude893).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring893 (by decide)
    coloring893_core_compatible table893 table893_complete
  rw [table893_expanded, table893_polynomial] at hs
  exact hs

theorem partial_premise142 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p142).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude893 p142 (1) (0 : Exponent 143) _ (partial_amplitude893_holds W h hW)
  exact premiseCheck142

end MonochromaticQuantumGraphs.N8D3.Candidate129
