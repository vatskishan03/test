import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S103.SourceEq
import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S103.TargetEq

/-!
# Component-A source reduction 103: algebraic certificate
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source103

/-- Lightweight exact
certificate against the explicit source polynomial. -/
def certificate :
    NormalizedCharacterReductionCertificate (κ := Fin 6)
      tropicalComponentACharacter8
      sourcePolynomial reduced where
  unit := (-1 : ℤ)
  unit_ne_zero := by norm_num
  reduction := {
    use := use,
    source_eq := source_eq,
    target_eq := target_eq
  }

end TropicalFactorA8.Internal.Source103

/-- Public source-certificate API for row 103. -/
def tropicalComponentASourceReductionCertificate8_103 :=
  TropicalFactorA8.Internal.Source103.certificate

end

end MonochromaticQuantumGraphs.N8D3
