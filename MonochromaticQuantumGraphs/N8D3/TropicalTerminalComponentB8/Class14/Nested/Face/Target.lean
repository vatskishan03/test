import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Face.Data

/-! Sparse target equality for `terminalBClass14NestedFace`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass14NestedFaceTargetExplicit8 :
    (0 : LaurentPolynomial (Fin 144)) = (0 : LaurentPolynomial (Fin 144)) := by
  rfl

theorem terminalBClass14NestedFaceTargetEq8 :
    (∑ k : Fin 12,
      Finsupp.single (terminalBClass14NestedFaceReductionUse8 k).targetExponent
      (signedCoefficient (terminalBClass14NestedFaceReductionUse8 k).reduction.signExponent
          (terminalBClass14NestedFaceReductionUse8 k).coefficient)) = (0 : LaurentPolynomial (Fin 144)) := by
  rw [terminalBClass14NestedFaceTargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBClass14NestedFaceReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
