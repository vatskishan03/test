import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q040.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q040.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q040.TargetEq

/-!
# Component-A quotient row 40: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient040

/-- Exact two-source
shifted combination for quotient row 40. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 40) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient040

/-- Exact two-source shifted combination for quotient row 40. -/
def tropicalComponentAQuotientShiftedCertificate8_040 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 40) :=
  TropicalFactorA8.Internal.Quotient040.shiftedCertificate

/-- Exact normalized character reduction for quotient row 40. -/
def tropicalComponentAQuotientReductionCertificate8_040 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 40)
      (tropicalComponentAQuotientRelation8 40) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient040.use
    source_eq := TropicalFactorA8.Internal.Quotient040.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient040.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
