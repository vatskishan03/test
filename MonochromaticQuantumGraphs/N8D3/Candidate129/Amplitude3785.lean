import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3785Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3785_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3785).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3785 (by decide)
    table3785 table3785_complete
  rw [table3785_expanded, table3785_polynomial] at hs
  exact hs

#print axioms amplitude3785_holds

theorem premise134 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p134).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3785 p134 (1) (0 : Exponent 143) _ (amplitude3785_holds W h hW)
  exact premiseCheck134

end MonochromaticQuantumGraphs.N8D3.Candidate129
