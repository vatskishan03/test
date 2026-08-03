import MonochromaticQuantumGraphs.N8D3.TropicalFactorA8.Factor.E048.Uses

/-!
# Component-A factor edge 48: quotient source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open MonochromaticQuantumGraphs.FactorCoverCertificate
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorA8.Internal.Factor048

theorem source_eq :
    (∑ k : Fin 4,
      Finsupp.single (use k).sourceExponent (use k).coefficient) =
      tropicalComponentAQuotientRelation8 21 := by
  simp [use, tropicalComponentAQuotientRelation8, Fin.sum_univ_succ] <;> abel

end TropicalFactorA8.Internal.Factor048

end

end MonochromaticQuantumGraphs.N8D3
