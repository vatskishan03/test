import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E062.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E062.TargetEq

/-!
# Component-A factor edge 62: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 62. -/
def tropicalComponentAFactorCertificate8_062 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 46)
      (tropicalComponentARawFactor8 40)
      (tropicalComponentARawFactor8 53) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor062.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor062.use
    source_eq := TropicalFactorA8.Internal.Factor062.source_eq
    target_eq := TropicalFactorA8.Internal.Factor062.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
