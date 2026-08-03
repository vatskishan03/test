import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E009.Uses

/-!
# Component-A factor edge 9: translated product equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor009

theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (use k).targetExponent
        (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate shift
        ((tropicalComponentARawFactor8 1).factorProductPolynomial
          (tropicalComponentARawFactor8 22)) := by
  have h00 : shift + ((Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (117 : Fin 144) (-1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) + (Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (-1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ))) = (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have h01 : shift + (Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (117 : Fin 144) (-1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) = (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have h02 : shift + (Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (-1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ)) = (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have h03 : shift + (0 : LaurentExponent (Fin 144)) = (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  simp [use, monomial00, monomial01, monomial02, monomial03, shift, tropicalComponentARawFactor8,
    SignedCharacterRow.factorProductPolynomial, signedCoefficient,
    tropicalComponentATranslate_sub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, Fin.sum_univ_succ,
    h00, h01, h02, h03] <;> abel

end TropicalFactorA8.Internal.Factor009

end

end MonochromaticQuantumGraphs.N8D3
