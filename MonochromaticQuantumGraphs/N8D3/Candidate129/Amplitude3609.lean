import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3609Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3609_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3609).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3609 (by decide)
    table3609 table3609_complete
  rw [table3609_expanded, table3609_polynomial] at hs
  exact hs

#print axioms amplitude3609_holds

theorem premise053 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p053).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3609 p053 (1) (0 : Exponent 143) _ (amplitude3609_holds W h hW)
  exact premiseCheck053

end MonochromaticQuantumGraphs.N8D3.Candidate129
