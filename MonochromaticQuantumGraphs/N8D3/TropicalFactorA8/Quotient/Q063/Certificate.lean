import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q063.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q063.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q063.TargetEq

/-!
# Component-A quotient row 63: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient063

/-- Exact two-source
shifted combination for quotient row 63. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      shiftedSources intermediate where
  use := shiftedUse
  combination_eq := shifted_eq

/-- Exact normalized character reduction for quotient row 63. -/
def reductionCertificate :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentACharacter8 intermediate relation where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := use,
    source_eq := source_eq,
    target_eq := target_eq
  }


end TropicalFactorA8.Internal.Quotient063

/-- Public shifted-certificate API for quotient row 63. -/
def tropicalComponentAQuotientShiftedCertificate8_063 :=
  TropicalFactorA8.Internal.Quotient063.shiftedCertificate

/-- Public reduction-certificate API for quotient row 63. -/
def tropicalComponentAQuotientReductionCertificate8_063 :=
  TropicalFactorA8.Internal.Quotient063.reductionCertificate

end

end MonochromaticQuantumGraphs.N8D3
