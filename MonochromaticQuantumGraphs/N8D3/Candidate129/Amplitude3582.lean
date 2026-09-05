import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3582Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3582_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3582).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3582 (by decide)
    table3582 table3582_complete
  rw [table3582_expanded, table3582_polynomial] at hs
  exact hs

#print axioms amplitude3582_holds

theorem premise064 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p064).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3582 p064 (1) (0 : Exponent 143) _ (amplitude3582_holds W h hW)
  exact premiseCheck064

end MonochromaticQuantumGraphs.N8D3.Candidate129
