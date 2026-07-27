import MQGN6Audit.FiniteDefinitions6
import MQGN6Audit.UniqueDagData6

/-!
# Fast kernel replay of the compressed `K₆` classification

The earlier checker quantified over proof-bearing local-plan subtypes and was
correct but too expensive for the hosted CI budget. This version evaluates the
same 900-node certificate DAG over the six compact base-six plan codes. The
only bridge back to the mathematical witness plans is a separately checked
local encoding theorem.
-/

namespace MQGN6Audit

open Function

/-- Base-six encoding used by the independent generator. -/
def encodeLocalPlanFast6 (p : Fin 4 → Fin 6) : Nat :=
  p 0 + 6 * p 1 + 36 * p 2 + 216 * p 3

/-- Decode a base-six local witness-plan code. -/
def decodeLocalPlanFast6 (z : Nat) : Fin 4 → Fin 6 := fun c =>
  ⟨(z / 6 ^ c.val) % 6, Nat.mod_lt _ (by decide)⟩

lemma decode_encodeLocalPlanFast6 (p : Fin 4 → Fin 6) :
    decodeLocalPlanFast6 (encodeLocalPlanFast6 p) = p := by
  funext c
  apply Fin.ext
  fin_cases c <;>
    simp [decodeLocalPlanFast6, encodeLocalPlanFast6] <;> omega

/-- Base-four coloring decoding used by the independent generator. -/
def decodeDagColoringFast6 (z : Fin 4096) : Fin 6 → Fin 4 := fun v =>
  ⟨(z.val / 4 ^ v.val) % 4, Nat.mod_lt _ (by decide)⟩

/-- Safe node access. -/
def uniqueDagNodeAtFast6 (C : UniqueDagCase6) (id : Nat) : UniqueDagNode6 :=
  (C.nodes[id]?).getD (.branch [])

/-- Decode six plan codes into the combinatorial witness map. -/
def rawPlanFast6 (codes : Fin 6 → Nat) : Fin 6 → Fin 4 → Fin 6 :=
  fun v => decodeLocalPlanFast6 (codes v)

/-- One raw DAG step. -/
def rawDagStepFast6 (C : UniqueDagCase6) (codes : Fin 6 → Nat)
    (v : Fin 6) (id : Nat) : Nat :=
  match uniqueDagNodeAtFast6 C id with
  | .branch children => children.getD ((C.planCodes v).idxOf (codes v)) id
  | _ => id

/-- Follow all six levels of the certificate DAG. -/
def rawDagEvalIdFast6 (C : UniqueDagCase6) (codes : Fin 6 → Nat) : Nat :=
  let n0 := rawDagStepFast6 C codes 0 C.root
  let n1 := rawDagStepFast6 C codes 1 n0
  let n2 := rawDagStepFast6 C codes 2 n1
  let n3 := rawDagStepFast6 C codes 3 n2
  let n4 := rawDagStepFast6 C codes 4 n3
  rawDagStepFast6 C codes 5 n4

/-- Semantic validity of the reached leaf for six raw plan codes. -/
def RawDagLeafValidFast6 (ci : Fin 14) (codes : Fin 6 → Nat) : Prop :=
  let C := uniqueDagCase6 ci
  let plan := rawPlanFast6 codes
  C.target = feasibleTargetRep6 ci ∧
  match uniqueDagNodeAtFast6 C (rawDagEvalIdFast6 C codes) with
  | .unique z m =>
      let q := decodeDagColoringFast6 z
      ¬ allEqual q ∧
      MatchingForced6 plan (feasibleTargetRep6 ci) q m ∧
      MatchingAllowed6 plan q m ∧
      ∀ n : Fin 15, MatchingAllowed6 plan q n → n = m
  | .survivor sid =>
      survivorTarget6 sid = feasibleTargetRep6 ci ∧
      PlanHasSurvivorTemplate6 plan sid
  | .branch _ => False

/-- Bounded-list formulation of all code combinations in one target case.
This compiles to six nested list loops, rather than enumeration of proof-bearing
subtypes. -/
def RawDagCaseValidFast6 (ci : Fin 14) : Prop :=
  let C := uniqueDagCase6 ci
  ∀ c0 ∈ C.planCodes 0,
  ∀ c1 ∈ C.planCodes 1,
  ∀ c2 ∈ C.planCodes 2,
  ∀ c3 ∈ C.planCodes 3,
  ∀ c4 ∈ C.planCodes 4,
  ∀ c5 ∈ C.planCodes 5,
    RawDagLeafValidFast6 ci ![c0, c1, c2, c3, c4, c5]

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 1000000000 in
theorem rawDagCasesValidFast6 : ∀ ci : Fin 14, RawDagCaseValidFast6 ci := by
  native_decide

