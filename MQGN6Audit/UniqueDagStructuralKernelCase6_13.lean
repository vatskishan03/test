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

theorem case13TerminalShard0ValidPossible6 :
    ∀ id ∈ case13TerminalShard0Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  rw [case13TerminalShard0_partitionPossible6] at hid
  simp only [Finset.mem_union] at hid
  rcases hid with h00 | h01 | h02 | h03 | h04
  · exact case13TerminalShard00ValidPossible6 id h00
  · exact case13TerminalShard01ValidPossible6 id h01
  · exact case13TerminalShard02ValidPossible6 id h02
  · exact case13TerminalShard03ValidPossible6 id h03
  · exact case13TerminalShard04ValidPossible6 id h04

theorem case13TerminalShard1ValidPossible6 :
    ∀ id ∈ case13TerminalShard1Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  rw [case13TerminalShard1_partitionPossible6] at hid
  simp only [Finset.mem_union] at hid
  rcases hid with h10 | h11 | h12 | h13
  · exact case13TerminalShard10ValidPossible6 id h10
  · exact case13TerminalShard11ValidPossible6 id h11
  · exact case13TerminalShard12ValidPossible6 id h12
  · exact case13TerminalShard13ValidPossible6 id h13

theorem case13TerminalShard2ValidPossible6 :
    ∀ id ∈ case13TerminalShard2Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  rw [case13TerminalShard2_partitionPossible6] at hid
  simp only [Finset.mem_union] at hid
  rcases hid with h20 | h21 | h22 | h23
  · exact case13TerminalShard20ValidPossible6 id h20
  · exact case13TerminalShard21ValidPossible6 id h21
  · exact case13TerminalShard22ValidPossible6 id h22
  · exact case13TerminalShard23ValidPossible6 id h23

theorem case13TerminalShard3ValidPossible6 :
    ∀ id ∈ case13TerminalShard3Possible6,
      rawDagNodeValidPossible6
        (uniqueDagCase6 13) (feasibleTargetRep6 13) id := by
  intro id hid
  rw [case13TerminalShard3_partitionPossible6] at hid
  simp only [Finset.mem_union] at hid
  rcases hid with h30 | h31 | h32 | h33 | h34
  · exact case13TerminalShard30ValidPossible6 id h30
  · exact case13TerminalShard31ValidPossible6 id h31
  · exact case13TerminalShard32ValidPossible6 id h32
  · exact case13TerminalShard33ValidPossible6 id h33
  · exact case13TerminalShard34ValidPossible6 id h34

theorem rawDagCase13StructuralValidPossible6 :
    RawDagCaseStructuralValidPossible6 13 := by
  refine ⟨rfl, ?_⟩
  intro id hid
  rw [case13Forward6_eq_terminalNodesPossible6] at hid
  change id ∈
    case13TerminalShard0Possible6 ∪ case13TerminalShard1Possible6 ∪
      case13TerminalShard2Possible6 ∪ case13TerminalShard3Possible6 at hid
  simp only [Finset.mem_union] at hid
  rcases hid with h0 | h1 | h2 | h3
  · exact case13TerminalShard0ValidPossible6 id h0
  · exact case13TerminalShard1ValidPossible6 id h1
  · exact case13TerminalShard2ValidPossible6 id h2
  · exact case13TerminalShard3ValidPossible6 id h3

theorem rawDagCaseValidFast6_case13_structural :
    RawDagCaseValidFast6 13 :=
  rawDagCaseValid_of_structuralPossible6 13
    rawDagCase13StructuralValidPossible6

end MQGN6Audit
