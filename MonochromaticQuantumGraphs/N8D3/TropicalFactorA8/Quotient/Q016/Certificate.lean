import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q016.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q016.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q016.TargetEq

/-!
# Component-A quotient row 16: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient016

/-- Exact two-source
shifted combination for quotient row 16. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 16) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient016

/-- Exact two-source shifted combination for quotient row 16. -/
def tropicalComponentAQuotientShiftedCertificate8_016 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 16) :=
  TropicalFactorA8.Internal.Quotient016.shiftedCertificate

/-- Exact normalized character reduction for quotient row 16. -/
def tropicalComponentAQuotientReductionCertificate8_016 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 16)
      (tropicalComponentAQuotientRelation8 16) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient016.use
    source_eq := TropicalFactorA8.Internal.Quotient016.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient016.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
