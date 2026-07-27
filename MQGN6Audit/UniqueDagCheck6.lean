import MQGN6Audit.FiniteDefinitions6
import MQGN6Audit.UniqueDagData6

/-!
# Kernel replay of the compressed `K₆` classification

The generated DAG contains no trusted theorem. This checker decodes each of
the 830,909 compatible witness-plan choices, follows six table edges, and then
checks the terminal unique-monomial or survivor-mask claim directly from the
finite definitions.
-/

namespace MQGN6Audit

open Function

/-- Base-six encoding used by the independent generator. -/
def encodeLocalPlan6 (p : Fin 4 → Fin 6) : Nat :=
  p 0 + 6 * p 1 + 36 * p 2 + 216 * p 3

/-- Base-four coloring decoding used by the independent generator. -/
def decodeDagColoring6 (z : Fin 4096) : Fin 6 → Fin 4 := fun v =>
  ⟨(z.val / 4 ^ v.val) % 4, Nat.mod_lt _ (by decide)⟩

/-- Safe node access. The default is deliberately an invalid branch, so any
malformed generated index makes the checked proposition false. -/
def uniqueDagNodeAt6 (C : UniqueDagCase6) (id : Nat) : UniqueDagNode6 :=
  (C.nodes[id]?).getD (.branch [])

/-- One decision step at vertex `v`. -/
def uniqueDagStep6 {ci : Fin 14} (C : UniqueDagCase6)
    (choice : FeasiblePlanChoice6 ci) (v : Fin 6) (id : Nat) : Nat :=
  match uniqueDagNodeAt6 C id with
  | .branch children =>
      children.getD ((C.planCodes v).idxOf (encodeLocalPlan6 (choice v).1)) id
  | _ => id

/-- Six local choices determine one leaf. -/
def uniqueDagEvalId6 {ci : Fin 14} (C : UniqueDagCase6)
    (choice : FeasiblePlanChoice6 ci) : Nat :=
  let n0 := uniqueDagStep6 C choice 0 C.root
  let n1 := uniqueDagStep6 C choice 1 n0
  let n2 := uniqueDagStep6 C choice 2 n1
  let n3 := uniqueDagStep6 C choice 3 n2
  let n4 := uniqueDagStep6 C choice 4 n3
  uniqueDagStep6 C choice 5 n4

/-- Direct semantic validation of the reached leaf. -/
def UniqueDagLeafValid6 (ci : Fin 14) (choice : FeasiblePlanChoice6 ci) : Prop :=
  let C := uniqueDagCase6 ci
  let plan := planOfChoice6 choice
  C.target = feasibleTargetRep6 ci ∧
  match uniqueDagNodeAt6 C (uniqueDagEvalId6 C choice) with
  | .unique z m =>
      let q := decodeDagColoring6 z
      ¬ allEqual q ∧
      MatchingForced6 plan (feasibleTargetRep6 ci) q m ∧
      MatchingAllowed6 plan q m ∧
      ∀ n : Fin 15, MatchingAllowed6 plan q n → n = m
  | .survivor sid =>
      survivorTarget6 sid = feasibleTargetRep6 ci ∧
      PlanHasSurvivorTemplate6 plan sid
  | .branch _ => False

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 1000000000 in
theorem uniqueDagLeafValid6 :
    ∀ ci : Fin 14, ∀ choice : FeasiblePlanChoice6 ci,
      UniqueDagLeafValid6 ci choice := by
  native_decide

/-- The compressed replay yields the same classification statement as the
larger direct search. -/
theorem feasibleTemplateClassification6_fromDag :
    ∀ ci : Fin 14, ∀ choice : FeasiblePlanChoice6 ci,
      HasUniqueForcedMatching6 (feasibleTargetRep6 ci) (planOfChoice6 choice) ∨
      ∃ sid : Fin 29,
        survivorTarget6 sid = feasibleTargetRep6 ci ∧
        PlanHasSurvivorTemplate6 (planOfChoice6 choice) sid := by
  intro ci choice
  have h := uniqueDagLeafValid6 ci choice
  unfold UniqueDagLeafValid6 at h
  generalize hn : uniqueDagNodeAt6 (uniqueDagCase6 ci)
      (uniqueDagEvalId6 (uniqueDagCase6 ci) choice) = node at h
  have hleaf := h.2
  cases node with
  | unique z m =>
      left
      exact ⟨decodeDagColoring6 z, m, hleaf.1, hleaf.2.1,
        hleaf.2.2.1, hleaf.2.2.2⟩
  | survivor sid => exact Or.inr ⟨sid, hleaf.1, hleaf.2⟩
  | branch children => exact False.elim hleaf

end MQGN6Audit
