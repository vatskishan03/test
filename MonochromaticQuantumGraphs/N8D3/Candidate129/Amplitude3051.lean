import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3051Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3051_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3051).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3051 (by decide)
    table3051 table3051_complete
  rw [table3051_expanded, table3051_polynomial] at hs
  exact hs

#print axioms amplitude3051_holds

theorem premise025 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p025).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3051 p025 (1) (0 : Exponent 143) _ (amplitude3051_holds W h hW)
  exact premiseCheck025

end MonochromaticQuantumGraphs.N8D3.Candidate129
