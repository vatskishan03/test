import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialPremises
import MonochromaticQuantumGraphs.N8D3.Candidate129.Endpoint0Flip
import MonochromaticQuantumGraphs.N8D3.Candidate129.Endpoint1Flip

/-!
# A partial-support exclusion with 106 unrestricted coordinates

Only 75 prescribed nonzero coordinates and 71 prescribed zero coordinates
are assumed. The other 106 canonical coordinates can take arbitrary complex
values, including zero. The old exact-support certificate is reused through
the matching-by-matching partial-support bridge. This is a family exclusion,
not a complete support cover and not an unrestricted eight-vertex theorem.
-/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraph

theorem no_solution_partial_support (W : WeightsN 8 3 ℂ)
    (h : PartialSupport W) (hW : EqSystemN 8 3 W) : False := by
  have hx := partialWeight_ne_zero W h
  have hp := partial_amplitude_premises W h hW
  rcases star_cases (partialWeight W) hx hp with hc | hl
  · exact endpoint0_false (partialWeight W) hx hp hc
      (partial_amplitude756_holds W h hW) (partial_amplitude759_holds W h hW)
  · exact endpoint1_false (partialWeight W) hx hp hl
      (partial_amplitude3105_holds W h hW) (partial_amplitude3132_holds W h hW)

theorem not_exists_partial_support :
    ¬ ∃ W : WeightsN 8 3 ℂ, EqSystemN 8 3 W ∧ PartialSupport W := by
  rintro ⟨W, hW, h⟩
  exact no_solution_partial_support W h hW

/-- An exact learned support clause: any solution must escape the excluded pattern. -/
theorem partial_support_escape (W : WeightsN 8 3 ℂ) (hW : EqSystemN 8 3 W) :
    (∃ g, coreNonzero g = true ∧ W (globalEdge g) = 0) ∨
      (∃ g, coreZero g = true ∧ W (globalEdge g) ≠ 0) := by
  classical
  by_cases hn : ∀ g, coreNonzero g = true → W (globalEdge g) ≠ 0
  · by_cases hz : ∀ g, coreZero g = true → W (globalEdge g) = 0
    · exact (no_solution_partial_support W ⟨hn, hz⟩ hW).elim
    · push_neg at hz
      exact Or.inr hz
  · push_neg at hn
    exact Or.inl hn

#print axioms no_solution_partial_support
#print axioms not_exists_partial_support
#print axioms partial_support_escape

end MonochromaticQuantumGraphs.N8D3.Candidate129
