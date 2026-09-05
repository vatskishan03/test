import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3369Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring3369_core_compatible : CoreCompatible coloring3369 := by
  decide

theorem partial_amplitude3369_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3369).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring3369 (by decide)
    coloring3369_core_compatible table3369 table3369_complete
  rw [table3369_expanded, table3369_polynomial] at hs
  exact hs

theorem partial_premise072 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p072).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude3369 p072 (1) (0 : Exponent 143) _ (partial_amplitude3369_holds W h hW)
  exact premiseCheck072

end MonochromaticQuantumGraphs.N8D3.Candidate129
