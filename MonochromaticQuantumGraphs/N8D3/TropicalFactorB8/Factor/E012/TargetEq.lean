import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E012.Uses

/-!
# Factor edge 12 sparse translated-product equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor012

/-- Sparse translated-product equality for factor edge 12. -/
theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).targetExponent
        (signedCoefficient (uses k).reduction.signExponent
          (uses k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate shift
        (leftFactor.factorProductPolynomial rightFactor) := by
  have hexp0 :
      shift + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (7 : Fin 144) (-1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (117 : Fin 144) (-1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) =
        (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have hexp1 :
      shift + (Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (117 : Fin 144) (-1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) =
        (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have hexp2 :
      shift + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (7 : Fin 144) (-1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ)) =
        (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have hexp3 :
      shift + (0 : LaurentExponent (Fin 144)) =
        (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  simp [uses, use00,
    use01,
    use02,
    use03,
    TropicalFactorB8.Internal.useOfReduction,
    monomial00,
    monomial01,
    monomial02,
    monomial03, leftFactor, rightFactor,
    TropicalFactorB8.Internal.Vertex001.row,
    TropicalFactorB8.Internal.Vertex027.row,
    SignedCharacterRow.factorProductPolynomial,
    tropicalComponentBTranslateSub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, signedCoefficient,
    Fin.sum_univ_succ, hexp0, hexp1, hexp2, hexp3] <;> abel

end TropicalFactorB8.Internal.Factor012

end

end MonochromaticQuantumGraphs.N8D3
