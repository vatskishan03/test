import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E059.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E059.TargetEq

/-!
# Component-A factor edge 59: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 59. -/
def tropicalComponentAFactorCertificate8_059 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 38)
      (tropicalComponentARawFactor8 37)
      (tropicalComponentARawFactor8 46) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor059.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor059.use
    source_eq := TropicalFactorA8.Internal.Factor059.source_eq
    target_eq := TropicalFactorA8.Internal.Factor059.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
