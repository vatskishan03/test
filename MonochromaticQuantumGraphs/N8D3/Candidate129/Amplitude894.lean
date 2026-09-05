import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude894Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude894_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude894).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring894 (by decide)
    table894 table894_complete
  rw [table894_expanded, table894_polynomial] at hs
  exact hs

#print axioms amplitude894_holds

theorem premise021 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p021).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude894 p021 (1) (0 : Exponent 143) _ (amplitude894_holds W h hW)
  exact premiseCheck021

end MonochromaticQuantumGraphs.N8D3.Candidate129
