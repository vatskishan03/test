import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S025.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S025.TargetEq

/-!
# Source 25 decision-free certificate assembly
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source025

/-- Exact normalized reduction of row-local retained source 25. -/
def certificate :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentBCharacter8 sourcePolynomial reduced where
  unit := (1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := { use := uses, source_eq := source_eq, target_eq := target_eq }

end TropicalFactorB8.Internal.Source025

/-- Public source-certificate API for row 25. -/
def tropicalComponentBSourceReductionCertificate8_025 :=
  TropicalFactorB8.Internal.Source025.certificate

end

end MonochromaticQuantumGraphs.N8D3
