import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3056Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3056_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3056).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3056 (by decide)
    table3056 table3056_complete
  rw [table3056_expanded, table3056_polynomial] at hs
  exact hs

#print axioms amplitude3056_holds

theorem premise107 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p107).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3056 p107 (1) (0 : Exponent 143) _ (amplitude3056_holds W h hW)
  exact premiseCheck107

end MonochromaticQuantumGraphs.N8D3.Candidate129
