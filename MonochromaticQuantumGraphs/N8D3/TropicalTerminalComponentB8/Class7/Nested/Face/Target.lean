import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Face.Data

/-! Sparse target equality for `terminalBClass7NestedFace`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass7NestedFaceTargetExplicit8 :
    (0 : LaurentPolynomial (Fin 144)) = (0 : LaurentPolynomial (Fin 144)) := by
  rfl

theorem terminalBClass7NestedFaceTargetEq8 :
    (∑ k : Fin 16,
      Finsupp.single (terminalBClass7NestedFaceReductionUse8 k).targetExponent
      (signedCoefficient (terminalBClass7NestedFaceReductionUse8 k).reduction.signExponent
          (terminalBClass7NestedFaceReductionUse8 k).coefficient)) = (0 : LaurentPolynomial (Fin 144)) := by
  rw [terminalBClass7NestedFaceTargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBClass7NestedFaceReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
