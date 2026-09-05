import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps02

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds014 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p014).Holds x := by
  apply holds_of_combination x hx p012 p013 p014 (1) (-1)
    (fun i => if i.val = 51 then (1) else if i.val = 138 then (-1) else 0) (fun i => if i.val = 48 then (1) else if i.val = 138 then (-1) else 0) _ h.h012 h.h013
  decide

theorem holds017 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p017).Holds x := by
  apply holds_of_combination x hx p015 p016 p017 (1) (-1)
    (fun i => if i.val = 51 then (1) else if i.val = 139 then (-1) else 0) (fun i => if i.val = 48 then (1) else if i.val = 139 then (-1) else 0) _ h.h015 h.h016
  decide

#print axioms holds017

end MonochromaticQuantumGraphs.N8D3.Candidate129
