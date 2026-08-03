import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q012.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q012.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q012.TargetEq

/-!
# Component-A quotient row 12: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient012

/-- Exact two-source
shifted combination for quotient row 12. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 12) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient012

/-- Exact two-source shifted combination for quotient row 12. -/
def tropicalComponentAQuotientShiftedCertificate8_012 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 12) :=
  TropicalFactorA8.Internal.Quotient012.shiftedCertificate

/-- Exact normalized character reduction for quotient row 12. -/
def tropicalComponentAQuotientReductionCertificate8_012 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 12)
      (tropicalComponentAQuotientRelation8 12) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient012.use
    source_eq := TropicalFactorA8.Internal.Quotient012.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient012.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
