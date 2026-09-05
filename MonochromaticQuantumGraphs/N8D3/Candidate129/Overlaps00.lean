import MonochromaticQuantumGraphs.N8D3.Candidate129.Data

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem holds002 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p002).Holds x := by
  apply holds_of_combination x hx p000 p001 p002 (1) (-1)
    (fun i => if i.val = 51 then (1) else if i.val = 138 then (-1) else 0) (fun i => if i.val = 48 then (1) else if i.val = 138 then (-1) else 0) _ h.h000 h.h001
  decide

theorem holds005 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    (toPolynomial p005).Holds x := by
  apply holds_of_combination x hx p003 p004 p005 (1) (-1)
    (fun i => if i.val = 51 then (1) else if i.val = 139 then (-1) else 0) (fun i => if i.val = 48 then (1) else if i.val = 139 then (-1) else 0) _ h.h003 h.h004
  decide

#print axioms holds005

end MonochromaticQuantumGraphs.N8D3.Candidate129
