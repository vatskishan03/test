import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8.Data

/-! Bounded support-filter replay shard 0 for the official terminal rows. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem tropicalTerminalSupportedMatchingSet8_row0 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 0) m = true) =
        tropicalTerminalMatchingSet8 0 := by
  decide

/-- Four-coordinate replay for official row 65, matching 0. -/
theorem tropicalTerminalMatchingExponent8_row0_matching0 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 733) (0 : Fin 105) =
      (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 733) (0 : Fin 105)
    (4 : Fin 144) (57 : Fin 144) (98 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 65, matching 1. -/
theorem tropicalTerminalMatchingExponent8_row0_matching1 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 733) (1 : Fin 105) =
      (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 733) (1 : Fin 105)
    (4 : Fin 144) (57 : Fin 144) (108 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 65, matching 6. -/
theorem tropicalTerminalMatchingExponent8_row0_matching6 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 733) (6 : Fin 105) =
      (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 733) (6 : Fin 105)
    (4 : Fin 144) (69 : Fin 144) (82 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 65, matching 21. -/
theorem tropicalTerminalMatchingExponent8_row0_matching21 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 733) (21 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 733) (21 : Fin 105)
    (12 : Fin 144) (41 : Fin 144) (82 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 65, matching 24. -/
theorem tropicalTerminalMatchingExponent8_row0_matching24 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 733) (24 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 733) (24 : Fin 105)
    (12 : Fin 144) (51 : Fin 144) (82 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 65, matching 25. -/
theorem tropicalTerminalMatchingExponent8_row0_matching25 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 733) (25 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 733) (25 : Fin 105)
    (12 : Fin 144) (51 : Fin 144) (91 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 65, matching 40. -/
theorem tropicalTerminalMatchingExponent8_row0_matching40 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 733) (40 : Fin 105) =
      (Pi.single 21 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 733) (40 : Fin 105)
    (21 : Fin 144) (51 : Fin 144) (69 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 65, matching 69. -/
theorem tropicalTerminalMatchingExponent8_row0_matching69 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 733) (69 : Fin 105) =
      (Pi.single 28 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 733) (69 : Fin 105)
    (28 : Fin 144) (51 : Fin 144) (57 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 65, matching 84. -/
theorem tropicalTerminalMatchingExponent8_row0_matching84 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 733) (84 : Fin 105) =
      (Pi.single 31 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 733) (84 : Fin 105)
    (31 : Fin 144) (41 : Fin 144) (57 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel


theorem tropicalTerminalSupportedMatchingSet8_row1 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 1) m = true) =
        tropicalTerminalMatchingSet8 1 := by
  decide

/-- Four-coordinate replay for official row 73, matching 0. -/
theorem tropicalTerminalMatchingExponent8_row1_matching0 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 756) (0 : Fin 105) =
      (Pi.single 0 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 756) (0 : Fin 105)
    (0 : Fin 144) (58 : Fin 144) (98 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 73, matching 1. -/
theorem tropicalTerminalMatchingExponent8_row1_matching1 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 756) (1 : Fin 105) =
      (Pi.single 0 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 756) (1 : Fin 105)
    (0 : Fin 144) (58 : Fin 144) (108 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 73, matching 6. -/
theorem tropicalTerminalMatchingExponent8_row1_matching6 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 756) (6 : Fin 105) =
      (Pi.single 0 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 756) (6 : Fin 105)
    (0 : Fin 144) (69 : Fin 144) (85 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 73, matching 21. -/
theorem tropicalTerminalMatchingExponent8_row1_matching21 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 756) (21 : Fin 105) =
      (Pi.single 9 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 756) (21 : Fin 105)
    (9 : Fin 144) (38 : Fin 144) (85 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 73, matching 24. -/
theorem tropicalTerminalMatchingExponent8_row1_matching24 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 756) (24 : Fin 105) =
      (Pi.single 9 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 756) (24 : Fin 105)
    (9 : Fin 144) (48 : Fin 144) (85 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 73, matching 40. -/
theorem tropicalTerminalMatchingExponent8_row1_matching40 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 756) (40 : Fin 105) =
      (Pi.single 19 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 756) (40 : Fin 105)
    (19 : Fin 144) (48 : Fin 144) (69 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 73, matching 43. -/
theorem tropicalTerminalMatchingExponent8_row1_matching43 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 756) (43 : Fin 105) =
      (Pi.single 19 (1 : ℤ) + Pi.single 56 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 108 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 756) (43 : Fin 105)
    (19 : Fin 144) (56 : Fin 144) (69 : Fin 144) (108 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 73, matching 51. -/
theorem tropicalTerminalMatchingExponent8_row1_matching51 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 756) (51 : Fin 105) =
      (Pi.single 27 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 756) (51 : Fin 105)
    (27 : Fin 144) (38 : Fin 144) (58 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 73, matching 54. -/
theorem tropicalTerminalMatchingExponent8_row1_matching54 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 756) (54 : Fin 105) =
      (Pi.single 27 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 756) (54 : Fin 105)
    (27 : Fin 144) (48 : Fin 144) (58 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel


theorem tropicalTerminalSupportedMatchingSet8_row2 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 2) m = true) =
        tropicalTerminalMatchingSet8 2 := by
  decide

