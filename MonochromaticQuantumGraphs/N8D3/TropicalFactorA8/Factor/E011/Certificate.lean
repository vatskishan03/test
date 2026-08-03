import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E011.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E011.TargetEq

/-!
# Component-A factor edge 11: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 11. -/
def tropicalComponentAFactorCertificate8_011 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 62)
      (tropicalComponentARawFactor8 1)
      (tropicalComponentARawFactor8 24) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor011.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor011.use
    source_eq := TropicalFactorA8.Internal.Factor011.source_eq
    target_eq := TropicalFactorA8.Internal.Factor011.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
