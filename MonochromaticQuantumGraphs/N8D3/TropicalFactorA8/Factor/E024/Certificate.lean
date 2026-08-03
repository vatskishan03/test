import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E024.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E024.TargetEq

/-!
# Component-A factor edge 24: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 24. -/
def tropicalComponentAFactorCertificate8_024 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 31)
      (tropicalComponentARawFactor8 4)
      (tropicalComponentARawFactor8 36) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor024.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor024.use
    source_eq := TropicalFactorA8.Internal.Factor024.source_eq
    target_eq := TropicalFactorA8.Internal.Factor024.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
