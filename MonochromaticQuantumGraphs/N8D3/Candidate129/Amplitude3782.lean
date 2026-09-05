import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3782Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3782_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3782).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3782 (by decide)
    table3782 table3782_complete
  rw [table3782_expanded, table3782_polynomial] at hs
  exact hs

#print axioms amplitude3782_holds

theorem premise121 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p121).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3782 p121 (1) (0 : Exponent 143) _ (amplitude3782_holds W h hW)
  exact premiseCheck121

end MonochromaticQuantumGraphs.N8D3.Candidate129
