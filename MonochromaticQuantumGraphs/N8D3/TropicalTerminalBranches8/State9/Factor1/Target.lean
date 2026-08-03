import MonochromaticQuantumGraphs.N8D3.TropicalTerminalBranches8.State9.Factor1.Data

/-! Sparse target equality for `terminalBState9Factor1`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBState9Factor1TargetExplicit8 :
    (1 : ℤ) • LaurentPolynomial.translate (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (SignedCharacterRow.factorProductPolynomial (terminalBSplitCharacter8 1) (terminalBSplitCharacter8 2)) = (Finsupp.single (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) := by
  rw [terminalB_translate_factorProductPolynomial8]
  have hExponent0 :
      (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) + ((terminalBSplitCharacter8 1).exponent + (terminalBSplitCharacter8 2).exponent) = (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hExponent1 :
      (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) + (terminalBSplitCharacter8 1).exponent = (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  have hExponent2 :
      (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) + (terminalBSplitCharacter8 2).exponent = (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  rw [hExponent0, hExponent1, hExponent2]
  simp [terminalBSplitCharacter8, tropicalBinomialCharacter8, signedCoefficient] <;> abel

theorem terminalBState9Factor1TargetEq8 :
    (∑ k : Fin 4,
      Finsupp.single (terminalBState9Factor1ReductionUse8 k).targetExponent
      (signedCoefficient (terminalBState9Factor1ReductionUse8 k).reduction.signExponent
          (terminalBState9Factor1ReductionUse8 k).coefficient)) = (1 : ℤ) • LaurentPolynomial.translate (Pi.single (0 : Fin 144) (-1 : ℤ) +
        Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (SignedCharacterRow.factorProductPolynomial (terminalBSplitCharacter8 1) (terminalBSplitCharacter8 2)) := by
  rw [terminalBState9Factor1TargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBState9Factor1ReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
