import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E053.Uses

/-!
# Factor edge 53 sparse translated-product equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor053

/-- Sparse translated-product equality for factor edge 53. -/
theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).targetExponent
        (signedCoefficient (uses k).reduction.signExponent
          (uses k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate shift
        (leftFactor.factorProductPolynomial rightFactor) := by
  have hexp0 :
      shift + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (1 : Fin 144) (-1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (-1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ)) =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp1 :
      shift + (Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (-1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ)) =
        (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp2 :
      shift + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (1 : Fin 144) (-1 : ℤ) +
        Pi.single (48 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ)) =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp3 :
      shift + (0 : LaurentExponent (Fin 144)) =
        (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  simp [uses, use00,
    use01,
    use02,
    use03,
    TropicalFactorB8.Internal.useOfReduction,
    monomial00,
    monomial01,
    monomial02,
    monomial03, leftFactor, rightFactor,
    TropicalFactorB8.Internal.Vertex017.row,
    TropicalFactorB8.Internal.Vertex039.row,
    SignedCharacterRow.factorProductPolynomial,
    tropicalComponentBTranslateSub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, signedCoefficient,
    Fin.sum_univ_succ, hexp0, hexp1, hexp2, hexp3] <;> abel

end TropicalFactorB8.Internal.Factor053

end

end MonochromaticQuantumGraphs.N8D3
