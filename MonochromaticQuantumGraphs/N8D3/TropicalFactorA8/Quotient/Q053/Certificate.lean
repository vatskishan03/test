import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q053.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q053.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q053.TargetEq

/-!
# Component-A quotient row 53: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient053

/-- Exact two-source
shifted combination for quotient row 53. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 53) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient053

/-- Exact two-source shifted combination for quotient row 53. -/
def tropicalComponentAQuotientShiftedCertificate8_053 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 53) :=
  TropicalFactorA8.Internal.Quotient053.shiftedCertificate

/-- Exact normalized character reduction for quotient row 53. -/
def tropicalComponentAQuotientReductionCertificate8_053 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 53)
      (tropicalComponentAQuotientRelation8 53) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient053.use
    source_eq := TropicalFactorA8.Internal.Quotient053.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient053.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
