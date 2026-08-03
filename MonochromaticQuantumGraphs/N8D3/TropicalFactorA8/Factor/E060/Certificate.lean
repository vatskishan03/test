import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E060.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E060.TargetEq

/-!
# Component-A factor edge 60: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 60. -/
def tropicalComponentAFactorCertificate8_060 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 52)
      (tropicalComponentARawFactor8 38)
      (tropicalComponentARawFactor8 46) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor060.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor060.use
    source_eq := TropicalFactorA8.Internal.Factor060.source_eq
    target_eq := TropicalFactorA8.Internal.Factor060.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
