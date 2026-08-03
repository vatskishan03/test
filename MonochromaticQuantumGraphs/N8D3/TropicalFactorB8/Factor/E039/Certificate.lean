import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E039.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Factor.E039.TargetEq

/-!
# Factor edge 39 decision-free certificate assembly
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Factor039

/-- Exact Laurent factor certificate for raw edge 39. -/
def certificate :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentBCharacter8
      sourceRelation leftFactor rightFactor where
  unit := (-1 : ℤ)
  unit_ne_zero := by norm_num
  shift := shift
  reduction := { use := uses, source_eq := source_eq, target_eq := target_eq }

end TropicalFactorB8.Internal.Factor039

/-- Public factor-certificate API for raw edge 39. -/
def tropicalComponentBFactorCertificate8_039 :=
  TropicalFactorB8.Internal.Factor039.certificate

end

end MonochromaticQuantumGraphs.N8D3
