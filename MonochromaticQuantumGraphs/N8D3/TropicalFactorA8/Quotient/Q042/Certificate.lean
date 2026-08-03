import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q042.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q042.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q042.TargetEq

/-!
# Component-A quotient row 42: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient042

/-- Exact two-source
shifted combination for quotient row 42. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 42) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient042

/-- Exact two-source shifted combination for quotient row 42. -/
def tropicalComponentAQuotientShiftedCertificate8_042 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 42) :=
  TropicalFactorA8.Internal.Quotient042.shiftedCertificate

/-- Exact normalized character reduction for quotient row 42. -/
def tropicalComponentAQuotientReductionCertificate8_042 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 42)
      (tropicalComponentAQuotientRelation8 42) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient042.use
    source_eq := TropicalFactorA8.Internal.Quotient042.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient042.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
