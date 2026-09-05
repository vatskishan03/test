import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3585Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3585_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3585).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3585 (by decide)
    table3585 table3585_complete
  rw [table3585_expanded, table3585_polynomial] at hs
  exact hs

#print axioms amplitude3585_holds

theorem premise066 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p066).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3585 p066 (1) (0 : Exponent 143) _ (amplitude3585_holds W h hW)
  exact premiseCheck066

end MonochromaticQuantumGraphs.N8D3.Candidate129
