import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude909Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude909_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude909).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring909 (by decide)
    table909 table909_complete
  rw [table909_expanded, table909_polynomial] at hs
  exact hs

#print axioms amplitude909_holds

theorem premise007 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p007).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude909 p007 (1) (0 : Exponent 143) _ (amplitude909_holds W h hW)
  exact premiseCheck007

end MonochromaticQuantumGraphs.N8D3.Candidate129
