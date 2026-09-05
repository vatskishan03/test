import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3861Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3861_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3861).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3861 (by decide)
    table3861 table3861_complete
  rw [table3861_expanded, table3861_polynomial] at hs
  exact hs

#print axioms amplitude3861_holds

theorem premise123 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p123).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3861 p123 (1) (0 : Exponent 143) _ (amplitude3861_holds W h hW)
  exact premiseCheck123

end MonochromaticQuantumGraphs.N8D3.Candidate129
