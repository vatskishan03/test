import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps26

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds089 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p089).Holds x := by
  apply holds_of_combination x hx p086 p088 p089 (1) (-1)
    (fun i => if i.val = 0 then (-1) else if i.val = 121 then (1) else 0) (fun i => if i.val = 84 then (1) else 0) _ (holds086 x hx h) (holds088 x hx h)
  decide

theorem holds092 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p092).Holds x := by
  apply holds_of_combination x hx p090 p091 p092 (1) (-1)
    (fun i => if i.val = 90 then (1) else 0) (fun i => if i.val = 87 then (1) else 0) _ h.h090 h.h091
  decide

#print axioms holds092

end MonochromaticQuantumGraphs.N8D3.Candidate129
