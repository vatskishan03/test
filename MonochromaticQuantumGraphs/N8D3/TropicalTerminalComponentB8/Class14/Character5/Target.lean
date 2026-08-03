import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class14.Character5.Data

/-! Sparse target equality for `terminalBClass14Character5`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass14Character5TargetExplicit8 :
    (1 : ℤ) • LaurentPolynomial.translate (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (terminalBClass14Basis8 5).factorPolynomial = (Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (43 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) := by
  rw [terminalB_translate_factorPolynomial8]
  have hExponent :
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) + (terminalBClass14Basis8 5).exponent = (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (43 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  rw [hExponent]
  simp [terminalBClass14Basis8, tropicalBinomialCharacter8, signedCoefficient] <;> abel

theorem terminalBClass14Character5TargetEq8 :
    (∑ k : Fin 6,
      Finsupp.single (terminalBClass14Character5ReductionUse8 k).targetExponent
      (signedCoefficient (terminalBClass14Character5ReductionUse8 k).reduction.signExponent
          (terminalBClass14Character5ReductionUse8 k).coefficient)) = (1 : ℤ) • LaurentPolynomial.translate (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (40 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (terminalBClass14Basis8 5).factorPolynomial := by
  rw [terminalBClass14Character5TargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBClass14Character5ReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
