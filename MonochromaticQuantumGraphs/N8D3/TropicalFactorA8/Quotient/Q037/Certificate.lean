import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q037.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q037.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q037.TargetEq

/-!
# Component-A quotient row 37: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient037

/-- Exact two-source
shifted combination for quotient row 37. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 37) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient037

/-- Exact two-source shifted combination for quotient row 37. -/
def tropicalComponentAQuotientShiftedCertificate8_037 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 37) :=
  TropicalFactorA8.Internal.Quotient037.shiftedCertificate

/-- Exact normalized character reduction for quotient row 37. -/
def tropicalComponentAQuotientReductionCertificate8_037 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 37)
      (tropicalComponentAQuotientRelation8 37) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient037.use
    source_eq := TropicalFactorA8.Internal.Quotient037.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient037.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
