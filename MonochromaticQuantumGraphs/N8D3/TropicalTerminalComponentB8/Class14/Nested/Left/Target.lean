import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Left.Data

/-! Sparse target equality for `terminalBClass14NestedLeft`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass14NestedLeftTargetExplicit8 :
    (1 : ℤ) • (Finsupp.single terminalBClass14NestedOmittedExponent8 (1 : ℤ) + terminalBClass14NestedFace8) = (Finsupp.single (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (56 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) := by
  simp [terminalBClass14NestedOmittedExponent8, terminalBClass14NestedFace8] <;> abel

theorem terminalBClass14NestedLeftTargetEq8 :
    (∑ k : Fin 7,
      Finsupp.single (terminalBClass14NestedLeftReductionUse8 k).targetExponent
      (signedCoefficient (terminalBClass14NestedLeftReductionUse8 k).reduction.signExponent
          (terminalBClass14NestedLeftReductionUse8 k).coefficient)) = (1 : ℤ) • (Finsupp.single terminalBClass14NestedOmittedExponent8 (1 : ℤ) + terminalBClass14NestedFace8) := by
  rw [terminalBClass14NestedLeftTargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBClass14NestedLeftReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
