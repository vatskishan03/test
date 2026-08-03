import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q028.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q028.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q028.TargetEq

/-!
# Component-A quotient row 28: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient028

/-- Exact two-source
shifted combination for quotient row 28. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 28) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient028

/-- Exact two-source shifted combination for quotient row 28. -/
def tropicalComponentAQuotientShiftedCertificate8_028 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 28) :=
  TropicalFactorA8.Internal.Quotient028.shiftedCertificate

/-- Exact normalized character reduction for quotient row 28. -/
def tropicalComponentAQuotientReductionCertificate8_028 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 28)
      (tropicalComponentAQuotientRelation8 28) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient028.use
    source_eq := TropicalFactorA8.Internal.Quotient028.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient028.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
