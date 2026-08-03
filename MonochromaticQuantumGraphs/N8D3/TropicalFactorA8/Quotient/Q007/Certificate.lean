import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q007.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q007.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q007.TargetEq

/-!
# Component-A quotient row 7: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient007

/-- Exact two-source
shifted combination for quotient row 7. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 7) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient007

/-- Exact two-source shifted combination for quotient row 7. -/
def tropicalComponentAQuotientShiftedCertificate8_007 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 7) :=
  TropicalFactorA8.Internal.Quotient007.shiftedCertificate

/-- Exact normalized character reduction for quotient row 7. -/
def tropicalComponentAQuotientReductionCertificate8_007 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 7)
      (tropicalComponentAQuotientRelation8 7) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient007.use
    source_eq := TropicalFactorA8.Internal.Quotient007.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient007.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
