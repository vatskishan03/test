import MonochromaticQuantumGraphs.N8D3.Candidate129.OfficialPremises
import MonochromaticQuantumGraphs.N8D3.Candidate129.Endpoint0Flip
import MonochromaticQuantumGraphs.N8D3.Candidate129.Endpoint1Flip

/-!
# Candidate129: exact-support nonexistence

This statement concerns precisely the frozen 143-coordinate support, with
every declared coordinate nonzero. It does not cover proper sub-supports,
every support on eight vertices, or the unrestricted conjecture.

The official 105-term matching sum supplies every amplitude premise. The
145-node polynomial DAG, eleven factor products, twelve character steps,
and both complete-amplitude cancellations are replayed by ordinary Lean
kernel proofs. No native decision axiom or external search is trusted.
-/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraph

theorem no_solution_exact_support (W : WeightsN 8 3 ℂ)
    (hs : ExactSupport W) (hW : EqSystemN 8 3 W) : False := by
  have hx := supportWeight_ne_zero W hs
  have hp := official_amplitude_premises W hs hW
  rcases star_cases (supportWeight W) hx hp with hc | hl
  · exact endpoint0_false (supportWeight W) hx hp hc
      (amplitude756_holds W hs hW) (amplitude759_holds W hs hW)
  · exact endpoint1_false (supportWeight W) hx hp hl
      (amplitude3105_holds W hs hW) (amplitude3132_holds W hs hW)

theorem not_exists_exact_support :
    ¬ ∃ W : WeightsN 8 3 ℂ, EqSystemN 8 3 W ∧ ExactSupport W := by
  rintro ⟨W, hW, hs⟩
  exact no_solution_exact_support W hs hW

#print axioms no_solution_exact_support
#print axioms not_exists_exact_support

end MonochromaticQuantumGraphs.N8D3.Candidate129
