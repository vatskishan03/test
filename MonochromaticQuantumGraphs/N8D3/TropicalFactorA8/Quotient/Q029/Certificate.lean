import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q029.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q029.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q029.TargetEq

/-!
# Component-A quotient row 29: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient029

/-- Exact two-source
shifted combination for quotient row 29. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 29) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient029

/-- Exact two-source shifted combination for quotient row 29. -/
def tropicalComponentAQuotientShiftedCertificate8_029 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 29) :=
  TropicalFactorA8.Internal.Quotient029.shiftedCertificate

/-- Exact normalized character reduction for quotient row 29. -/
def tropicalComponentAQuotientReductionCertificate8_029 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 29)
      (tropicalComponentAQuotientRelation8 29) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient029.use
    source_eq := TropicalFactorA8.Internal.Quotient029.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient029.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
