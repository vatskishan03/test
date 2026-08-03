import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E033.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E033.TargetEq

/-!
# Component-A factor edge 33: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 33. -/
def tropicalComponentAFactorCertificate8_033 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 35)
      (tropicalComponentARawFactor8 8)
      (tropicalComponentARawFactor8 35) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor033.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor033.use
    source_eq := TropicalFactorA8.Internal.Factor033.source_eq
    target_eq := TropicalFactorA8.Internal.Factor033.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
