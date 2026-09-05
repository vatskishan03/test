import MonochromaticQuantumGraphs.N8D3.TropicalBorderLimit8
import MonochromaticQuantumGraphs.N8D3.TropicalLaurentCoordinates8
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentA8
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8

/-!
# Exact-support tropical nonattainment for N=8, D=3

This module assembles the two terminal component contradictions after the
support-specific initial dichotomy.  Its conclusion concerns only weights
whose nonzero coordinates are exactly the frozen 144-coordinate tropical
support.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph

noncomputable section

/-- No weighting on the frozen exact tropical support satisfies the official
`N = 8`, `D = 3` monochromatic equation system. -/
theorem tropicalExactSupport_eqSystem8_impossible :
    ¬ ∃ W : WeightsN 8 3 ℂ,
      TropicalExactSupport8 W ∧ EqSystemN 8 3 W := by
  rintro ⟨W, hSupport, hEq⟩
  rcases tropicalInitial_component_dichotomy8 hSupport hEq with hA | hB
  · exact tropicalComponentACharacters_impossible8 hSupport hEq
      (tropicalComponentACharacters8_of_componentA8 hSupport hA)
  · exact tropicalComponentBCharacters_impossible8 hSupport hEq
      (tropicalComponentBCharacters8_of_componentB8 hSupport hB)

/-- The three-color GHZ tensor is not realized by weights on the frozen exact
tropical support. -/
theorem ghzTensor8_not_mem_tropicalExactSupportTensorImage8 :
    ghzTensor8 ∉ tropicalExactSupportTensorImage8 := by
  rintro ⟨W, hSupport, hTensor⟩
  apply tropicalExactSupport_eqSystem8_impossible
  refine ⟨W, hSupport, ?_⟩
  intro q
  simpa only [perfectMatchingTensor8, ghzTensor8] using
    congrFun hTensor.symm q

end

end MonochromaticQuantumGraphs.N8D3
