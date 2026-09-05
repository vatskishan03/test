import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude5340Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring5340_core_compatible : CoreCompatible coloring5340 := by
  decide

theorem partial_amplitude5340_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude5340).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring5340 (by decide)
    coloring5340_core_compatible table5340 table5340_complete
  rw [table5340_expanded, table5340_polynomial] at hs
  exact hs

theorem partial_premise004 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p004).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude5340 p004 (1) (0 : Exponent 143) _ (partial_amplitude5340_holds W h hW)
  exact premiseCheck004

end MonochromaticQuantumGraphs.N8D3.Candidate129
