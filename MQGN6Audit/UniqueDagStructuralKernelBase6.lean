import MQGN6Audit.UniqueDagRawKernelBase6
import MQGN6Audit.UniqueDagSemanticKernel6

/-!
# Structural kernel replay for the frozen unique-obstruction DAG
-/

namespace MQGN6Audit


def rawDagStepCodeStructural6 (C : UniqueDagCase6) (v : Fin 6)
    (code id : Nat) : Nat :=
  match uniqueDagNodeAtFast6 C id with
  | .branch children => children.getD ((C.planCodes v).idxOf code) id
  | _ => id

@[simp] lemma rawDagStep_eq_stepCodeStructural6
    (C : UniqueDagCase6) (codes : Fin 6 → Nat) (v : Fin 6) (id : Nat) :
    rawDagStepFast6 C codes v id =
      rawDagStepCodeStructural6 C v (codes v) id := by
  rfl

def rawDagReachStepStructural6 (C : UniqueDagCase6) (v : Fin 6)
    (codes ids : Finset Nat) : Finset Nat :=
  ids.biUnion fun id =>
    codes.image fun code => rawDagStepCodeStructural6 C v code id

lemma mem_rawDagReachStepStructural6 (C : UniqueDagCase6) (v : Fin 6)
    (codes ids : Finset Nat) (id code : Nat)
    (hid : id ∈ ids) (hcode : code ∈ codes) :
    rawDagStepCodeStructural6 C v code id ∈
      rawDagReachStepStructural6 C v codes ids := by
  apply Finset.mem_biUnion.mpr
  exact ⟨id, hid, Finset.mem_image.mpr ⟨code, hcode, rfl⟩⟩

def rawDagReachStructural6 (C : UniqueDagCase6)
    (allowed : Fin 6 → Finset Nat) : Finset Nat :=
  let r0 : Finset Nat := {C.root}
  let r1 := rawDagReachStepStructural6 C 0 (allowed 0) r0
  let r2 := rawDagReachStepStructural6 C 1 (allowed 1) r1
  let r3 := rawDagReachStepStructural6 C 2 (allowed 2) r2
  let r4 := rawDagReachStepStructural6 C 3 (allowed 3) r3
  let r5 := rawDagReachStepStructural6 C 4 (allowed 4) r4
  rawDagReachStepStructural6 C 5 (allowed 5) r5

