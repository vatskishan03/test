import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q057.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q057.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q057.TargetEq

/-!
# Component-A quotient row 57: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient057

/-- Exact two-source
shifted combination for quotient row 57. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 57) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient057

/-- Exact two-source shifted combination for quotient row 57. -/
def tropicalComponentAQuotientShiftedCertificate8_057 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 57) :=
  TropicalFactorA8.Internal.Quotient057.shiftedCertificate

/-- Exact normalized character reduction for quotient row 57. -/
def tropicalComponentAQuotientReductionCertificate8_057 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 57)
      (tropicalComponentAQuotientRelation8 57) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient057.use
    source_eq := TropicalFactorA8.Internal.Quotient057.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient057.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
