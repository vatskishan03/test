import MonochromaticQuantumGraphs.N8D3.TropicalTerminalComponentB8.Class19.Character3.Data

/-! Sparse target equality for `terminalBClass19Character3`. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 10000
set_option maxHeartbeats 5000000

theorem terminalBClass19Character3TargetExplicit8 :
    (1 : ℤ) • LaurentPolynomial.translate (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (terminalBClass19Basis8 3).factorPolynomial = (Finsupp.single (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (-1 : ℤ) +
      Finsupp.single (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (1 : ℤ) : LaurentPolynomial (Fin 144)) := by
  rw [terminalB_translate_factorPolynomial8]
  have hExponent :
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) + (terminalBClass19Basis8 3).exponent = (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    funext i
    fin_cases i <;> decide
  rw [hExponent]
  simp [terminalBClass19Basis8, tropicalBinomialCharacter8, signedCoefficient] <;> abel

theorem terminalBClass19Character3TargetEq8 :
    (∑ k : Fin 6,
      Finsupp.single (terminalBClass19Character3ReductionUse8 k).targetExponent
      (signedCoefficient (terminalBClass19Character3ReductionUse8 k).reduction.signExponent
          (terminalBClass19Character3ReductionUse8 k).coefficient)) = (1 : ℤ) • LaurentPolynomial.translate (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) (terminalBClass19Basis8 3).factorPolynomial := by
  rw [terminalBClass19Character3TargetExplicit8]
  simp [Fin.sum_univ_succ, terminalBClass19Character3ReductionUse8, signedCoefficient] <;> abel

end

end MonochromaticQuantumGraphs.N8D3
