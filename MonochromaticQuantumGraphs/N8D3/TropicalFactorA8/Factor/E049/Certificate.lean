import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E049.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E049.TargetEq

/-!
# Component-A factor edge 49: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor049

/-- Exact Laurent factor
certificate for raw edge 49. -/
def certificate :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      sourceRelation leftFactor rightFactor where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := shift
  reduction := {
    use := use,
    source_eq := source_eq,
    target_eq := target_eq
  }

end TropicalFactorA8.Internal.Factor049

/-- Public factor-certificate API for raw edge 49. -/
def tropicalComponentAFactorCertificate8_049 :=
  TropicalFactorA8.Internal.Factor049.certificate

end

end MonochromaticQuantumGraphs.N8D3
