import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q069.Data

/-!
# Component-A quotient 69, monomial 6

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

namespace TropicalFactorA8.Internal.Quotient069

def monomial06 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) (Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) where
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

end TropicalFactorA8.Internal.Quotient069

end

end MonochromaticQuantumGraphs.N8D3
