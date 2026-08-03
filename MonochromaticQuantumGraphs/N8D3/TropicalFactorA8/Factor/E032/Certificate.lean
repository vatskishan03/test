import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E032.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E032.TargetEq

/-!
# Component-A factor edge 32: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 32. -/
def tropicalComponentAFactorCertificate8_032 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 24)
      (tropicalComponentARawFactor8 8)
      (tropicalComponentARawFactor8 34) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor032.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor032.use
    source_eq := TropicalFactorA8.Internal.Factor032.source_eq
    target_eq := TropicalFactorA8.Internal.Factor032.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
