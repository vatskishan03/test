import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3107Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3107_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3107).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3107 (by decide)
    table3107 table3107_complete
  rw [table3107_expanded, table3107_polynomial] at hs
  exact hs

#print axioms amplitude3107_holds

theorem premise116 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p116).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3107 p116 (1) (0 : Exponent 143) _ (amplitude3107_holds W h hW)
  exact premiseCheck116

end MonochromaticQuantumGraphs.N8D3.Candidate129
