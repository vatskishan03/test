import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q058.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q058.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q058.TargetEq

/-!
# Quotient 58 decision-free certificate assembly
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient058

/-- Exact shifted combination for quotient row 58. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      shiftedSources intermediate where
  use := shiftedUse
  combination_eq := shifted_eq

/-- Exact normalized character reduction for quotient row 58. -/
def reductionCertificate :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentBCharacter8 intermediate relation where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := { use := uses, source_eq := source_eq, target_eq := target_eq }

end TropicalFactorB8.Internal.Quotient058

/-- Public shifted-certificate API for quotient row 58. -/
def tropicalComponentBQuotientShiftedCertificate8_058 :=
  TropicalFactorB8.Internal.Quotient058.shiftedCertificate

/-- Public reduction-certificate API for quotient row 58. -/
def tropicalComponentBQuotientReductionCertificate8_058 :=
  TropicalFactorB8.Internal.Quotient058.reductionCertificate

end

end MonochromaticQuantumGraphs.N8D3
