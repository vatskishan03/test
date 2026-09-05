import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude893Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude893_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude893).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring893 (by decide)
    table893 table893_complete
  rw [table893_expanded, table893_polynomial] at hs
  exact hs

#print axioms amplitude893_holds

theorem premise142 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p142).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude893 p142 (1) (0 : Exponent 143) _ (amplitude893_holds W h hW)
  exact premiseCheck142

end MonochromaticQuantumGraphs.N8D3.Candidate129
