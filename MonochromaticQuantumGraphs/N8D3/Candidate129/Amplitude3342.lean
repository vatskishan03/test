import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3342Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3342_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3342).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3342 (by decide)
    table3342 table3342_complete
  rw [table3342_expanded, table3342_polynomial] at hs
  exact hs

#print axioms amplitude3342_holds

theorem premise078 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p078).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3342 p078 (1) (0 : Exponent 143) _ (amplitude3342_holds W h hW)
  exact premiseCheck078

end MonochromaticQuantumGraphs.N8D3.Candidate129
