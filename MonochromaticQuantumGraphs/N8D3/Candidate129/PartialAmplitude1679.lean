import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1679Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring1679_core_compatible : CoreCompatible coloring1679 := by
  decide

theorem partial_amplitude1679_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude1679).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring1679 (by decide)
    coloring1679_core_compatible table1679 table1679_complete
  rw [table1679_expanded, table1679_polynomial] at hs
  exact hs

theorem partial_premise095 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p095).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude1679 p095 (1) (0 : Exponent 143) _ (partial_amplitude1679_holds W h hW)
  exact premiseCheck095

end MonochromaticQuantumGraphs.N8D3.Candidate129
