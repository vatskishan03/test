import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S036.Uses

/-!
# Component-A source reduction 36: normalized target equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source036

theorem target_eq :
    (∑ k : Fin 6,
      Finsupp.single (use k).targetExponent
        (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      (-1 : ℤ) • tropicalComponentAQuotientReducedSource8 36 := by
  simp [use, monomial00, monomial01, monomial02, monomial03, monomial04, monomial05, tropicalComponentAQuotientReducedSource8,
    signedCoefficient, Fin.sum_univ_succ] <;> abel

end TropicalFactorA8.Internal.Source036

end

end MonochromaticQuantumGraphs.N8D3
