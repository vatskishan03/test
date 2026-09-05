import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps13

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds052 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p052).Holds x := by
  apply holds_of_combination x hx p050 p051 p052 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ (holds050 x hx h) (holds051 x hx h)
  decide

theorem holds054 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p054).Holds x := by
  apply holds_of_combination x hx p053 p045 p054 (1) (-1)
    (fun i => if i.val = 89 then (1) else 0) (fun i => if i.val = 87 then (1) else 0) _ h.h053 h.h045
  decide

#print axioms holds054

end MonochromaticQuantumGraphs.N8D3.Candidate129
