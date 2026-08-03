import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Face.Data

/-! Sparse target equality for `terminalBCore817NestedFace`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBCore817NestedFaceTargetExplicit8 :
    (0 : LaurentPolynomial (Fin 144)) = (0 : LaurentPolynomial (Fin 144)) := by
  rfl

theorem terminalBCore817NestedFaceTargetEq8 :
    (∑ k : Fin 16,
      Finsupp.single (terminalBCore817NestedFaceReductionUse8 k).targetExponent
      (signedCoefficient (terminalBCore817NestedFaceReductionUse8 k).reduction.signExponent
          (terminalBCore817NestedFaceReductionUse8 k).coefficient)) = (0 : LaurentPolynomial (Fin 144)) := by
  rw [terminalBCore817NestedFaceTargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBCore817NestedFaceReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
