import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E009.Uses

/-!
# Factor edge 9 sparse translated-product equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor009

/-- Sparse translated-product equality for factor edge 9. -/
theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).targetExponent
        (signedCoefficient (uses k).reduction.signExponent
          (uses k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate shift
        (leftFactor.factorProductPolynomial rightFactor) := by
  have hexp0 :
      shift + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (7 : Fin 144) (-1 : ℤ) +
        Pi.single (20 : Fin 144) (-1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (-1 : ℤ) +
        Pi.single (120 : Fin 144) (-1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have hexp1 :
      shift + (Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (-1 : ℤ) +
        Pi.single (120 : Fin 144) (-1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) =
        (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have hexp2 :
      shift + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (7 : Fin 144) (-1 : ℤ) +
        Pi.single (20 : Fin 144) (-1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (-1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ)) =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (52 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have hexp3 :
      shift + (0 : LaurentExponent (Fin 144)) =
        (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (49 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  simp [uses, monomial00,
    monomial01,
    monomial02,
    monomial03, leftFactor, rightFactor,
    TropicalFactorB8.Internal.Vertex000.row,
    TropicalFactorB8.Internal.Vertex048.row,
    SignedCharacterRow.factorProductPolynomial,
    tropicalComponentBTranslateSub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, signedCoefficient,
    Fin.sum_univ_succ, hexp0, hexp1, hexp2, hexp3] <;> abel

end TropicalFactorB8.Internal.Factor009

end

end MonochromaticQuantumGraphs.N8D3
