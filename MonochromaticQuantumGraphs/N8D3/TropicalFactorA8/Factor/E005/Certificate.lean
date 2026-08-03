import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E005.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E005.TargetEq

/-!
# Component-A factor edge 5: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 5. -/
def tropicalComponentAFactorCertificate8_005 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 60)
      (tropicalComponentARawFactor8 0)
      (tropicalComponentARawFactor8 55) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor005.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor005.use
    source_eq := TropicalFactorA8.Internal.Factor005.source_eq
    target_eq := TropicalFactorA8.Internal.Factor005.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
