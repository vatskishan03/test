import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E007.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E007.TargetEq

/-!
# Component-A factor edge 7: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 7. -/
def tropicalComponentAFactorCertificate8_007 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 45)
      (tropicalComponentARawFactor8 0)
      (tropicalComponentARawFactor8 57) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor007.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor007.use
    source_eq := TropicalFactorA8.Internal.Factor007.source_eq
    target_eq := TropicalFactorA8.Internal.Factor007.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
