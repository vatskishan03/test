import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q005.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q005.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q005.TargetEq

/-!
# Component-A quotient row 5: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient005

/-- Exact two-source
shifted combination for quotient row 5. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 5) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient005

/-- Exact two-source shifted combination for quotient row 5. -/
def tropicalComponentAQuotientShiftedCertificate8_005 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 5) :=
  TropicalFactorA8.Internal.Quotient005.shiftedCertificate

/-- Exact normalized character reduction for quotient row 5. -/
def tropicalComponentAQuotientReductionCertificate8_005 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 5)
      (tropicalComponentAQuotientRelation8 5) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient005.use
    source_eq := TropicalFactorA8.Internal.Quotient005.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient005.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
