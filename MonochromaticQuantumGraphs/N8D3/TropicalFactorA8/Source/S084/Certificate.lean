import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S084.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S084.TargetEq

/-!
# Component-A source reduction 84: algebraic certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source084

/-- Lightweight exact
certificate against the explicit source polynomial. -/
def certificate :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      (tropicalComponentAQuotientOriginalSource8 84)
      (tropicalComponentAQuotientReducedSource8 84) where
  unit := (-1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := use
    source_eq := source_eq
    target_eq := target_eq
  }

end TropicalFactorA8.Internal.Source084

end

end MonochromaticQuantumGraphs.N8D3
