import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Face.Data

/-! Sparse target equality for `terminalBClass19NestedFace`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass19NestedFaceTargetExplicit8 :
    (0 : LaurentPolynomial (Fin 144)) = (0 : LaurentPolynomial (Fin 144)) := by
  rfl

theorem terminalBClass19NestedFaceTargetEq8 :
    (∑ k : Fin 16,
      Finsupp.single (terminalBClass19NestedFaceReductionUse8 k).targetExponent
      (signedCoefficient (terminalBClass19NestedFaceReductionUse8 k).reduction.signExponent
          (terminalBClass19NestedFaceReductionUse8 k).coefficient)) = (0 : LaurentPolynomial (Fin 144)) := by
  rw [terminalBClass19NestedFaceTargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBClass19NestedFaceReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
