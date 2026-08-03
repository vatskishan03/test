import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E036.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E036.TargetEq

/-!
# Component-A factor edge 36: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 36. -/
def tropicalComponentAFactorCertificate8_036 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 6)
      (tropicalComponentARawFactor8 11)
      (tropicalComponentARawFactor8 33) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor036.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor036.use
    source_eq := TropicalFactorA8.Internal.Factor036.source_eq
    target_eq := TropicalFactorA8.Internal.Factor036.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
