import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E027.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E027.TargetEq

/-!
# Component-A factor edge 27: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 27. -/
def tropicalComponentAFactorCertificate8_027 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 37)
      (tropicalComponentARawFactor8 5)
      (tropicalComponentARawFactor8 35) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor027.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor027.use
    source_eq := TropicalFactorA8.Internal.Factor027.source_eq
    target_eq := TropicalFactorA8.Internal.Factor027.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
