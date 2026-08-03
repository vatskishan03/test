import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q066.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q066.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q066.TargetEq

/-!
# Component-A quotient row 66: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient066

/-- Exact two-source
shifted combination for quotient row 66. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 66) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient066

/-- Exact two-source shifted combination for quotient row 66. -/
def tropicalComponentAQuotientShiftedCertificate8_066 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 66) :=
  TropicalFactorA8.Internal.Quotient066.shiftedCertificate

/-- Exact normalized character reduction for quotient row 66. -/
def tropicalComponentAQuotientReductionCertificate8_066 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 66)
      (tropicalComponentAQuotientRelation8 66) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient066.use
    source_eq := TropicalFactorA8.Internal.Quotient066.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient066.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
