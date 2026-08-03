import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E066.Uses

/-!
# Component-A factor edge 66: translated product equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor066

theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (use k).targetExponent
        (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate shift
        (leftFactor.factorProductPolynomial rightFactor) := by
  have h00 : shift + ((Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (-1 : ℤ) +
        Pi.single (71 : Fin 144) (-1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ)) + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (1 : Fin 144) (-1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ))) = (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have h01 : shift + (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (-1 : ℤ) +
        Pi.single (71 : Fin 144) (-1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ)) = (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (77 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have h02 : shift + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (1 : Fin 144) (-1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ)) = (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have h03 : shift + (0 : LaurentExponent (Fin 144)) = (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (71 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  simp [use, use00, use01, use02, use03, TropicalFactorA8.Internal.useOfReduction,
    monomial00, monomial01, monomial02, monomial03, leftFactor, rightFactor,
    TropicalFactorA8.Internal.Vertex044.row,
    TropicalFactorA8.Internal.Vertex053.row,
    SignedCharacterRow.factorProductPolynomial, signedCoefficient,
    tropicalComponentATranslate_sub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, Fin.sum_univ_succ,
    h00, h01, h02, h03] <;> abel

end TropicalFactorA8.Internal.Factor066

end

end MonochromaticQuantumGraphs.N8D3
