import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps01

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds010 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p010).Holds x := by
  apply holds_of_combination x hx p009 p002 p010 (1) (-1)
    (fun i => if i.val = 87 then (1) else if i.val = 104 then (-1) else 0) (fun i => if i.val = 84 then (1) else if i.val = 104 then (-1) else 0) _ (holds009 x hx h) (holds002 x hx h)
  decide

theorem holds011 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p011).Holds x := by
  apply holds_of_combination x hx p010 p006 p011 (1) (-1)
    (fun i => if i.val = 64 then (1) else if i.val = 90 then (1) else 0) (fun i => if i.val = 63 then (1) else if i.val = 87 then (1) else 0) _ (holds010 x hx h) (holds006 x hx h)
  decide

#print axioms holds011

end MonochromaticQuantumGraphs.N8D3.Candidate129