lemma rawDagEvalId_mem_reachStructural6
    (C : UniqueDagCase6) (allowed : Fin 6 → Finset Nat)
    (codes : Fin 6 → Nat) (hcodes : ∀ v, codes v ∈ allowed v) :
    rawDagEvalIdFast6 C codes ∈ rawDagReachStructural6 C allowed := by
  have h0' : C.root ∈ ({C.root} : Finset Nat) := by simp
  have h1 := mem_rawDagReachStepStructural6 C 0 (allowed 0) {C.root}
    C.root (codes 0) h0' (hcodes 0)
  have h2 := mem_rawDagReachStepStructural6 C 1 (allowed 1)
    (rawDagReachStepStructural6 C 0 (allowed 0) {C.root})
    (rawDagStepCodeStructural6 C 0 (codes 0) C.root) (codes 1)
    h1 (hcodes 1)
  have h3 := mem_rawDagReachStepStructural6 C 2 (allowed 2)
    (rawDagReachStepStructural6 C 1 (allowed 1)
      (rawDagReachStepStructural6 C 0 (allowed 0) {C.root}))
    (rawDagStepCodeStructural6 C 1 (codes 1)
      (rawDagStepCodeStructural6 C 0 (codes 0) C.root))
    (codes 2) h2 (hcodes 2)
  have h4 := mem_rawDagReachStepStructural6 C 3 (allowed 3)
    (rawDagReachStepStructural6 C 2 (allowed 2)
      (rawDagReachStepStructural6 C 1 (allowed 1)
        (rawDagReachStepStructural6 C 0 (allowed 0) {C.root})))
    (rawDagStepCodeStructural6 C 2 (codes 2)
      (rawDagStepCodeStructural6 C 1 (codes 1)
        (rawDagStepCodeStructural6 C 0 (codes 0) C.root)))
    (codes 3) h3 (hcodes 3)
  have h5 := mem_rawDagReachStepStructural6 C 4 (allowed 4)
    (rawDagReachStepStructural6 C 3 (allowed 3)
      (rawDagReachStepStructural6 C 2 (allowed 2)
        (rawDagReachStepStructural6 C 1 (allowed 1)
          (rawDagReachStepStructural6 C 0 (allowed 0) {C.root}))))
    (rawDagStepCodeStructural6 C 3 (codes 3)
      (rawDagStepCodeStructural6 C 2 (codes 2)
        (rawDagStepCodeStructural6 C 1 (codes 1)
          (rawDagStepCodeStructural6 C 0 (codes 0) C.root))))
    (codes 4) h4 (hcodes 4)
  have h6 := mem_rawDagReachStepStructural6 C 5 (allowed 5)
    (rawDagReachStepStructural6 C 4 (allowed 4)
      (rawDagReachStepStructural6 C 3 (allowed 3)
        (rawDagReachStepStructural6 C 2 (allowed 2)
          (rawDagReachStepStructural6 C 1 (allowed 1)
            (rawDagReachStepStructural6 C 0 (allowed 0) {C.root})))))
    (rawDagStepCodeStructural6 C 4 (codes 4)
      (rawDagStepCodeStructural6 C 3 (codes 3)
        (rawDagStepCodeStructural6 C 2 (codes 2)
          (rawDagStepCodeStructural6 C 1 (codes 1)
            (rawDagStepCodeStructural6 C 0 (codes 0) C.root)))))
    (codes 5) h5 (hcodes 5)
  simpa [rawDagEvalIdFast6, rawDagReachStructural6] using h6

def matchingAllowedCodesStructural6 (C : UniqueDagCase6)
    (q : Fin 6 → Fin 4) (m : Fin 15) (v : Fin 6) : Finset Nat :=
  (C.planCodes v).toFinset.filter fun code =>
    codeAllowsMatchingAtFast6 code v q m

lemma code_mem_matchingAllowedCodesStructural6
    (C : UniqueDagCase6) (codes : Fin 6 → Nat)
    (q : Fin 6 → Fin 4) (m : Fin 15)
    (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (hallowed : MatchingAllowed6 (rawPlanFast6 codes) q m) :
    ∀ v, codes v ∈ matchingAllowedCodesStructural6 C q m v := by
  intro v
  simp only [matchingAllowedCodesStructural6, Finset.mem_filter,
    List.mem_toFinset]
  exact ⟨hcodes v,
    (matchingAllowed6_iff_codeAllowsMatchingAtFast6 codes q m).mp
      hallowed v⟩

def matchingReachStructural6 (C : UniqueDagCase6)
    (z : Fin 4096) (m : Fin 15) : Finset Nat :=
  rawDagReachStructural6 C
    (matchingAllowedCodesStructural6 C (decodeDagColoringFast6 z) m)

lemma unique_semantic_of_restricted_avoidStructural6
    (C : UniqueDagCase6) (codes : Fin 6 → Nat)
    (z : Fin 4096) (m : Fin 15)
    (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (hleaf : uniqueDagNodeAtFast6 C (rawDagEvalIdFast6 C codes) =
      .unique z m)
    (havoid : ∀ n : Fin 15, n ≠ m →
      ∀ id ∈ matchingReachStructural6 C z n,
        uniqueDagNodeAtFast6 C id ≠ .unique z m) :
    ∀ n : Fin 15,
      MatchingAllowed6 (rawPlanFast6 codes) (decodeDagColoringFast6 z) n →
        n = m := by
  intro n hn
  by_contra hne
  have hid := rawDagEvalId_mem_reachStructural6 C
    (matchingAllowedCodesStructural6 C (decodeDagColoringFast6 z) n)
    codes (code_mem_matchingAllowedCodesStructural6 C codes
      (decodeDagColoringFast6 z) n hcodes hn)
  exact havoid n hne _ hid hleaf

end MQGN6Audit
