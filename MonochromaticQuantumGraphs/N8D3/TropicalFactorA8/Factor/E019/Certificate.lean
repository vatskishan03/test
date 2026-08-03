import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E019.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E019.TargetEq

/-!
# Component-A factor edge 19: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 19. -/
def tropicalComponentAFactorCertificate8_019 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 42)
      (tropicalComponentARawFactor8 2)
      (tropicalComponentARawFactor8 46) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor019.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor019.use
    source_eq := TropicalFactorA8.Internal.Factor019.source_eq
    target_eq := TropicalFactorA8.Internal.Factor019.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
