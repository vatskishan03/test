import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Core817.Nested.Face.Data

/-! Sparse source equality for `terminalBCore817NestedFace`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBCore817NestedFaceSourceExplicit8 :
    (1 : ℤ) • LaurentPolynomial.translate terminalBCore817NestedFaceShift8 terminalBCore817NestedFace8 - terminalBCore817NestedRightReduced8 = (0 : LaurentPolynomial (Fin 144)) := by
  have hFaceExponent0 :
      terminalBCore817NestedFaceShift8 + (Pi.single (28 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) = (Pi.single (28 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent1 :
      terminalBCore817NestedFaceShift8 + (Pi.single (21 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) = (Pi.single (21 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent2 :
      terminalBCore817NestedFaceShift8 + (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (91 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) = (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (91 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent3 :
      terminalBCore817NestedFaceShift8 + (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) = (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent4 :
      terminalBCore817NestedFaceShift8 + (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (12 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent5 :
      terminalBCore817NestedFaceShift8 + (Pi.single (3 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (3 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (82 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent6 :
      terminalBCore817NestedFaceShift8 + (Pi.single (3 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) = (Pi.single (3 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hFaceExponent7 :
      terminalBCore817NestedFaceShift8 + (Pi.single (3 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (3 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (57 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  unfold terminalBCore817NestedFace8
  unfold terminalBCore817NestedFaceShift8 terminalBCore817NestedRightReduced8
  simp only [LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single]
  rw [hFaceExponent0, hFaceExponent1, hFaceExponent2, hFaceExponent3, hFaceExponent4, hFaceExponent5, hFaceExponent6, hFaceExponent7]
  simp only [one_zsmul, neg_one_zsmul] <;> abel

theorem terminalBCore817NestedFaceSourceEq8 :
    (∑ k : Fin 16,
      Finsupp.single (terminalBCore817NestedFaceReductionUse8 k).sourceExponent
        (terminalBCore817NestedFaceReductionUse8 k).coefficient) = (1 : ℤ) • LaurentPolynomial.translate terminalBCore817NestedFaceShift8 terminalBCore817NestedFace8 - terminalBCore817NestedRightReduced8 := by
  rw [terminalBCore817NestedFaceSourceExplicit8]
  simp only [Fin.sum_univ_succ, terminalBCore817NestedFaceReductionUse8] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
