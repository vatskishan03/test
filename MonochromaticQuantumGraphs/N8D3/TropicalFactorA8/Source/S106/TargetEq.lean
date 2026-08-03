import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Source.S106.Uses

/-!
# Component-A source reduction 106: normalized target equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Source106

theorem target_eq :
    (∑ k : Fin 6,
      Finsupp.single (use k).targetExponent
        (signedCoefficient (use k).reduction.signExponent
          (use k).coefficient)) =
      (-1 : ℤ) • reduced := by
  simp [use, use00, use01, use02, use03, use04, use05, TropicalFactorA8.Internal.useOfReduction,
    monomial00, monomial01, monomial02, monomial03, monomial04, monomial05, reduced,
    signedCoefficient, Fin.sum_univ_succ] <;> abel

end TropicalFactorA8.Internal.Source106

end

end MonochromaticQuantumGraphs.N8D3
