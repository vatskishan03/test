import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E042.Data

/-!
# Factor 42, monomial implication 2
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor042

/-- Algebraic signed-character replay for monomial 2. -/
def monomial02 :
    MonomialReductionCertificate tropicalComponentBCharacter8
      (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (41 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (138 : Fin 144) (1 : ℤ)) where
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

end TropicalFactorB8.Internal.Factor042

end

end MonochromaticQuantumGraphs.N8D3
