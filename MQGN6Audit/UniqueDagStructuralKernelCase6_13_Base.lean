import MQGN6Audit.UniqueDagMixedTerminalKernel6

/-!
# Final-node shards for frozen raw-DAG case 13
-/

namespace MQGN6Audit

def case13TerminalShard0Possible6 : Finset Nat := {
  0, 3, 6, 10, 14, 18, 33, 43, 54, 63, 71, 77, 83, 87, 94, 103, 108,
  115, 121, 144, 153, 169, 181, 199, 208, 221, 225, 237, 242, 245, 250,
  262, 263, 264, 266, 271, 272, 273
}

def case13TerminalShard1Possible6 : Finset Nat := {
  275, 276, 278, 279, 280, 281, 285, 286, 287, 289, 290, 292, 293, 294,
  295, 299, 307, 308, 310, 311, 312, 313, 318, 321, 322, 323, 325, 327,
  328, 329, 336, 337, 338, 340, 342, 343, 344, 346
}

def case13TerminalShard2Possible6 : Finset Nat := {
  347, 348, 349, 355, 356, 357, 359, 360, 362, 363, 364, 365, 373, 374,
  375, 377, 378, 380, 381, 382, 383, 388, 389, 390, 392, 394, 395, 396,
  401, 402, 403, 405, 406, 408, 409, 410, 411, 415
}

def case13TerminalShard3Possible6 : Finset Nat := {
  416, 417, 419, 421, 422, 423, 427, 428, 429, 431, 432, 434, 435, 436,
  437, 447, 448, 455, 456, 458, 459, 460, 461, 465, 470, 471, 473, 474,
  475, 479, 480, 482, 483, 484, 485
}

/-- Nine-terminal bounded subdivision of original shard 0. -/
def case13TerminalShard00Possible6 : Finset Nat :=
  case13TerminalShard0Possible6.filter fun id => id < 63

/-- Nine-terminal bounded subdivision of original shard 0. -/
def case13TerminalShard01Possible6 : Finset Nat :=
  case13TerminalShard0Possible6.filter fun id => 63 ≤ id ∧ id < 121

/-- Eight-terminal bounded subdivision of original shard 0. -/
def case13TerminalShard02Possible6 : Finset Nat :=
  case13TerminalShard0Possible6.filter fun id => 121 ≤ id ∧ id < 225

/-- Six-terminal bounded subdivision of original shard 0. -/
def case13TerminalShard03Possible6 : Finset Nat :=
  case13TerminalShard0Possible6.filter fun id => 225 ≤ id ∧ id < 263

/-- Six-terminal bounded subdivision of original shard 0. -/
def case13TerminalShard04Possible6 : Finset Nat :=
  case13TerminalShard0Possible6.filter fun id => 263 ≤ id

/-- Ten-terminal bounded subdivision of original shard 1. -/
def case13TerminalShard10Possible6 : Finset Nat :=
  case13TerminalShard1Possible6.filter fun id => id < 290

/-- Eleven-terminal bounded subdivision of original shard 1. -/
def case13TerminalShard11Possible6 : Finset Nat :=
  case13TerminalShard1Possible6.filter fun id => 290 ≤ id ∧ id < 313

/-- Ten-terminal bounded subdivision of original shard 1. -/
def case13TerminalShard12Possible6 : Finset Nat :=
  case13TerminalShard1Possible6.filter fun id => 313 ≤ id ∧ id < 337

/-- Seven-terminal bounded subdivision of original shard 1. -/
def case13TerminalShard13Possible6 : Finset Nat :=
  case13TerminalShard1Possible6.filter fun id => 337 ≤ id

/-- Nine-terminal bounded subdivision of original shard 2. -/
def case13TerminalShard20Possible6 : Finset Nat :=
  case13TerminalShard2Possible6.filter fun id => id < 363

/-- Eleven-terminal bounded subdivision of original shard 2. -/
def case13TerminalShard21Possible6 : Finset Nat :=
  case13TerminalShard2Possible6.filter fun id => 363 ≤ id ∧ id < 383

/-- Nine-terminal bounded subdivision of original shard 2. -/
def case13TerminalShard22Possible6 : Finset Nat :=
  case13TerminalShard2Possible6.filter fun id => 383 ≤ id ∧ id < 402

/-- Nine-terminal bounded subdivision of original shard 2. -/
def case13TerminalShard23Possible6 : Finset Nat :=
  case13TerminalShard2Possible6.filter fun id => 402 ≤ id

/-- Eight-terminal bounded subdivision of original shard 3. -/
def case13TerminalShard30Possible6 : Finset Nat :=
  case13TerminalShard3Possible6.filter fun id => id < 429

/-- Eight-terminal bounded subdivision of original shard 3. -/
def case13TerminalShard31Possible6 : Finset Nat :=
  case13TerminalShard3Possible6.filter fun id => 429 ≤ id ∧ id < 448

/-- Seven-terminal bounded subdivision of original shard 3. -/
def case13TerminalShard32Possible6 : Finset Nat :=
  case13TerminalShard3Possible6.filter fun id => 448 ≤ id ∧ id < 465

/-- Six-terminal bounded subdivision of original shard 3. -/
def case13TerminalShard33Possible6 : Finset Nat :=
  case13TerminalShard3Possible6.filter fun id => 465 ≤ id ∧ id < 479

/-- Six-terminal bounded subdivision of original shard 3. -/
def case13TerminalShard34Possible6 : Finset Nat :=
  case13TerminalShard3Possible6.filter fun id => 479 ≤ id

def case13TerminalNodesPossible6 : Finset Nat :=
  case13TerminalShard0Possible6 ∪ case13TerminalShard1Possible6 ∪
  case13TerminalShard2Possible6 ∪ case13TerminalShard3Possible6

set_option maxRecDepth 1000000 in
theorem case13Forward6_eq_terminalNodesPossible6 :
    rawDagForward6Possible6 (uniqueDagCase6 13) =
      case13TerminalNodesPossible6 := by
  decide +kernel

theorem case13TerminalShard0_partitionPossible6 :
    case13TerminalShard0Possible6 =
      case13TerminalShard00Possible6 ∪ case13TerminalShard01Possible6 ∪
      case13TerminalShard02Possible6 ∪ case13TerminalShard03Possible6 ∪
      case13TerminalShard04Possible6 := by
  decide +kernel

theorem case13TerminalShard1_partitionPossible6 :
    case13TerminalShard1Possible6 =
      case13TerminalShard10Possible6 ∪ case13TerminalShard11Possible6 ∪
      case13TerminalShard12Possible6 ∪ case13TerminalShard13Possible6 := by
  decide +kernel

theorem case13TerminalShard2_partitionPossible6 :
    case13TerminalShard2Possible6 =
      case13TerminalShard20Possible6 ∪ case13TerminalShard21Possible6 ∪
      case13TerminalShard22Possible6 ∪ case13TerminalShard23Possible6 := by
  decide +kernel

theorem case13TerminalShard3_partitionPossible6 :
    case13TerminalShard3Possible6 =
      case13TerminalShard30Possible6 ∪ case13TerminalShard31Possible6 ∪
      case13TerminalShard32Possible6 ∪ case13TerminalShard33Possible6 ∪
      case13TerminalShard34Possible6 := by
  decide +kernel

end MQGN6Audit
