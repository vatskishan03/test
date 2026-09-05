import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3612Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3612_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3612).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3612 (by decide)
    table3612 table3612_complete
  rw [table3612_expanded, table3612_polynomial] at hs
  exact hs

#print axioms amplitude3612_holds

theorem premise055 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p055).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3612 p055 (1) (0 : Exponent 143) _ (amplitude3612_holds W h hW)
  exact premiseCheck055

end MonochromaticQuantumGraphs.N8D3.Candidate129
