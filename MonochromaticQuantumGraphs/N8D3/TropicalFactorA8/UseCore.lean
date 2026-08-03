import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Core

/-!
# Lightweight constructor for sharded Component-A reduction uses
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal

/-- Package an already-compiled monomial certificate as one reduction use.
The large source and target exponents are inferred from the certificate type,
so use leaves do not elaborate a second copy of either expression. -/
def useOfReduction
    (coefficient : ℤ)
    {sourceExponent targetExponent : LaurentExponent (Fin 144)}
    (reduction : MonomialReductionCertificate tropicalComponentACharacter8
      sourceExponent targetExponent) :
    CharacterReductionUse tropicalComponentACharacter8 where
  coefficient := coefficient
  sourceExponent := sourceExponent
  targetExponent := targetExponent
  reduction := reduction

end TropicalFactorA8.Internal

end

end MonochromaticQuantumGraphs.N8D3
