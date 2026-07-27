import MQGN6Audit.UniqueDagStructuralKernelBase6

/-!
# Node-local structural replay for the frozen six-vertex certificate DAG
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph

def rawDagStepCodePossible6 (C : UniqueDagCase6) (v : Fin 6)
    (code id : Nat) : Nat :=
  match uniqueDagNodeAtFast6 C id with
  | .branch children => children.getD ((C.planCodes v).idxOf code) id
  | _ => id

@[simp] lemma rawDagStep_eq_stepCodePossible6
    (C : UniqueDagCase6) (codes : Fin 6 → Nat) (v : Fin 6) (id : Nat) :
    rawDagStepFast6 C codes v id =
      rawDagStepCodePossible6 C v (codes v) id := by
  rfl

def rawDagFullCodesPossible6 (C : UniqueDagCase6) (v : Fin 6) : Finset Nat :=
  (C.planCodes v).toFinset

def rawDagReachStepPossible6 (C : UniqueDagCase6) (v : Fin 6)
    (codes ids : Finset Nat) : Finset Nat :=
  ids.biUnion fun id =>
    codes.image fun code => rawDagStepCodePossible6 C v code id

lemma mem_rawDagReachStepPossible6 (C : UniqueDagCase6) (v : Fin 6)
    (codes ids : Finset Nat) (id code : Nat)
    (hid : id ∈ ids) (hcode : code ∈ codes) :
    rawDagStepCodePossible6 C v code id ∈
      rawDagReachStepPossible6 C v codes ids := by
  apply Finset.mem_biUnion.mpr
  exact ⟨id, hid, Finset.mem_image.mpr ⟨code, hcode, rfl⟩⟩

def rawDagForward0Possible6 (C : UniqueDagCase6) : Finset Nat := {C.root}
def rawDagForward1Possible6 (C : UniqueDagCase6) : Finset Nat :=
  rawDagReachStepPossible6 C 0 (rawDagFullCodesPossible6 C 0)
    (rawDagForward0Possible6 C)
def rawDagForward2Possible6 (C : UniqueDagCase6) : Finset Nat :=
  rawDagReachStepPossible6 C 1 (rawDagFullCodesPossible6 C 1)
    (rawDagForward1Possible6 C)
def rawDagForward3Possible6 (C : UniqueDagCase6) : Finset Nat :=
  rawDagReachStepPossible6 C 2 (rawDagFullCodesPossible6 C 2)
    (rawDagForward2Possible6 C)
def rawDagForward4Possible6 (C : UniqueDagCase6) : Finset Nat :=
  rawDagReachStepPossible6 C 3 (rawDagFullCodesPossible6 C 3)
    (rawDagForward3Possible6 C)
def rawDagForward5Possible6 (C : UniqueDagCase6) : Finset Nat :=
  rawDagReachStepPossible6 C 4 (rawDagFullCodesPossible6 C 4)
    (rawDagForward4Possible6 C)
def rawDagForward6Possible6 (C : UniqueDagCase6) : Finset Nat :=
  rawDagReachStepPossible6 C 5 (rawDagFullCodesPossible6 C 5)
    (rawDagForward5Possible6 C)

def rawDagPreStepPossible6 (C : UniqueDagCase6) (v : Fin 6)
    (current next : Finset Nat) : Finset Nat :=
  current.filter fun id =>
    ∃ code ∈ rawDagFullCodesPossible6 C v,
      rawDagStepCodePossible6 C v code id ∈ next

lemma mem_rawDagPreStepPossible6 (C : UniqueDagCase6) (v : Fin 6)
    (current next : Finset Nat) (id code : Nat)
    (hid : id ∈ current)
    (hcode : code ∈ rawDagFullCodesPossible6 C v)
    (hnext : rawDagStepCodePossible6 C v code id ∈ next) :
    id ∈ rawDagPreStepPossible6 C v current next := by
  exact Finset.mem_filter.mpr ⟨hid, ⟨code, hcode, hnext⟩⟩

