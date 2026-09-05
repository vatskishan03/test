import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3108Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3108_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3108).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3108 (by decide)
    table3108 table3108_complete
  rw [table3108_expanded, table3108_polynomial] at hs
  exact hs

#print axioms amplitude3108_holds

theorem premise013 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p013).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3108 p013 (1) (0 : Exponent 143) _ (amplitude3108_holds W h hW)
  exact premiseCheck013

end MonochromaticQuantumGraphs.N8D3.Candidate129
