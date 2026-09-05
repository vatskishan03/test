import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3312Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3312_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3312).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3312 (by decide)
    table3312 table3312_complete
  rw [table3312_expanded, table3312_polynomial] at hs
  exact hs

#print axioms amplitude3312_holds

theorem premise037 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p037).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3312 p037 (1) (0 : Exponent 143) _ (amplitude3312_holds W h hW)
  exact premiseCheck037

end MonochromaticQuantumGraphs.N8D3.Candidate129
