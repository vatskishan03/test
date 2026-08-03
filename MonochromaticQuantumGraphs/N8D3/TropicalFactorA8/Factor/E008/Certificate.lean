import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E008.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E008.TargetEq

/-!
# Component-A factor edge 8: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 8. -/
def tropicalComponentAFactorCertificate8_008 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 49)
      (tropicalComponentARawFactor8 0)
      (tropicalComponentARawFactor8 58) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor008.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor008.use
    source_eq := TropicalFactorA8.Internal.Factor008.source_eq
    target_eq := TropicalFactorA8.Internal.Factor008.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
