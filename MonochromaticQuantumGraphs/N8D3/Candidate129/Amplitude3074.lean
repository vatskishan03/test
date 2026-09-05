import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude3074Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude3074_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude3074).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring3074 (by decide)
    table3074 table3074_complete
  rw [table3074_expanded, table3074_polynomial] at hs
  exact hs

#print axioms amplitude3074_holds

theorem premise112 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p112).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude3074 p112 (1) (0 : Exponent 143) _ (amplitude3074_holds W h hW)
  exact premiseCheck112

end MonochromaticQuantumGraphs.N8D3.Candidate129
