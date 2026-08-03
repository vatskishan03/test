import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State3.Combination1.Data

/-! Sparse source equality for `terminalBState3Combination1`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBState3Combination1SourceExplicit8 :
    LaurentPolynomial.translate terminalBState3CombinationShift1_8 (tropicalComponentBQuotientRelation8 0) - tropicalComponentBQuotientRelation8 2 = (Finsupp.single (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) : LaurentPolynomial (Fin 144)) := by
  have hq0 : tropicalComponentBQuotientRelation8 0 = (Finsupp.single (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) := by
    change (Finsupp.single (Pi.single (15 : Fin 144) (1 : ℤ) +
          Pi.single (39 : Fin 144) (1 : ℤ) +
          Pi.single (88 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
        Finsupp.single (Pi.single (15 : Fin 144) (1 : ℤ) +
          Pi.single (38 : Fin 144) (1 : ℤ) +
          Pi.single (69 : Fin 144) (-1 : ℤ) +
          Pi.single (70 : Fin 144) (1 : ℤ) +
          Pi.single (88 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
        Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
          Pi.single (59 : Fin 144) (1 : ℤ) +
          Pi.single (69 : Fin 144) (-1 : ℤ) +
          Pi.single (70 : Fin 144) (1 : ℤ) +
          Pi.single (98 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
        Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
          Pi.single (59 : Fin 144) (1 : ℤ) +
          Pi.single (99 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) = (Finsupp.single (Pi.single (15 : Fin 144) (1 : ℤ) +
          Pi.single (39 : Fin 144) (1 : ℤ) +
          Pi.single (88 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
        Finsupp.single (Pi.single (15 : Fin 144) (1 : ℤ) +
          Pi.single (38 : Fin 144) (1 : ℤ) +
          Pi.single (69 : Fin 144) (-1 : ℤ) +
          Pi.single (70 : Fin 144) (1 : ℤ) +
          Pi.single (88 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
        Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
          Pi.single (59 : Fin 144) (1 : ℤ) +
          Pi.single (69 : Fin 144) (-1 : ℤ) +
          Pi.single (70 : Fin 144) (1 : ℤ) +
          Pi.single (98 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
        Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
          Pi.single (59 : Fin 144) (1 : ℤ) +
          Pi.single (99 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144))
    rfl
  have hq2 : tropicalComponentBQuotientRelation8 2 = (Finsupp.single (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) := by
    change (Finsupp.single (Pi.single (17 : Fin 144) (1 : ℤ) +
          Pi.single (39 : Fin 144) (1 : ℤ) +
          Pi.single (88 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
        Finsupp.single (Pi.single (17 : Fin 144) (1 : ℤ) +
          Pi.single (38 : Fin 144) (1 : ℤ) +
          Pi.single (69 : Fin 144) (-1 : ℤ) +
          Pi.single (70 : Fin 144) (1 : ℤ) +
          Pi.single (88 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
        Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
          Pi.single (65 : Fin 144) (1 : ℤ) +
          Pi.single (69 : Fin 144) (-1 : ℤ) +
          Pi.single (70 : Fin 144) (1 : ℤ) +
          Pi.single (98 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
        Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
          Pi.single (65 : Fin 144) (1 : ℤ) +
          Pi.single (99 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) = (Finsupp.single (Pi.single (17 : Fin 144) (1 : ℤ) +
          Pi.single (39 : Fin 144) (1 : ℤ) +
          Pi.single (88 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
        Finsupp.single (Pi.single (17 : Fin 144) (1 : ℤ) +
          Pi.single (38 : Fin 144) (1 : ℤ) +
          Pi.single (69 : Fin 144) (-1 : ℤ) +
          Pi.single (70 : Fin 144) (1 : ℤ) +
          Pi.single (88 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
        Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
          Pi.single (65 : Fin 144) (1 : ℤ) +
          Pi.single (69 : Fin 144) (-1 : ℤ) +
          Pi.single (70 : Fin 144) (1 : ℤ) +
          Pi.single (98 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
        Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
          Pi.single (65 : Fin 144) (1 : ℤ) +
          Pi.single (99 : Fin 144) (1 : ℤ) +
          Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144))
    rfl
  have hShiftedExponent0 :
      terminalBState3CombinationShift1_8 + (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hShiftedExponent1 :
      terminalBState3CombinationShift1_8 + (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hShiftedExponent2 :
      terminalBState3CombinationShift1_8 + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hShiftedExponent3 :
      terminalBState3CombinationShift1_8 + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (99 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  rw [hq0, hq2]
  simp only [LaurentPolynomial.translate_add, LaurentPolynomial.translate_single]
  rw [hShiftedExponent0, hShiftedExponent1, hShiftedExponent2, hShiftedExponent3]
  abel

theorem terminalBState3Combination1SourceEq8 :
    (∑ k : Fin 8,
      Finsupp.single (terminalBState3Combination1ReductionUse8 k).sourceExponent
        (terminalBState3Combination1ReductionUse8 k).coefficient) = LaurentPolynomial.translate terminalBState3CombinationShift1_8 (tropicalComponentBQuotientRelation8 0) - tropicalComponentBQuotientRelation8 2 := by
  rw [terminalBState3Combination1SourceExplicit8]
  simp only [Fin.sum_univ_succ, terminalBState3Combination1ReductionUse8] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
