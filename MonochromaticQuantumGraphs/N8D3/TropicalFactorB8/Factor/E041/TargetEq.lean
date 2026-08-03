import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E041.Uses

/-!
# Factor edge 41 sparse translated-product equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor041

/-- Sparse translated-product equality for factor edge 41. -/
theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).targetExponent
        (signedCoefficient (uses k).reduction.signExponent
          (uses k).coefficient)) =
      (-1 : ℤ) • LaurentPolynomial.translate shift
        (leftFactor.factorProductPolynomial rightFactor) := by
  have hexp0 :
      shift + (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (-1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (-1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) =
        (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp1 :
      shift + (Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (70 : Fin 144) (-1 : ℤ) +
        Pi.single (126 : Fin 144) (-1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ)) =
        (Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (129 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp2 :
      shift + (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (11 : Fin 144) (-1 : ℤ) +
        Pi.single (51 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (-1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ)) =
        (Pi.single (1 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    unfold shift
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp3 :
      shift + (0 : LaurentExponent (Fin 144)) =
        (Pi.single (11 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (70 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (126 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
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
    TropicalFactorB8.Internal.Vertex006.row,
    TropicalFactorB8.Internal.Vertex038.row,
    SignedCharacterRow.factorProductPolynomial,
    tropicalComponentBTranslateSub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, signedCoefficient,
    Fin.sum_univ_succ, hexp0, hexp1, hexp2, hexp3] <;> abel

end TropicalFactorB8.Internal.Factor041

end

end MonochromaticQuantumGraphs.N8D3
