import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S133.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Source.S133.TargetEq

/-!
# Source 133 decision-free certificate assembly
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Source133

/-- Exact normalized reduction of row-local retained source 133. -/
def certificate :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentBCharacter8 sourcePolynomial reduced where
  unit := (-1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := { use := uses, source_eq := source_eq, target_eq := target_eq }

end TropicalFactorB8.Internal.Source133

/-- Public source-certificate API for row 133. -/
def tropicalComponentBSourceReductionCertificate8_133 :=
  TropicalFactorB8.Internal.Source133.certificate

end

end MonochromaticQuantumGraphs.N8D3
