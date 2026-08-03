import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E050.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E050.TargetEq

/-!
# Component-A factor edge 50: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 50. -/
def tropicalComponentAFactorCertificate8_050 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 7)
      (tropicalComponentARawFactor8 26)
      (tropicalComponentARawFactor8 36) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor050.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor050.use
    source_eq := TropicalFactorA8.Internal.Factor050.source_eq
    target_eq := TropicalFactorA8.Internal.Factor050.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
