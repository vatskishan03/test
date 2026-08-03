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
      shiftedSources intermediate where
  use := shiftedUse
  combination_eq := shifted_eq

/-- Exact normalized character reduction for quotient row 10. -/
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


end TropicalFactorA8.Internal.Quotient010

/-- Public shifted-certificate API for quotient row 10. -/
def tropicalComponentAQuotientShiftedCertificate8_010 :=
  TropicalFactorA8.Internal.Quotient010.shiftedCertificate

/-- Public reduction-certificate API for quotient row 10. -/
def tropicalComponentAQuotientReductionCertificate8_010 :=
  TropicalFactorA8.Internal.Quotient010.reductionCertificate

end

end MonochromaticQuantumGraphs.N8D3
