import MonochromaticQuantumGraphs.N8D3.Candidate129.PartialSupportTheorem

/-!
# Candidate129: exact-support nonexistence

This statement concerns precisely the frozen 143-coordinate support, with
every declared coordinate nonzero. It does not cover proper sub-supports,
every support on eight vertices, or the unrestricted conjecture.

This original endpoint is now a corollary of the stronger partial-support
theorem. Its assumptions imply all 75 required nonzeros and 71 required
zeros. The stronger theorem also covers many other exact supports; neither
statement is a complete support cover. No native decision axiom or external
search is trusted.
-/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraph

theorem partialSupport_of_exactSupport (W : WeightsN 8 3 ℂ) (h : ExactSupport W) :
    PartialSupport W where
  nonzero g hg := (h g).2 (coreNonzero_supported g hg)
  zero g hg := by
    by_contra hn
    have hs := (h g).1 hn
    simp [coreZero_unsupported g hg] at hs

theorem no_solution_exact_support (W : WeightsN 8 3 ℂ)
    (hs : ExactSupport W) (hW : EqSystemN 8 3 W) : False := by
  exact no_solution_partial_support W (partialSupport_of_exactSupport W hs) hW

theorem not_exists_exact_support :
    ¬ ∃ W : WeightsN 8 3 ℂ, EqSystemN 8 3 W ∧ ExactSupport W := by
  rintro ⟨W, hW, hs⟩
  exact no_solution_exact_support W hs hW

#print axioms no_solution_exact_support
#print axioms not_exists_exact_support

end MonochromaticQuantumGraphs.N8D3.Candidate129
