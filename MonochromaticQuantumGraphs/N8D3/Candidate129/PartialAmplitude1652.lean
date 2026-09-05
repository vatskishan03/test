import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1652Checks

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem coloring1652_core_compatible : CoreCompatible coloring1652 := by
  decide

theorem partial_amplitude1652_holds (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude1652).Holds (partialWeight W) := by
  have hs := core_table_holds_of_equations W h hW coloring1652 (by decide)
    coloring1652_core_compatible table1652 table1652_complete
  rw [table1652_expanded, table1652_polynomial] at hs
  exact hs

theorem partial_premise094 (W : WeightsN 8 3 ℂ) (h : PartialSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p094).Holds (partialWeight W) := by
  apply holds_of_unit_translate (partialWeight W) (partialWeight_ne_zero W h)
    amplitude1652 p094 (1) (0 : Exponent 143) _ (partial_amplitude1652_holds W h hW)
  exact premiseCheck094

end MonochromaticQuantumGraphs.N8D3.Candidate129