/-- Four-coordinate replay for official row 74, matching 0. -/
theorem tropicalTerminalMatchingExponent8_row2_matching0 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 758) (0 : Fin 105) =
      (Pi.single 6 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 758) (0 : Fin 105)
    (6 : Fin 144) (58 : Fin 144) (98 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 74, matching 1. -/
theorem tropicalTerminalMatchingExponent8_row2_matching1 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 758) (1 : Fin 105) =
      (Pi.single 6 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 758) (1 : Fin 105)
    (6 : Fin 144) (58 : Fin 144) (108 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 74, matching 6. -/
theorem tropicalTerminalMatchingExponent8_row2_matching6 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 758) (6 : Fin 105) =
      (Pi.single 6 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 758) (6 : Fin 105)
    (6 : Fin 144) (69 : Fin 144) (85 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 74, matching 21. -/
theorem tropicalTerminalMatchingExponent8_row2_matching21 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 758) (21 : Fin 105) =
      (Pi.single 15 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 758) (21 : Fin 105)
    (15 : Fin 144) (38 : Fin 144) (85 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 74, matching 24. -/
theorem tropicalTerminalMatchingExponent8_row2_matching24 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 758) (24 : Fin 105) =
      (Pi.single 15 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 758) (24 : Fin 105)
    (15 : Fin 144) (48 : Fin 144) (85 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 74, matching 40. -/
theorem tropicalTerminalMatchingExponent8_row2_matching40 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 758) (40 : Fin 105) =
      (Pi.single 25 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 758) (40 : Fin 105)
    (25 : Fin 144) (48 : Fin 144) (69 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 74, matching 43. -/
theorem tropicalTerminalMatchingExponent8_row2_matching43 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 758) (43 : Fin 105) =
      (Pi.single 25 (1 : ℤ) + Pi.single 56 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 108 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 758) (43 : Fin 105)
    (25 : Fin 144) (56 : Fin 144) (69 : Fin 144) (108 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel


theorem tropicalTerminalSupportedMatchingSet8_row3 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 3) m = true) =
        tropicalTerminalMatchingSet8 3 := by
  decide

/-- Four-coordinate replay for official row 75, matching 0. -/
theorem tropicalTerminalMatchingExponent8_row3_matching0 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 759) (0 : Fin 105) =
      (Pi.single 1 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 759) (0 : Fin 105)
    (1 : Fin 144) (58 : Fin 144) (98 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 75, matching 1. -/
theorem tropicalTerminalMatchingExponent8_row3_matching1 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 759) (1 : Fin 105) =
      (Pi.single 1 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 759) (1 : Fin 105)
    (1 : Fin 144) (58 : Fin 144) (108 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 75, matching 6. -/
theorem tropicalTerminalMatchingExponent8_row3_matching6 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 759) (6 : Fin 105) =
      (Pi.single 1 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 759) (6 : Fin 105)
    (1 : Fin 144) (69 : Fin 144) (85 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 75, matching 21. -/
theorem tropicalTerminalMatchingExponent8_row3_matching21 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 759) (21 : Fin 105) =
      (Pi.single 9 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 759) (21 : Fin 105)
    (9 : Fin 144) (41 : Fin 144) (85 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 75, matching 24. -/
theorem tropicalTerminalMatchingExponent8_row3_matching24 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 759) (24 : Fin 105) =
      (Pi.single 9 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 759) (24 : Fin 105)
    (9 : Fin 144) (51 : Fin 144) (85 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 75, matching 40. -/
theorem tropicalTerminalMatchingExponent8_row3_matching40 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 759) (40 : Fin 105) =
      (Pi.single 19 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 759) (40 : Fin 105)
    (19 : Fin 144) (51 : Fin 144) (69 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 75, matching 51. -/
theorem tropicalTerminalMatchingExponent8_row3_matching51 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 759) (51 : Fin 105) =
      (Pi.single 27 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 759) (51 : Fin 105)
    (27 : Fin 144) (41 : Fin 144) (58 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel

/-- Four-coordinate replay for official row 75, matching 54. -/
theorem tropicalTerminalMatchingExponent8_row3_matching54 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 759) (54 : Fin 105) =
      (Pi.single 27 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 759) (54 : Fin 105)
    (27 : Fin 144) (51 : Fin 144) (58 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)] <;> abel


end

end MonochromaticQuantumGraphs.N8D3
