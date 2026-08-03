import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E014.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E014.TargetEq

/-!
# Component-A factor edge 14: certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- Exact Laurent factor certificate for raw edge 14. -/
def tropicalComponentAFactorCertificate8_014 :
    LaurentFactorCertificate (κ := Fin 4) tropicalComponentACharacter8
      (tropicalComponentAQuotientRelation8 54)
      (tropicalComponentARawFactor8 1)
      (tropicalComponentARawFactor8 48) where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  shift := TropicalFactorA8.Internal.Factor014.shift
  reduction := {
    use := TropicalFactorA8.Internal.Factor014.use
    source_eq := TropicalFactorA8.Internal.Factor014.source_eq
    target_eq := TropicalFactorA8.Internal.Factor014.target_eq
  }

end

end MonochromaticQuantumGraphs.N8D3
