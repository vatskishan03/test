import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q067.Data

/-!
# Quotient 67, monomial implication 4
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient067

/-- Algebraic signed-character replay for monomial 4. -/
def monomial04 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (17 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentBWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
],
    combination_eq := by
      apply TropicalFactorB8.Internal.signedCharacterRow_eq_of_fields
      · simp [SignedCharacterRow.linearCombination,
          Fintype.sum_sum_type, Fin.sum_univ_succ,
          tropicalComponentBWithParityCoefficients8,
          SignedCharacterRow.withParityGenerator,
          SignedCharacterRow.parityGenerator,
          tropicalComponentBCharacter8, tropicalBinomialCharacter8,
          differenceRow] <;> abel
      · norm_num [SignedCharacterRow.linearCombination,
          Fintype.sum_sum_type, Fin.sum_univ_succ,
          tropicalComponentBWithParityCoefficients8,
          Fin.last,
          SignedCharacterRow.withParityGenerator,
          SignedCharacterRow.parityGenerator,
          tropicalComponentBCharacter8, tropicalBinomialCharacter8,
          differenceRow]
  }

end TropicalFactorB8.Internal.Quotient067

end

end MonochromaticQuantumGraphs.N8D3
