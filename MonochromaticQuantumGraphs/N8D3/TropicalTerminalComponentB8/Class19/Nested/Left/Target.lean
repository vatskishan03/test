import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Nested.Left.Data

/-! Sparse target equality for `terminalBClass19NestedLeft`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass19NestedLeftTargetExplicit8 :
    (1 : ℤ) • (Finsupp.single terminalBClass19NestedOmittedExponent8 (1 : ℤ) + terminalBClass19NestedFace8) = (Finsupp.single (Pi.single (27 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (27 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (56 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (19 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) := by
  simp [terminalBClass19NestedOmittedExponent8, terminalBClass19NestedFace8] <;> abel

theorem terminalBClass19NestedLeftTargetEq8 :
    (∑ k : Fin 9,
      Finsupp.single (terminalBClass19NestedLeftReductionUse8 k).targetExponent
      (signedCoefficient (terminalBClass19NestedLeftReductionUse8 k).reduction.signExponent
          (terminalBClass19NestedLeftReductionUse8 k).coefficient)) = (1 : ℤ) • (Finsupp.single terminalBClass19NestedOmittedExponent8 (1 : ℤ) + terminalBClass19NestedFace8) := by
  rw [terminalBClass19NestedLeftTargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBClass19NestedLeftReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
