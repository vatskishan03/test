import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q071.ShiftedEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q071.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q071.TargetEq

/-!
# Quotient 71 decision-free certificate assembly
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient071

/-- Exact shifted combination for quotient row 71. -/
def shiftedCertificate :
    LaurentPolynomial.ShiftedCombinationCertificate (κ := Fin 2)
      shiftedSources intermediate where
  use := shiftedUse
  combination_eq := shifted_eq

/-- Exact normalized character reduction for quotient row 71. -/
def reductionCertificate :
    NormalizedCharacterReductionCertificate (κ := Fin 12)
      tropicalComponentBCharacter8 intermediate relation where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := { use := uses, source_eq := source_eq, target_eq := target_eq }

end TropicalFactorB8.Internal.Quotient071

/-- Public shifted-certificate API for quotient row 71. -/
def tropicalComponentBQuotientShiftedCertificate8_071 :=
  TropicalFactorB8.Internal.Quotient071.shiftedCertificate

/-- Public reduction-certificate API for quotient row 71. -/
def tropicalComponentBQuotientReductionCertificate8_071 :=
  TropicalFactorB8.Internal.Quotient071.reductionCertificate

end

end MonochromaticQuantumGraphs.N8D3
