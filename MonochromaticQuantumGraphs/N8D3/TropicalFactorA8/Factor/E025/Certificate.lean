import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E025.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E025.TargetEq

/-!
# Component-A factor edge 25: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 25. -/
def tropicalComponentAFactorCertificate8_025 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 18)
      (tropicalComponentARawFactor8 5)
      (tropicalComponentARawFactor8 33) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor025.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor025.use
    source_eq := TropicalFactorA8.Internal.Factor025.source_eq
    target_eq := TropicalFactorA8.Internal.Factor025.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