def rawDagBackward6Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  (rawDagForward6Possible6 C).filter fun id =>
    uniqueDagNodeAtFast6 C id = leaf
def rawDagBackward5Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  rawDagPreStepPossible6 C 5 (rawDagForward5Possible6 C)
    (rawDagBackward6Possible6 C leaf)
def rawDagBackward4Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  rawDagPreStepPossible6 C 4 (rawDagForward4Possible6 C)
    (rawDagBackward5Possible6 C leaf)
def rawDagBackward3Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  rawDagPreStepPossible6 C 3 (rawDagForward3Possible6 C)
    (rawDagBackward4Possible6 C leaf)
def rawDagBackward2Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  rawDagPreStepPossible6 C 2 (rawDagForward2Possible6 C)
    (rawDagBackward3Possible6 C leaf)
def rawDagBackward1Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  rawDagPreStepPossible6 C 1 (rawDagForward1Possible6 C)
    (rawDagBackward2Possible6 C leaf)
def rawDagBackward0Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  rawDagPreStepPossible6 C 0 (rawDagForward0Possible6 C)
    (rawDagBackward1Possible6 C leaf)

def rawDagPossibleCodes0Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  (rawDagFullCodesPossible6 C 0).filter fun code =>
    ∃ id ∈ rawDagBackward0Possible6 C leaf,
      rawDagStepCodePossible6 C 0 code id ∈ rawDagBackward1Possible6 C leaf
def rawDagPossibleCodes1Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  (rawDagFullCodesPossible6 C 1).filter fun code =>
    ∃ id ∈ rawDagBackward1Possible6 C leaf,
      rawDagStepCodePossible6 C 1 code id ∈ rawDagBackward2Possible6 C leaf
def rawDagPossibleCodes2Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  (rawDagFullCodesPossible6 C 2).filter fun code =>
    ∃ id ∈ rawDagBackward2Possible6 C leaf,
      rawDagStepCodePossible6 C 2 code id ∈ rawDagBackward3Possible6 C leaf
def rawDagPossibleCodes3Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  (rawDagFullCodesPossible6 C 3).filter fun code =>
    ∃ id ∈ rawDagBackward3Possible6 C leaf,
      rawDagStepCodePossible6 C 3 code id ∈ rawDagBackward4Possible6 C leaf
def rawDagPossibleCodes4Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  (rawDagFullCodesPossible6 C 4).filter fun code =>
    ∃ id ∈ rawDagBackward4Possible6 C leaf,
      rawDagStepCodePossible6 C 4 code id ∈ rawDagBackward5Possible6 C leaf
def rawDagPossibleCodes5Possible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Finset Nat :=
  (rawDagFullCodesPossible6 C 5).filter fun code =>
    ∃ id ∈ rawDagBackward5Possible6 C leaf,
      rawDagStepCodePossible6 C 5 code id ∈ rawDagBackward6Possible6 C leaf

def rawDagPossibleCodesPossible6 (C : UniqueDagCase6)
    (leaf : UniqueDagNode6) : Fin 6 → Finset Nat := ![
  rawDagPossibleCodes0Possible6 C leaf,
  rawDagPossibleCodes1Possible6 C leaf,
  rawDagPossibleCodes2Possible6 C leaf,
  rawDagPossibleCodes3Possible6 C leaf,
  rawDagPossibleCodes4Possible6 C leaf,
  rawDagPossibleCodes5Possible6 C leaf
]

