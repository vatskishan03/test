import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q040.Data

/-!
# Component-A quotient 40, monomial 0

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

namespace TropicalFactorA8.Internal.Quotient040

def monomial00 :
    MonomialReductionCertificate tropicalComponentACharacter8
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) where
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
        differenceRow] <;> abel_nf
      · norm_num [SignedCharacterRow.linearCombination,
        Fintype.sum_sum_type, Fin.sum_univ_succ,
        tropicalComponentAWithParityCoefficients8,
        SignedCharacterRow.withParityGenerator,
        SignedCharacterRow.parityGenerator,
        tropicalComponentACharacter8, tropicalBinomialCharacter8,
        differenceRow, Fin.last]
  }

end TropicalFactorA8.Internal.Quotient040

end

end MonochromaticQuantumGraphs.N8D3
