import MQGN6Audit.FiniteDefinitions6
import MQGN6Audit.UniqueDagData6

/-!
# Kernel replay base for the compressed `K₆` classification

This module states the raw certificate-DAG semantics over the frozen compact
plan-code and node data.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function

/-- Decode a base-six local witness-plan code. -/
def decodeLocalPlanFast6 (z : Nat) : Fin 4 → Fin 6 := fun c =>
  ⟨(z / 6 ^ c.val) % 6, Nat.mod_lt _ (by decide)⟩

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

instance matchingForced6DecidableFast (plan : Fin 6 → Fin 4 → Fin 6)
    (target : Fin 4 → Fin 15) (q : Fin 6 → Fin 4) (m : Fin 15) :
    Decidable (MatchingForced6 plan target q m) := by
  unfold MatchingForced6 PlanForcedEntry6
  infer_instance

instance matchingAllowed6DecidableFast (plan : Fin 6 → Fin 4 → Fin 6)
    (q : Fin 6 → Fin 4) (m : Fin 15) :
    Decidable (MatchingAllowed6 plan q m) := by
  unfold MatchingAllowed6 PlanAllowedEntry6
  infer_instance

instance planHasSurvivorTemplate6DecidableFast
    (plan : Fin 6 → Fin 4 → Fin 6) (sid : Fin 29) :
    Decidable (PlanHasSurvivorTemplate6 plan sid) := by
  unfold PlanHasSurvivorTemplate6 PlanAllowedEntry6 survivorAllows6
  infer_instance

instance rawDagLeafValidDecidableFast6
    (ci : Fin 14) (codes : Fin 6 → Nat) :
    Decidable (RawDagLeafValidFast6 ci codes) := by
  unfold RawDagLeafValidFast6
  generalize hnode :
    uniqueDagNodeAtFast6 (uniqueDagCase6 ci)
      (rawDagEvalIdFast6 (uniqueDagCase6 ci) codes) = node
  cases node <;> simp only [hnode] <;> infer_instance

/-- The unchanged bounded-list formulation of one target case. -/
def RawDagCaseValidFast6 (ci : Fin 14) : Prop :=
  let C := uniqueDagCase6 ci
  ∀ c0 ∈ C.planCodes 0,
  ∀ c1 ∈ C.planCodes 1,
  ∀ c2 ∈ C.planCodes 2,
  ∀ c3 ∈ C.planCodes 3,
  ∀ c4 ∈ C.planCodes 4,
  ∀ c5 ∈ C.planCodes 5,
    RawDagLeafValidFast6 ci ![c0, c1, c2, c3, c4, c5]

/-- Exact index-based restatement of the six nested list-membership loops. -/
def RawDagCaseIndexedValidFast6 (ci : Fin 14) : Prop :=
  let C := uniqueDagCase6 ci
  ∀ i0 : Fin (C.planCodes 0).length,
  ∀ i1 : Fin (C.planCodes 1).length,
  ∀ i2 : Fin (C.planCodes 2).length,
  ∀ i3 : Fin (C.planCodes 3).length,
  ∀ i4 : Fin (C.planCodes 4).length,
  ∀ i5 : Fin (C.planCodes 5).length,
    RawDagLeafValidFast6 ci ![
      (C.planCodes 0).get i0,
      (C.planCodes 1).get i1,
      (C.planCodes 2).get i2,
      (C.planCodes 3).get i3,
      (C.planCodes 4).get i4,
      (C.planCodes 5).get i5]

/-- One closed validation shard after fixing the first two stored-plan indices. -/
def RawDagTailAfterTwoFast6 (ci : Fin 14)
    (i0 : Fin ((uniqueDagCase6 ci).planCodes 0).length)
    (i1 : Fin ((uniqueDagCase6 ci).planCodes 1).length) : Prop :=
  let C := uniqueDagCase6 ci
  ∀ i2 : Fin (C.planCodes 2).length,
  ∀ i3 : Fin (C.planCodes 3).length,
  ∀ i4 : Fin (C.planCodes 4).length,
  ∀ i5 : Fin (C.planCodes 5).length,
    RawDagLeafValidFast6 ci ![
      (C.planCodes 0).get i0,
      (C.planCodes 1).get i1,
      (C.planCodes 2).get i2,
      (C.planCodes 3).get i3,
      (C.planCodes 4).get i4,
      (C.planCodes 5).get i5]

theorem rawDagCaseValidFast6_iff_indexed (ci : Fin 14) :
    RawDagCaseValidFast6 ci ↔ RawDagCaseIndexedValidFast6 ci := by
  simp only [RawDagCaseValidFast6, RawDagCaseIndexedValidFast6,
    List.forall_mem_iff_get]

end MQGN6Audit