/-- Every mathematically compatible local plan has exactly one of the plan
codes stored in the corresponding DAG level. -/
set_option maxRecDepth 100000 in
theorem compatiblePlanCode_memFast6 :
    ∀ ci : Fin 14, ∀ v : Fin 6, ∀ p : Fin 4 → Fin 6,
      LocalPlanCompatible6 (feasibleTargetRep6 ci) v p →
        encodeLocalPlanFast6 p ∈ (uniqueDagCase6 ci).planCodes v := by
  native_decide

/-- Codes extracted from an actual feasible witness-plan choice. -/
def codesOfChoiceFast6 {ci : Fin 14} (choice : FeasiblePlanChoice6 ci) :
    Fin 6 → Nat := fun v => encodeLocalPlanFast6 (choice v).1

lemma rawPlan_codesOfChoiceFast6 {ci : Fin 14}
    (choice : FeasiblePlanChoice6 ci) :
    rawPlanFast6 (codesOfChoiceFast6 choice) = planOfChoice6 choice := by
  funext v c
  exact congrFun (decode_encodeLocalPlanFast6 (choice v).1) c

lemma rawDagLeafValid_choiceFast6 {ci : Fin 14}
    (choice : FeasiblePlanChoice6 ci) :
    RawDagLeafValidFast6 ci (codesOfChoiceFast6 choice) := by
  let c0 := codesOfChoiceFast6 choice 0
  let c1 := codesOfChoiceFast6 choice 1
  let c2 := codesOfChoiceFast6 choice 2
  let c3 := codesOfChoiceFast6 choice 3
  let c4 := codesOfChoiceFast6 choice 4
  let c5 := codesOfChoiceFast6 choice 5
  have h0 : c0 ∈ (uniqueDagCase6 ci).planCodes 0 :=
    compatiblePlanCode_memFast6 ci 0 (choice 0).1 (choice 0).2
  have h1 : c1 ∈ (uniqueDagCase6 ci).planCodes 1 :=
    compatiblePlanCode_memFast6 ci 1 (choice 1).1 (choice 1).2
  have h2 : c2 ∈ (uniqueDagCase6 ci).planCodes 2 :=
    compatiblePlanCode_memFast6 ci 2 (choice 2).1 (choice 2).2
  have h3 : c3 ∈ (uniqueDagCase6 ci).planCodes 3 :=
    compatiblePlanCode_memFast6 ci 3 (choice 3).1 (choice 3).2
  have h4 : c4 ∈ (uniqueDagCase6 ci).planCodes 4 :=
    compatiblePlanCode_memFast6 ci 4 (choice 4).1 (choice 4).2
  have h5 : c5 ∈ (uniqueDagCase6 ci).planCodes 5 :=
    compatiblePlanCode_memFast6 ci 5 (choice 5).1 (choice 5).2
  have hraw := rawDagCasesValidFast6 ci c0 h0 c1 h1 c2 h2 c3 h3 c4 h4 c5 h5
  have hcodes : (![c0, c1, c2, c3, c4, c5] : Fin 6 → Nat) =
      codesOfChoiceFast6 choice := by
    funext v
    fin_cases v <;> rfl
  simpa [hcodes] using hraw

/-- Fast replay of the complete `830909 = 830880 + 29` classification. -/
theorem feasibleTemplateClassification6_fromFastDag :
    ∀ ci : Fin 14, ∀ choice : FeasiblePlanChoice6 ci,
      HasUniqueForcedMatching6 (feasibleTargetRep6 ci) (planOfChoice6 choice) ∨
      ∃ sid : Fin 29,
        survivorTarget6 sid = feasibleTargetRep6 ci ∧
        PlanHasSurvivorTemplate6 (planOfChoice6 choice) sid := by
  intro ci choice
  have h := rawDagLeafValid_choiceFast6 choice
  unfold RawDagLeafValidFast6 at h
  rw [rawPlan_codesOfChoiceFast6 choice] at h
  generalize hn : uniqueDagNodeAtFast6 (uniqueDagCase6 ci)
      (rawDagEvalIdFast6 (uniqueDagCase6 ci) (codesOfChoiceFast6 choice)) = node at h
  have hleaf := h.2
  cases node with
  | unique z m =>
      left
      exact ⟨decodeDagColoringFast6 z, m, hleaf.1, hleaf.2.1,
        hleaf.2.2.1, hleaf.2.2.2⟩
  | survivor sid => exact Or.inr ⟨sid, hleaf.1, hleaf.2⟩
  | branch children => exact False.elim hleaf

end MQGN6Audit
