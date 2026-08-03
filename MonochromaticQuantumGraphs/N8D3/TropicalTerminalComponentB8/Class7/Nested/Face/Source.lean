import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Nested.Face.Data

/-! Sparse source equality for `terminalBClass7NestedFace`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass7NestedFaceSourceExplicit8 :
    (1 : ℤ) • LaurentPolynomial.translate terminalBClass7NestedFaceShift8 terminalBClass7NestedFace8 - terminalBClass7NestedRightReduced8 = (0 : LaurentPolynomial (Fin 144)) := by
  have hFaceExponent0 :
      terminalBClass7NestedFaceShift8 + (Pi.single (28 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) = (Pi.single (28 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent1 :
      terminalBClass7NestedFaceShift8 + (Pi.single (21 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) = (Pi.single (21 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent2 :
      terminalBClass7NestedFaceShift8 + (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (91 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) = (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (91 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent3 :
      terminalBClass7NestedFaceShift8 + (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) = (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent4 :
      terminalBClass7NestedFaceShift8 + (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) = (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent5 :
      terminalBClass7NestedFaceShift8 + (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) = (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent6 :
      terminalBClass7NestedFaceShift8 + (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) = (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent7 :
      terminalBClass7NestedFaceShift8 + (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) = (Pi.single (4 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  unfold terminalBClass7NestedFace8
  unfold terminalBClass7NestedFaceShift8 terminalBClass7NestedRightReduced8
  simp only [LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single]
  rw [hFaceExponent0, hFaceExponent1, hFaceExponent2, hFaceExponent3, hFaceExponent4, hFaceExponent5, hFaceExponent6, hFaceExponent7]
  simp only [one_zsmul, neg_one_zsmul] <;> abel

theorem terminalBClass7NestedFaceSourceEq8 :
    (∑ k : Fin 16,
      Finsupp.single (terminalBClass7NestedFaceReductionUse8 k).sourceExponent
        (terminalBClass7NestedFaceReductionUse8 k).coefficient) = (1 : ℤ) • LaurentPolynomial.translate terminalBClass7NestedFaceShift8 terminalBClass7NestedFace8 - terminalBClass7NestedRightReduced8 := by
  rw [terminalBClass7NestedFaceSourceExplicit8]
  simp only [Fin.sum_univ_succ, terminalBClass7NestedFaceReductionUse8] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
