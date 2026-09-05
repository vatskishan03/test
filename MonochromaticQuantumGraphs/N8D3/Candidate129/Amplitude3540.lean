import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3540Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3540_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3540).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3540 (by decide)
    table3540 table3540_complete
  rw [table3540_expanded, table3540_polynomial] at hs
  exact hs

#print axioms amplitude3540_holds

theorem premise043 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p043).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3540 p043 (1) (0 : Exponent 143) _ (amplitude3540_holds W h hW)
  exact premiseCheck043

end MonochromaticQuantumGraphs.N8D3.Candidate129
