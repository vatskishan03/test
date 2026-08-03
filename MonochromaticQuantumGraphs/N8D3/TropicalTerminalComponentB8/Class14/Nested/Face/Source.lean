import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Nested.Face.Data

/-! Sparse source equality for `terminalBClass14NestedFace`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass14NestedFaceSourceExplicit8 :
    (1 : ℤ) • LaurentPolynomial.translate terminalBClass14NestedFaceShift8 terminalBClass14NestedFace8 - terminalBClass14NestedRightReduced8 = (0 : LaurentPolynomial (Fin 144)) := by
  have hFaceExponent0 :
      terminalBClass14NestedFaceShift8 + (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent1 :
      terminalBClass14NestedFaceShift8 + (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent2 :
      terminalBClass14NestedFaceShift8 + (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent3 :
      terminalBClass14NestedFaceShift8 + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) = (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent4 :
      terminalBClass14NestedFaceShift8 + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) = (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent5 :
      terminalBClass14NestedFaceShift8 + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) = (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  unfold terminalBClass14NestedFace8
  unfold terminalBClass14NestedFaceShift8 terminalBClass14NestedRightReduced8
  simp only [LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single]
  rw [hFaceExponent0, hFaceExponent1, hFaceExponent2, hFaceExponent3, hFaceExponent4, hFaceExponent5]
  simp only [one_zsmul, neg_one_zsmul] <;> abel

theorem terminalBClass14NestedFaceSourceEq8 :
    (∑ k : Fin 12,
      Finsupp.single (terminalBClass14NestedFaceReductionUse8 k).sourceExponent
        (terminalBClass14NestedFaceReductionUse8 k).coefficient) = (1 : ℤ) • LaurentPolynomial.translate terminalBClass14NestedFaceShift8 terminalBClass14NestedFace8 - terminalBClass14NestedRightReduced8 := by
  rw [terminalBClass14NestedFaceSourceExplicit8]
  simp only [Fin.sum_univ_succ, terminalBClass14NestedFaceReductionUse8] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
