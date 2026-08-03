import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E027.Uses

/-!
# Factor edge 27 sparse translated-product equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor027

/-- Sparse translated-product equality for factor edge 27. -/
theorem target_eq :
    (∑ k : Fin 4,
      Finsupp.single (uses k).targetExponent
        (signedCoefficient (uses k).reduction.signExponent
          (uses k).coefficient)) =
      (1 : ℤ) • LaurentPolynomial.translate shift
        (leftFactor.factorProductPolynomial rightFactor) := by
  have hexp0 :
      shift + (Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (-1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (-1 : ℤ) +
        Pi.single (116 : Fin 144) (-1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) =
        (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have hexp1 :
      shift + (Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (-1 : ℤ) +
        Pi.single (116 : Fin 144) (-1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) =
        (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (85 : Fin 144) (1 : ℤ) +
        Pi.single (119 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have hexp2 :
      shift + (Pi.single (58 : Fin 144) (1 : ℤ) +
        Pi.single (64 : Fin 144) (-1 : ℤ) +
        Pi.single (69 : Fin 144) (-1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ)) =
        (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  have hexp3 :
      shift + (0 : LaurentExponent (Fin 144)) =
        (Pi.single (25 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (58 : Fin 144) (-1 : ℤ) +
        Pi.single (64 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (86 : Fin 144) (1 : ℤ) +
        Pi.single (116 : Fin 144) (1 : ℤ)) := by
    unfold shift
    abel
  simp [uses, monomial00,
    monomial01,
    monomial02,
    monomial03, leftFactor, rightFactor,
    TropicalFactorB8.Internal.Vertex004.row,
    TropicalFactorB8.Internal.Vertex009.row,
    SignedCharacterRow.factorProductPolynomial,
    tropicalComponentBTranslateSub8, LaurentPolynomial.translate_add,
    LaurentPolynomial.translate_single, signedCoefficient,
    Fin.sum_univ_succ, hexp0, hexp1, hexp2, hexp3] <;> abel

end TropicalFactorB8.Internal.Factor027

end

end MonochromaticQuantumGraphs.N8D3
