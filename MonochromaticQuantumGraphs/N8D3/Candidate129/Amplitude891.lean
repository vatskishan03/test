import MonochromaticQuantumGraphs.N8D3.Candidate129.AmplitudeBridge
import MonochromaticQuantumGraphs.N8D3.Candidate129.Amplitude891Checks

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open MonochromaticQuantumGraph

theorem amplitude891_holds (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial amplitude891).Holds (supportWeight W) := by
  have hs := table_holds_of_equations W h hW coloring891 (by decide)
    table891 table891_complete
  rw [table891_expanded, table891_polynomial] at hs
  exact hs

#print axioms amplitude891_holds

theorem premise020 (W : WeightsN 8 3 ℂ) (h : ExactSupport W)
    (hW : EqSystemN 8 3 W) :
    (toPolynomial p020).Holds (supportWeight W) := by
  apply holds_of_unit_translate (supportWeight W) (supportWeight_ne_zero W h)
    amplitude891 p020 (1) (0 : Exponent 143) _ (amplitude891_holds W h hW)
  exact premiseCheck020

end MonochromaticQuantumGraphs.N8D3.Candidate129
