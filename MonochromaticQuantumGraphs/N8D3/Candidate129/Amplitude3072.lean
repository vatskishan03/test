import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3072Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3072_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3072).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3072 (by decide)
    table3072 table3072_complete
  rw [table3072_expanded, table3072_polynomial] at hs
  exact hs

#print axioms amplitude3072_holds

theorem premise029 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p029).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3072 p029 (1) (0 : Exponent 143) _ (amplitude3072_holds W h hW)
  exact premiseCheck029

end MonochromaticQuantumGraphs.N8D3.Candidate129
