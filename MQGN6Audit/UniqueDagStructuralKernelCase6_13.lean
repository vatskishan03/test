import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard00
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard01
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard02
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard03
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard04
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard10
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard11
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard12
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard13
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard20
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard21
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard22
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard23
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard30
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard31
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard32
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard33
import MQGN6Audit.UniqueDagStructuralKernelCase6_13_Shard34

/-!
# Exact structural replay of frozen raw-DAG case 13
-/

namespace MQGN6Audit

set_option maxRecDepth 1000000

theorem case13TerminalShard0ValidPossible6 :
    ∀ id ∈ case13TerminalShard0Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  rw [case13TerminalShard0_partitionPossible6] at hid
  simp only [Finset.mem_union] at hid
  exact hid.elim
    (fun h0123 => h0123.elim
      (fun h012 => h012.elim
        (fun h01 => h01.elim
          (case13TerminalShard00ValidPossible6 id)
          (case13TerminalShard01ValidPossible6 id))
        (case13TerminalShard02ValidPossible6 id))
      (case13TerminalShard03ValidPossible6 id))
    (case13TerminalShard04ValidPossible6 id)

theorem case13TerminalShard1ValidPossible6 :
    ∀ id ∈ case13TerminalShard1Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  rw [case13TerminalShard1_partitionPossible6] at hid
  simp only [Finset.mem_union] at hid
  exact hid.elim
    (fun h101112 => h101112.elim
      (fun h1011 => h1011.elim
        (case13TerminalShard10ValidPossible6 id)
        (case13TerminalShard11ValidPossible6 id))
      (case13TerminalShard12ValidPossible6 id))
    (case13TerminalShard13ValidPossible6 id)

theorem case13TerminalShard2ValidPossible6 :
    ∀ id ∈ case13TerminalShard2Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  rw [case13TerminalShard2_partitionPossible6] at hid
  simp only [Finset.mem_union] at hid
  exact hid.elim
    (fun h202122 => h202122.elim
      (fun h2021 => h2021.elim
        (case13TerminalShard20ValidPossible6 id)
        (case13TerminalShard21ValidPossible6 id))
      (case13TerminalShard22ValidPossible6 id))
    (case13TerminalShard23ValidPossible6 id)

theorem case13TerminalShard3ValidPossible6 :
    ∀ id ∈ case13TerminalShard3Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  rw [case13TerminalShard3_partitionPossible6] at hid
  simp only [Finset.mem_union] at hid
  exact hid.elim
    (fun h3033 => h3033.elim
      (fun h3032 => h3032.elim
        (fun h3031 => h3031.elim
          (case13TerminalShard30ValidPossible6 id)
          (case13TerminalShard31ValidPossible6 id))
        (case13TerminalShard32ValidPossible6 id))
      (case13TerminalShard33ValidPossible6 id))
    (case13TerminalShard34ValidPossible6 id)

theorem rawDagCase13StructuralValidPossible6 :
    RawDagCaseStructuralValidPossible6 13 := by
  refine ⟨rfl, ?_⟩
  intro id hid
  rw [case13Forward6_eq_terminalNodesPossible6] at hid
  change id ∈
    case13TerminalShard0Possible6 ∪ case13TerminalShard1Possible6 ∪
      case13TerminalShard2Possible6 ∪ case13TerminalShard3Possible6 at hid
  simp only [Finset.mem_union] at hid
  exact hid.elim
    (fun h012 => h012.elim
      (fun h01 => h01.elim
        (case13TerminalShard0ValidPossible6 id)
        (case13TerminalShard1ValidPossible6 id))
      (case13TerminalShard2ValidPossible6 id))
    (case13TerminalShard3ValidPossible6 id)

theorem rawDagCaseValidFast6_case13_structural :
    RawDagCaseValidFast6 13 :=
  rawDagCaseValid_of_structuralPossible6 13
    rawDagCase13StructuralValidPossible6

end MQGN6Audit
