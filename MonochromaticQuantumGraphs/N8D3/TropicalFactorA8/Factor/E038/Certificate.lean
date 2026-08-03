import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E038.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E038.TargetEq

/-!
# Component-A factor edge 38: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 38. -/
def tropicalComponentAFactorCertificate8_038 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 36)
      (tropicalComponentARawFactor8 11)
      (tropicalComponentARawFactor8 35) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor038.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor038.use
    source_eq := TropicalFactorA8.Internal.Factor038.source_eq
    target_eq := TropicalFactorA8.Internal.Factor038.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
