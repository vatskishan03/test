import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q059.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q059.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q059.TargetEq

/-!
# Component-A quotient row 59: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient059

/-- Exact two-source
shifted combination for quotient row 59. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 59) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient059

/-- Exact two-source shifted combination for quotient row 59. -/
def tropicalComponentAQuotientShiftedCertificate8_059 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 59) :=
  TropicalFactorA8.Internal.Quotient059.shiftedCertificate

/-- Exact normalized character reduction for quotient row 59. -/
def tropicalComponentAQuotientReductionCertificate8_059 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 59)
      (tropicalComponentAQuotientRelation8 59) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient059.use
    source_eq := TropicalFactorA8.Internal.Quotient059.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient059.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
