import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q051.Data

/-!
# Quotient 51 sparse shifted-combination equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient051

/-- Explicit sparse replay of the two-source shifted aggregate. -/
theorem shifted_eq :
    (∑ k : Fin 2, (shiftedUse k).scale •
      LaurentPolynomial.translate (shiftedUse k).shift
        (shiftedSources (shiftedUse k).source)) = intermediate := by
  have translate_zsmul
      (shift : LaurentExponent (Fin 144)) (n : ℤ)
      (p : LaurentPolynomial (Fin 144)) :
      LaurentPolynomial.translate shift (n • p) =
        n • LaurentPolynomial.translate shift p := by
    exact (LaurentPolynomial.translateLinear shift).map_smul n p
  have hexp0_0 :
      (((Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ)) +
        (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp0_1 :
      (((Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ)) +
        (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp0_2 :
      (((Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ)) +
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp0_3 :
      (((Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ)) +
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp0_4 :
      (((Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ)) +
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp0_5 :
      (((Pi.single (6 : Fin 144) (-1 : ℤ) +
        Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (-1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ)) +
        (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (59 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp1_0 :
      (((0 : LaurentExponent (Fin 144)) +
        (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (117 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp1_1 :
      (((0 : LaurentExponent (Fin 144)) +
        (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (51 : Fin 144) (1 : ℤ) +
        Pi.single (75 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp1_2 :
      (((0 : LaurentExponent (Fin 144)) +
        (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (108 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp1_3 :
      (((0 : LaurentExponent (Fin 144)) +
        (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (98 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp1_4 :
      (((0 : LaurentExponent (Fin 144)) +
        (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (114 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  have hexp1_5 :
      (((0 : LaurentExponent (Fin 144)) +
        (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) : LaurentExponent (Fin 144)) =
      (Pi.single (7 : Fin 144) (1 : ℤ) +
        Pi.single (65 : Fin 144) (1 : ℤ) +
        Pi.single (88 : Fin 144) (1 : ℤ) +
        Pi.single (104 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ))) := by
    ext x; simp [Pi.single_apply]; split_ifs <;> omega
  simp [shiftedUse, shiftedSources, TropicalFactorB8.Internal.Source083.reduced,
    TropicalFactorB8.Internal.Source090.reduced, intermediate,
    LaurentPolynomial.translate_add, translate_zsmul,
    LaurentPolynomial.translate_single,
    Fin.sum_univ_succ, hexp0_0, hexp0_1, hexp0_2, hexp0_3, hexp0_4, hexp0_5, hexp1_0, hexp1_1, hexp1_2, hexp1_3, hexp1_4, hexp1_5] <;> abel

end TropicalFactorB8.Internal.Quotient051

end

end MonochromaticQuantumGraphs.N8D3
