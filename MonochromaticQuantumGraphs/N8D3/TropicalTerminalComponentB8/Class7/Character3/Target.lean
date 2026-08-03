import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class7.Character3.Data

/-! Sparse target equality for `terminalBClass7Character3`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass7Character3TargetExplicit8 :
    (-1 : ℤ) • LaurentPolynomial.translate (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (terminalBClass7Basis8 3).factorPolynomial = (Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (1 : ℤ) +
      Finsupp.single (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (109 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (-1 : ℤ) : LaurentPolynomial (Fin 144)) := by
  rw [terminalB_translate_factorPolynomial8]
  have hExponent :
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) + (terminalBClass7Basis8 3).exponent = (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (109 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  rw [hExponent]
  simp [terminalBClass7Basis8, tropicalBinomialCharacter8, signedCoefficient] <;> abel

theorem terminalBClass7Character3TargetEq8 :
    (∑ k : Fin 6,
      Finsupp.single (terminalBClass7Character3ReductionUse8 k).targetExponent
      (signedCoefficient (terminalBClass7Character3ReductionUse8 k).reduction.signExponent
          (terminalBClass7Character3ReductionUse8 k).coefficient)) = (-1 : ℤ) • LaurentPolynomial.translate (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (terminalBClass7Basis8 3).factorPolynomial := by
  rw [terminalBClass7Character3TargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBClass7Character3ReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
