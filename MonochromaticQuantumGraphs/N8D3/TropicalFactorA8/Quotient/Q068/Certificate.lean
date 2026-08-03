import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q068.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q068.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q068.TargetEq

/-!
# Component-A quotient row 68: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient068

/-- Exact two-source
shifted combination for quotient row 68. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 68) where
  use := shiftedUse
  combination_eq := shifted_eq


end TropicalFactorA8.Internal.Quotient068

/-- Exact two-source shifted combination for quotient row 68. -/
def tropicalComponentAQuotientShiftedCertificate8_068 :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      tropicalComponentAQuotientReducedSource8
      (tropicalComponentAQuotientIntermediate8 68) :=
  TropicalFactorA8.Internal.Quotient068.shiftedCertificate

/-- Exact normalized character reduction for quotient row 68. -/
def tropicalComponentAQuotientReductionCertificate8_068 :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientIntermediate8 68)
      (tropicalComponentAQuotientRelation8 68) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := TropicalFactorA8.Internal.Quotient068.use
    source_eq := TropicalFactorA8.Internal.Quotient068.source_eq
    target_eq := TropicalFactorA8.Internal.Quotient068.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
