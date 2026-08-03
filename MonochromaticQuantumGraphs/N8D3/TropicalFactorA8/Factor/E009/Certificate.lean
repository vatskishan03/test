import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E009.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E009.TargetEq

/-!
# Component-A factor edge 9: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 9. -/
def tropicalComponentAFactorCertificate8_009 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 40)
      (tropicalComponentARawFactor8 1)
      (tropicalComponentARawFactor8 22) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor009.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor009.use
    source_eq := TropicalFactorA8.Internal.Factor009.source_eq
    target_eq := TropicalFactorA8.Internal.Factor009.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
