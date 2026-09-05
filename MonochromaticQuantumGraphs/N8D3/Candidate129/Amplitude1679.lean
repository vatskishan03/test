import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude1679Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude1679_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude1679).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring1679 (by decide)
    table1679 table1679_complete
  rw [table1679_expanded, table1679_polynomial] at hs
  exact hs

#print axioms amplitude1679_holds

theorem premise095 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p095).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude1679 p095 (1) (0 : Exponent 143) _ (amplitude1679_holds W h hW)
  exact premiseCheck095

end MonochromaticQuantumGraphs.N8D3.Candidate129