lemma rawDagCode_mem_possiblePossible6
    (C : UniqueDagCase6) (codes : Fin 6 → Nat)
    (hcodes : ∀ v, codes v ∈ C.planCodes v)
    (leaf : UniqueDagNode6)
    (hleaf : uniqueDagNodeAtFast6 C (rawDagEvalIdFast6 C codes) = leaf) :
    ∀ v, codes v ∈ rawDagPossibleCodesPossible6 C leaf v := by
  let n0 := C.root
  let n1 := rawDagStepCodePossible6 C 0 (codes 0) n0
  let n2 := rawDagStepCodePossible6 C 1 (codes 1) n1
  let n3 := rawDagStepCodePossible6 C 2 (codes 2) n2
  let n4 := rawDagStepCodePossible6 C 3 (codes 3) n3
  let n5 := rawDagStepCodePossible6 C 4 (codes 4) n4
  let n6 := rawDagStepCodePossible6 C 5 (codes 5) n5
  have hc (v : Fin 6) : codes v ∈ rawDagFullCodesPossible6 C v := by
    simpa [rawDagFullCodesPossible6] using hcodes v
  have hf0 : n0 ∈ rawDagForward0Possible6 C := by
    simp [n0, rawDagForward0Possible6]
  have hf1 : n1 ∈ rawDagForward1Possible6 C :=
    mem_rawDagReachStepPossible6 C 0 _ _ n0 (codes 0) hf0 (hc 0)
  have hf2 : n2 ∈ rawDagForward2Possible6 C :=
    mem_rawDagReachStepPossible6 C 1 _ _ n1 (codes 1) hf1 (hc 1)
  have hf3 : n3 ∈ rawDagForward3Possible6 C :=
    mem_rawDagReachStepPossible6 C 2 _ _ n2 (codes 2) hf2 (hc 2)
  have hf4 : n4 ∈ rawDagForward4Possible6 C :=
    mem_rawDagReachStepPossible6 C 3 _ _ n3 (codes 3) hf3 (hc 3)
  have hf5 : n5 ∈ rawDagForward5Possible6 C :=
    mem_rawDagReachStepPossible6 C 4 _ _ n4 (codes 4) hf4 (hc 4)
  have hf6 : n6 ∈ rawDagForward6Possible6 C :=
    mem_rawDagReachStepPossible6 C 5 _ _ n5 (codes 5) hf5 (hc 5)
  have heval : rawDagEvalIdFast6 C codes = n6 := by
    rfl
  have hb6 : n6 ∈ rawDagBackward6Possible6 C leaf := by
    exact Finset.mem_filter.mpr ⟨hf6, by simpa [heval] using hleaf⟩
  have hb5 : n5 ∈ rawDagBackward5Possible6 C leaf :=
    mem_rawDagPreStepPossible6 C 5 _ _ n5 (codes 5) hf5 (hc 5) hb6
  have hb4 : n4 ∈ rawDagBackward4Possible6 C leaf :=
    mem_rawDagPreStepPossible6 C 4 _ _ n4 (codes 4) hf4 (hc 4) hb5
  have hb3 : n3 ∈ rawDagBackward3Possible6 C leaf :=
    mem_rawDagPreStepPossible6 C 3 _ _ n3 (codes 3) hf3 (hc 3) hb4
  have hb2 : n2 ∈ rawDagBackward2Possible6 C leaf :=
    mem_rawDagPreStepPossible6 C 2 _ _ n2 (codes 2) hf2 (hc 2) hb3
  have hb1 : n1 ∈ rawDagBackward1Possible6 C leaf :=
    mem_rawDagPreStepPossible6 C 1 _ _ n1 (codes 1) hf1 (hc 1) hb2
  have hb0 : n0 ∈ rawDagBackward0Possible6 C leaf :=
    mem_rawDagPreStepPossible6 C 0 _ _ n0 (codes 0) hf0 (hc 0) hb1
  intro v
  fin_cases v
  · exact Finset.mem_filter.mpr ⟨hc 0, ⟨n0, hb0, hb1⟩⟩
  · exact Finset.mem_filter.mpr ⟨hc 1, ⟨n1, hb1, hb2⟩⟩
  · exact Finset.mem_filter.mpr ⟨hc 2, ⟨n2, hb2, hb3⟩⟩
  · exact Finset.mem_filter.mpr ⟨hc 3, ⟨n3, hb3, hb4⟩⟩
  · exact Finset.mem_filter.mpr ⟨hc 4, ⟨n4, hb4, hb5⟩⟩
  · exact Finset.mem_filter.mpr ⟨hc 5, ⟨n5, hb5, hb6⟩⟩

end MQGN6Audit
