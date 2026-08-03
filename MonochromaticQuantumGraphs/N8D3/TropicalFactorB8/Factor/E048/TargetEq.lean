import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E048.Uses

/-!
# Factor edge 48 sparse translated-product equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor048

/-- Sparse translated-product equality for factor edge 48. -/
theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).targetExponent
        (signedCoefficient (uses k).reduction.signExponent
          (uses k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate shift
        (leftFactor.factorProductPolynomial rightFactor) := by
  have hexp0 :
      shift + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (-1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ)) =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x
    simp [Pi.single_apply] <;> split_ifs <;> omega
  have hexp1 :
      shift + (Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (-1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ)) =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x
    simp [Pi.single_apply] <;> split_ifs <;> omega
  have hexp2 :
      shift + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (9 : Fin 144) (-1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ)) =
        (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x
    simp [Pi.single_apply] <;> split_ifs <;> omega
  have hexp3 :
      shift + (0 : LaurentExponent (Fin 144)) =
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (39 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x
    simp [Pi.single_apply] <;> split_ifs <;> omega
  simp [uses, use00,
    use01,
    use02,
    use03,
    TropicalFactorB8.Internal.useOfReduction,
    monomial00,
    monomial01,
    monomial02,
    monomial03, leftFactor, rightFactor,
    TropicalFactorB8.Internal.Vertex014.row,
    TropicalFactorB8.Internal.Vertex044.row,
    SignedCharacterRow.factorProductPolynomial,
    tropicalComponentBTranslateSub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, signedCoefficient,
    Fin.sum_univ_succ, hexp0, hexp1, hexp2, hexp3] <;> abel_nf

end TropicalFactorB8.Internal.Factor048

end

end MonochromaticQuantumGraphs.N8D3
