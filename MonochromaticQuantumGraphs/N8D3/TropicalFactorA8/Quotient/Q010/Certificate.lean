import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q010.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q010.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q010.TargetEq

/-!
# Component-A quotient row 10: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient010

/-- Exact two-source
shifted combination for quotient row 10. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 10) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient010

/-- Exact two-source shifted combination for quotient row 10. -/
def tropicalComponentAQuotientShiftedCertificate8_010 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 10) :=
  TropicalFactorA8.Internal.Quotient010.shiftedCertificate

/-- Exact normalized character reduction for quotient row 10. -/
def tropicalComponentAQuotientReductionCertificate8_010 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 10)
      (tropicalComponentAQuotientRelation8 10) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient010.use
    source_eq := TropicalFactorA8.Internal.Quotient010.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient010.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
