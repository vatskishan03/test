import MonochromaticQuantumGraphs.N8D3.TropicalFactorB8.Quotient.Q077.Uses

/-!
# Quotient 77 sparse source equality
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open MonochromaticQuantumGraphs
open scoped BigOperators

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace TropicalFactorB8.Internal.Quotient077

/-- Sparse source equality for the quotient character reduction. -/
theorem source_eq :
    (∑ k : Fin 12,
      Finsupp.single (uses k).sourceExponent (uses k).coefficient) =
      intermediate := by
  simp [uses, monomial00,
    monomial01,
    monomial02,
    monomial03,
    monomial04,
    monomial05,
    monomial06,
    monomial07,
    monomial08,
    monomial09,
    monomial10,
    monomial11, intermediate,
    Fin.sum_univ_succ] <;> abel

end TropicalFactorB8.Internal.Quotient077

end

end MonochromaticQuantumGraphs.N8D3
