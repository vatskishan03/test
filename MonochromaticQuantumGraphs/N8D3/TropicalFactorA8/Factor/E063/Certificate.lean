import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E063.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E063.TargetEq

/-!
# Component-A factor edge 63: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 63. -/
def tropicalComponentAFactorCertificate8_063 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 48)
      (tropicalComponentARawFactor8 41)
      (tropicalComponentARawFactor8 53) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor063.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor063.use
    source_eq := TropicalFactorA8.Internal.Factor063.source_eq
    target_eq := TropicalFactorA8.Internal.Factor063.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
