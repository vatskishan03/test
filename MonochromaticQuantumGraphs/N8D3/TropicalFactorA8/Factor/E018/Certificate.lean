import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E018.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E018.TargetEq

/-!
# Component-A factor edge 18: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 18. -/
def tropicalComponentAFactorCertificate8_018 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 64)
      (tropicalComponentARawFactor8 2)
      (tropicalComponentARawFactor8 24) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor018.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor018.use
    source_eq := TropicalFactorA8.Internal.Factor018.source_eq
    target_eq := TropicalFactorA8.Internal.Factor018.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
