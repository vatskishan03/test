import MQGN6Audit.UniqueDagStructuralKernelBase6

/-!
# Per-terminal structural soundness for unique leaves
-/

namespace MQGN6Audit


def codesFilteredAtStructural6 (C : UniqueDagCase6) (v : Fin 6)
    (p : Nat → Prop) [DecidablePred p] : Fin 6 → Finset Nat :=
  fun w => if w = v then (C.planCodes w).toFinset.filter p
    else (C.planCodes w).toFinset

def terminalForcesCodeStructural6 (C : UniqueDagCase6) (id : Nat)
    (v : Fin 6) (p : Nat → Prop) [DecidablePred p] : Prop :=
  id ∉ rawDagReachStructural6 C
    (codesFilteredAtStructural6 C v fun code => ¬ p code)

instance (C : UniqueDagCase6) (id : Nat) (v : Fin 6)
    (p : Nat → Prop) [DecidablePred p] :
    Decidable (terminalForcesCodeStructural6 C id v p) := by
  unfold terminalForcesCodeStructural6
  infer_instance

lemma code_property_of_terminalForcesStructural6
    (C : UniqueDagCase6) (codes : Fin 6 → Nat) (id : Nat)
    (v : Fin 6) (p : Nat → Prop) [DecidablePred p]
    (hcodes : ∀ w, codes w ∈ C.planCodes w)
    (heval : rawDagEvalIdFast6 C codes = id)
    (hforce : terminalForcesCodeStructural6 C id v p) :
    p (codes v) := by
  by_contra hp
  apply hforce
  rw [← heval]
  apply rawDagEvalId_mem_reachStructural6
  intro w
  simp only [codesFilteredAtStructural6]
  split_ifs with hw
  · subst w
    simp only [Finset.mem_filter, List.mem_toFinset]
    exact ⟨hcodes v, hp⟩
  · simpa using hcodes w

def uniqueTerminalStructuralValid6 (C : UniqueDagCase6)
    (target : Fin 4 → Fin 15) (id : Nat) (z : Fin 4096) (m : Fin 15) :
    Prop :=
  let q := decodeDagColoringFast6 z
  uniqueDagNodeAtFast6 C id = .unique z m ∧
  ¬ allEqualFinite6 q ∧
  (∀ v : Fin 6,
    terminalForcesCodeStructural6 C id v fun code =>
      codeAllowsMatchingAtFast6 code v q m) ∧
  (∀ k : Fin 3,
    let e := matchingEdges6 m k
    (q e.1 = q e.2 ∧ matchingMate6 (target (q e.1)) e.1 = e.2) ∨
      ((terminalForcesCodeStructural6 C id e.1 fun code =>
          decodeLocalPlanFast6 code (q e.2) = e.2) ∧
       (terminalForcesCodeStructural6 C id e.2 fun code =>
          decodeLocalPlanFast6 code (q e.1) = e.1))) ∧
  ∀ n : Fin 15, n ≠ m →
    id ∉ matchingReachStructural6 C z n

instance (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (id : Nat) (z : Fin 4096) (m : Fin 15) :
    Decidable (uniqueTerminalStructuralValid6 C target id z m) := by
  unfold uniqueTerminalStructuralValid6 allEqualFinite6
  infer_instance

lemma uniqueTerminalStructuralValid6_sound
    (C : UniqueDagCase6) (target : Fin 4 → Fin 15)
    (codes : Fin 6 → Nat) (id : Nat) (z : Fin 4096) (m : Fin 15)
    (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (heval : rawDagEvalIdFast6 C codes = id)
    (hvalid : uniqueTerminalStructuralValid6 C target id z m) :
    uniqueDagNodeAtFast6 C id = .unique z m ∧
    ¬ allEqualFinite6 (decodeDagColoringFast6 z) ∧
    MatchingForced6 (rawPlanFast6 codes) target
      (decodeDagColoringFast6 z) m ∧
    MatchingAllowed6 (rawPlanFast6 codes)
      (decodeDagColoringFast6 z) m ∧
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 z) n →
        n = m := by
  let q := decodeDagColoringFast6 z
  rcases hvalid with ⟨hnode, hnonmono, hallowed, hforced, hunique⟩
  have hallowed' :
      MatchingAllowed6 (rawPlanFast6 codes) q m := by
    rw [matchingAllowed6_iff_codeAllowsMatchingAtFast6]
    intro v
    exact code_property_of_terminalForcesStructural6 C codes id v
      (fun code => codeAllowsMatchingAtFast6 code v q m)
      hcodes heval (hallowed v)
  have hforced' :
      MatchingForced6 (rawPlanFast6 codes) target q m := by
    intro k
    rw [planForcedEntry6_iff_compact]
    let e := matchingEdges6 m k
    rcases hforced k with htarget | ⟨hu, hv⟩
    · exact Or.inl htarget
    · apply Or.inr
      constructor
      · exact code_property_of_terminalForcesStructural6 C codes id e.1
          (fun code => decodeLocalPlanFast6 code (q e.2) = e.2)
          hcodes heval hu
      · exact code_property_of_terminalForcesStructural6 C codes id e.2
          (fun code => decodeLocalPlanFast6 code (q e.1) = e.1)
          hcodes heval hv
  have hunique' :
      ∀ n : Fin 15,
        MatchingAllowed6 (rawPlanFast6 codes) q n → n = m := by
    intro n hn
    by_contra hne
    apply hunique n hne
    rw [← heval]
    exact rawDagEvalId_mem_reachStructural6 C
      (matchingAllowedCodesStructural6 C q n) codes
      (code_mem_matchingAllowedCodesStructural6 C codes q n hcodes hn)
  exact ⟨hnode, hnonmono, hforced', hallowed', hunique'⟩

end MQGN6Audit
