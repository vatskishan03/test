import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S009.Data

/-!
# Component-A source 9, monomial 5

One algebraic signed-character implication, isolated as its own bounded compiler target.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source009

def monomial05 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) where
  signExponent := (0 : ℤ)
  implication := {
    coeff := tropicalComponentAWithParityCoefficients8 ![
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ),
      (0 : ℤ)
],
    combination_eq := by
      apply TropicalFactorA8.Internal.signedCharacterRow_eq_of_fields
      · simp [SignedCharacterRow.linearCombination,
        Fintype.sum_sum_type, Fin.sum_univ_succ,
        tropicalComponentAWithParityCoefficients8,
        SignedCharacterRow.withParityGenerator,
        SignedCharacterRow.parityGenerator,
        tropicalComponentACharacter8, tropicalBinomialCharacter8,
        differenceRow] <;> abel
      · norm_num [SignedCharacterRow.linearCombination,
        Fintype.sum_sum_type, Fin.sum_univ_succ,
        tropicalComponentAWithParityCoefficients8,
        SignedCharacterRow.withParityGenerator,
        SignedCharacterRow.parityGenerator,
        tropicalComponentACharacter8, tropicalBinomialCharacter8,
        differenceRow, Fin.last]
  }

end TropicalFactorA8.Internal.Source009

end

end MonochromaticQuantumGraphs.N8D3
