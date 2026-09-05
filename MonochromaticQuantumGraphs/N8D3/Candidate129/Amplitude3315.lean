import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3315Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3315_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3315).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3315 (by decide)
    table3315 table3315_complete
  rw [table3315_expanded, table3315_polynomial] at hs
  exact hs

#print axioms amplitude3315_holds

theorem premise038 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p038).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3315 p038 (1) (0 : Exponent 143) _ (amplitude3315_holds W h hW)
  exact premiseCheck038

end MonochromaticQuantumGraphs.N8D3.Candidate129
