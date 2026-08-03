import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E065.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E065.TargetEq

/-!
# Component-A factor edge 65: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 65. -/
def tropicalComponentAFactorCertificate8_065 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 58)
      (tropicalComponentARawFactor8 43)
      (tropicalComponentARawFactor8 53) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor065.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor065.use
    source_eq := TropicalFactorA8.Internal.Factor065.source_eq
    target_eq := TropicalFactorA8.Internal.Factor065.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
