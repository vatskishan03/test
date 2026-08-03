import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q011.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q011.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Quotient.Q011.TargetEq

/-!
# Component-A quotient row 11: certificates
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Quotient011

/-- Exact two-source
shifted combination for quotient row 11. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      shiftedSources intermediate where
  use := shiftedUse
  combination_eq := shifted_eq

/-- Exact normalized character reduction for quotient row 11. -/
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


end TropicalFactorA8.Internal.Quotient011

/-- Public shifted-certificate API for quotient row 11. -/
def tropicalComponentAQuotientShiftedCertificate8_011 :=
  TropicalFactorA8.Internal.Quotient011.shiftedCertificate

/-- Public reduction-certificate API for quotient row 11. -/
def tropicalComponentAQuotientReductionCertificate8_011 :=
  TropicalFactorA8.Internal.Quotient011.reductionCertificate

end

end MonochromaticQuantumGraphs.N8D3
