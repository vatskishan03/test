import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E020.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E020.TargetEq

/-!
# Component-A factor edge 20: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 20. -/
def tropicalComponentAFactorCertificate8_020 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 44)
      (tropicalComponentARawFactor8 2)
      (tropicalComponentARawFactor8 47) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor020.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor020.use
    source_eq := TropicalFactorA8.Internal.Factor020.source_eq
    target_eq := TropicalFactorA8.Internal.Factor020.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
