import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3339Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3339_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3339).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3339 (by decide)
    table3339 table3339_complete
  rw [table3339_expanded, table3339_polynomial] at hs
  exact hs

#print axioms amplitude3339_holds

theorem premise076 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p076).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3339 p076 (1) (0 : Exponent 143) _ (amplitude3339_holds W h hW)
  exact premiseCheck076

end MonochromaticQuantumGraphs.N8D3.Candidate129
