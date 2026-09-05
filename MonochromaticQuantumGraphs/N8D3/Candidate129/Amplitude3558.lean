import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3558Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3558_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3558).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3558 (by decide)
    table3558 table3558_complete
  rw [table3558_expanded, table3558_polynomial] at hs
  exact hs

#print axioms amplitude3558_holds

theorem premise046 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p046).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3558 p046 (1) (0 : Exponent 143) _ (amplitude3558_holds W h hW)
  exact premiseCheck046

end MonochromaticQuantumGraphs.N8D3.Candidate129
