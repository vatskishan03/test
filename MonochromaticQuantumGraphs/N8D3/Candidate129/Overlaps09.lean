import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps08

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds036 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p036).Holds x := by
  apply holds_of_combination x hx p034 p035 p036 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ h.h034 h.h035
  decide

theorem holds039 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p039).Holds x := by
  apply holds_of_combination x hx p037 p038 p039 (-1) (1)
    (fun i => if i.val = 1 then (1) else 0) (fun i => if i.val = 0 then (1) else 0) _ h.h037 h.h038
  decide

#print axioms holds039

end MonochromaticQuantumGraphs.N8D3.Candidate129
