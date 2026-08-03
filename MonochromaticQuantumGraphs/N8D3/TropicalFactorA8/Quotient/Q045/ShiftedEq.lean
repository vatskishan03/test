import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q045.Uses

/-!
# Component-A quotient row 45: shifted-source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient045

theorem shifted_eq :
    (∑ k : Fin 2, (shiftedUse k).scale •
      LaurentPolynomial.translate (shiftedUse k).shift
        (tropicalComponentAQuotientReducedSource8
          (shiftedUse k).source)) =
      tropicalComponentAQuotientIntermediate8 45 := by
  have h00 : (Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ)) + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    abel
  have h01 : (Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ)) + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    abel
  have h02 : (Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ)) + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    abel
  have h03 : (Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ)) + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) = (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (120 : Fin 144) (1 : ℤ)) := by
    abel
  have h04 : (Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ)) + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) = (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    abel
  have h05 : (Pi.single (89 : Fin 144) (-1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ)) + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (89 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    abel
  have h06 : (0 : LaurentExponent (Fin 144)) + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (20 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) := by
    abel
  have h07 : (0 : LaurentExponent (Fin 144)) + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    abel
  have h08 : (0 : LaurentExponent (Fin 144)) + (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (6 : Fin 144) (1 : ℤ) +
        Pi.single (9 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    abel
  have h09 : (0 : LaurentExponent (Fin 144)) + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) = (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (26 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (69 : Fin 144) (1 : ℤ) +
        Pi.single (123 : Fin 144) (1 : ℤ)) := by
    abel
  have h10 : (0 : LaurentExponent (Fin 144)) + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) = (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (48 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (127 : Fin 144) (1 : ℤ)) := by
    abel
  have h11 : (0 : LaurentExponent (Fin 144)) + (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) = (Pi.single (0 : Fin 144) (1 : ℤ) +
        Pi.single (15 : Fin 144) (1 : ℤ) +
        Pi.single (38 : Fin 144) (1 : ℤ) +
        Pi.single (90 : Fin 144) (1 : ℤ) +
        Pi.single (139 : Fin 144) (1 : ℤ)) := by
    abel
  simp [shiftedUse, tropicalComponentAQuotientReducedSource8,
    tropicalComponentAQuotientIntermediate8, Fin.sum_univ_succ,
    LaurentPolynomial.translate_add, LaurentPolynomial.translate_single,
    h00, h01, h02, h03, h04, h05, h06, h07, h08, h09, h10, h11] <;> abel

end TropicalFactorA8.Internal.Quotient045

end

end MonochromaticQuantumGraphs.N8D3
