import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q026.Data

/-!
# Quotient 26, monomial implication 6
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient026

/-- Algebraic signed-character replay for monomial 6. -/
def monomial06 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) where
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
          SignedCharacterRow.withParityGenerator,
          SignedCharacterRow.parityGenerator,
          tropicalComponentBCharacter8, tropicalBinomialCharacter8,
          differenceRow]
  }

end TropicalFactorB8.Internal.Quotient026

end

end MonochromaticQuantumGraphs.N8D3
