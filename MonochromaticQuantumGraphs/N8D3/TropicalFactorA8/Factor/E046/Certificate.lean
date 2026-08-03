import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E046.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E046.TargetEq

/-!
# Component-A factor edge 46: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 46. -/
def tropicalComponentAFactorCertificate8_046 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 34)
      (tropicalComponentARawFactor8 19)
      (tropicalComponentARawFactor8 36) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor046.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor046.use
    source_eq := TropicalFactorA8.Internal.Factor046.source_eq
    target_eq := TropicalFactorA8.Internal.Factor046.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
