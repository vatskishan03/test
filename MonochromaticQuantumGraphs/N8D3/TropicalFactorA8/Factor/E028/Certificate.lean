import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E028.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E028.TargetEq

/-!
# Component-A factor edge 28: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 28. -/
def tropicalComponentAFactorCertificate8_028 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 14)
      (tropicalComponentARawFactor8 5)
      (tropicalComponentARawFactor8 52) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor028.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor028.use
    source_eq := TropicalFactorA8.Internal.Factor028.source_eq
    target_eq := TropicalFactorA8.Internal.Factor028.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
