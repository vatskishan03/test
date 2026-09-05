import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3053Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3053_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3053).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3053 (by decide)
    table3053 table3053_complete
  rw [table3053_expanded, table3053_polynomial] at hs
  exact hs

#print axioms amplitude3053_holds

theorem premise117 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p117).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3053 p117 (1) (0 : Exponent 143) _ (amplitude3053_holds W h hW)
  exact premiseCheck117

end MonochromaticQuantumGraphs.N8D3.Candidate129
