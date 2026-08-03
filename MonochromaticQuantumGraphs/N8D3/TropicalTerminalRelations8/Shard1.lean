import MonochromaticQuantumGraphs.N8D3.TropicalRetainedRelations8.Data
import MonochromaticQuantumGraphs.N8D3.TropicalTerminalRelations8.Data

/-! Bounded support-filter replay shard 1 for the official terminal rows. -/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

theorem tropicalTerminalSupportedMatchingSet8_row4 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 4) m = true) =
        tropicalTerminalMatchingSet8 4 := by
  decide

/-- Four-coordinate replay for official row 77, matching 0. -/
theorem tropicalTerminalMatchingExponent8_row4_matching0 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 761) (0 : Fin 105) =
      (Pi.single 7 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 761) (0 : Fin 105)
    (7 : Fin 144) (58 : Fin 144) (98 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 77, matching 1. -/
theorem tropicalTerminalMatchingExponent8_row4_matching1 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 761) (1 : Fin 105) =
      (Pi.single 7 (1 : ℤ) + Pi.single 58 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 761) (1 : Fin 105)
    (7 : Fin 144) (58 : Fin 144) (108 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 77, matching 6. -/
theorem tropicalTerminalMatchingExponent8_row4_matching6 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 761) (6 : Fin 105) =
      (Pi.single 7 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 761) (6 : Fin 105)
    (7 : Fin 144) (69 : Fin 144) (85 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 77, matching 21. -/
theorem tropicalTerminalMatchingExponent8_row4_matching21 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 761) (21 : Fin 105) =
      (Pi.single 15 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 138 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 761) (21 : Fin 105)
    (15 : Fin 144) (41 : Fin 144) (85 : Fin 144) (138 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 77, matching 24. -/
theorem tropicalTerminalMatchingExponent8_row4_matching24 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 761) (24 : Fin 105) =
      (Pi.single 15 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 85 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 761) (24 : Fin 105)
    (15 : Fin 144) (51 : Fin 144) (85 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 77, matching 40. -/
theorem tropicalTerminalMatchingExponent8_row4_matching40 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 761) (40 : Fin 105) =
      (Pi.single 25 (1 : ℤ) + Pi.single 51 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 761) (40 : Fin 105)
    (25 : Fin 144) (51 : Fin 144) (69 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel


theorem tropicalTerminalSupportedMatchingSet8_row5 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 5) m = true) =
        tropicalTerminalMatchingSet8 5 := by
  decide

/-- Four-coordinate replay for official row 437, matching 0. -/
theorem tropicalTerminalMatchingExponent8_row5_matching0 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 1462) (0 : Fin 105) =
      (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 141 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 1462) (0 : Fin 105)
    (4 : Fin 144) (57 : Fin 144) (98 : Fin 144) (141 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 437, matching 1. -/
theorem tropicalTerminalMatchingExponent8_row5_matching1 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 1462) (1 : Fin 105) =
      (Pi.single 4 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 1462) (1 : Fin 105)
    (4 : Fin 144) (57 : Fin 144) (109 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 437, matching 6. -/
theorem tropicalTerminalMatchingExponent8_row5_matching6 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 1462) (6 : Fin 105) =
      (Pi.single 4 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 141 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 1462) (6 : Fin 105)
    (4 : Fin 144) (69 : Fin 144) (82 : Fin 144) (141 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 437, matching 21. -/
theorem tropicalTerminalMatchingExponent8_row5_matching21 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 1462) (21 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 41 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 141 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 1462) (21 : Fin 105)
    (12 : Fin 144) (41 : Fin 144) (82 : Fin 144) (141 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 437, matching 24. -/
theorem tropicalTerminalMatchingExponent8_row5_matching24 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 1462) (24 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 126 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 1462) (24 : Fin 105)
    (12 : Fin 144) (52 : Fin 144) (82 : Fin 144) (126 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 437, matching 25. -/
theorem tropicalTerminalMatchingExponent8_row5_matching25 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 1462) (25 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 1462) (25 : Fin 105)
    (12 : Fin 144) (52 : Fin 144) (91 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 437, matching 40. -/
theorem tropicalTerminalMatchingExponent8_row5_matching40 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 1462) (40 : Fin 105) =
      (Pi.single 21 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 1462) (40 : Fin 105)
    (21 : Fin 144) (52 : Fin 144) (69 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 437, matching 69. -/
theorem tropicalTerminalMatchingExponent8_row5_matching69 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 1462) (69 : Fin 105) =
      (Pi.single 28 (1 : ℤ) + Pi.single 52 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 116 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 1462) (69 : Fin 105)
    (28 : Fin 144) (52 : Fin 144) (57 : Fin 144) (116 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel


theorem tropicalTerminalSupportedMatchingSet8_row6 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 6) m = true) =
        tropicalTerminalMatchingSet8 6 := by
  decide

/-- Four-coordinate replay for official row 874, matching 0. -/
theorem tropicalTerminalMatchingExponent8_row6_matching0 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 2917) (0 : Fin 105) =
      (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 139 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 2917) (0 : Fin 105)
    (3 : Fin 144) (57 : Fin 144) (98 : Fin 144) (139 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 874, matching 1. -/
theorem tropicalTerminalMatchingExponent8_row6_matching1 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 2917) (1 : Fin 105) =
      (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 108 (1 : ℤ) + Pi.single 127 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 2917) (1 : Fin 105)
    (3 : Fin 144) (57 : Fin 144) (108 : Fin 144) (127 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 874, matching 6. -/
theorem tropicalTerminalMatchingExponent8_row6_matching6 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 2917) (6 : Fin 105) =
      (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 2917) (6 : Fin 105)
    (3 : Fin 144) (69 : Fin 144) (82 : Fin 144) (139 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 874, matching 21. -/
theorem tropicalTerminalMatchingExponent8_row6_matching21 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 2917) (21 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 139 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 2917) (21 : Fin 105)
    (12 : Fin 144) (38 : Fin 144) (82 : Fin 144) (139 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 874, matching 24. -/
theorem tropicalTerminalMatchingExponent8_row6_matching24 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 2917) (24 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 2917) (24 : Fin 105)
    (12 : Fin 144) (48 : Fin 144) (82 : Fin 144) (127 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 874, matching 25. -/
theorem tropicalTerminalMatchingExponent8_row6_matching25 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 2917) (25 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 2917) (25 : Fin 105)
    (12 : Fin 144) (48 : Fin 144) (91 : Fin 144) (117 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 874, matching 40. -/
theorem tropicalTerminalMatchingExponent8_row6_matching40 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 2917) (40 : Fin 105) =
      (Pi.single 21 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 2917) (40 : Fin 105)
    (21 : Fin 144) (48 : Fin 144) (69 : Fin 144) (117 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 874, matching 69. -/
theorem tropicalTerminalMatchingExponent8_row6_matching69 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 2917) (69 : Fin 105) =
      (Pi.single 28 (1 : ℤ) + Pi.single 48 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 2917) (69 : Fin 105)
    (28 : Fin 144) (48 : Fin 144) (57 : Fin 144) (117 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 874, matching 84. -/
theorem tropicalTerminalMatchingExponent8_row6_matching84 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 2917) (84 : Fin 105) =
      (Pi.single 31 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 2917) (84 : Fin 105)
    (31 : Fin 144) (38 : Fin 144) (57 : Fin 144) (117 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel


theorem tropicalTerminalSupportedMatchingSet8_row7 :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalTerminalColoring8 7) m = true) =
        tropicalTerminalMatchingSet8 7 := by
  decide

/-- Four-coordinate replay for official row 1213, matching 0. -/
theorem tropicalTerminalMatchingExponent8_row7_matching0 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 3646) (0 : Fin 105) =
      (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 98 (1 : ℤ) + Pi.single 142 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 3646) (0 : Fin 105)
    (3 : Fin 144) (57 : Fin 144) (98 : Fin 144) (142 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 1213, matching 1. -/
theorem tropicalTerminalMatchingExponent8_row7_matching1 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 3646) (1 : Fin 105) =
      (Pi.single 3 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 109 (1 : ℤ) + Pi.single 127 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 3646) (1 : Fin 105)
    (3 : Fin 144) (57 : Fin 144) (109 : Fin 144) (127 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 1213, matching 6. -/
theorem tropicalTerminalMatchingExponent8_row7_matching6 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 3646) (6 : Fin 105) =
      (Pi.single 3 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 142 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 3646) (6 : Fin 105)
    (3 : Fin 144) (69 : Fin 144) (82 : Fin 144) (142 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 1213, matching 21. -/
theorem tropicalTerminalMatchingExponent8_row7_matching21 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 3646) (21 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 38 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 142 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 3646) (21 : Fin 105)
    (12 : Fin 144) (38 : Fin 144) (82 : Fin 144) (142 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 1213, matching 24. -/
theorem tropicalTerminalMatchingExponent8_row7_matching24 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 3646) (24 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 82 (1 : ℤ) + Pi.single 127 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 3646) (24 : Fin 105)
    (12 : Fin 144) (49 : Fin 144) (82 : Fin 144) (127 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 1213, matching 25. -/
theorem tropicalTerminalMatchingExponent8_row7_matching25 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 3646) (25 : Fin 105) =
      (Pi.single 12 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 91 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 3646) (25 : Fin 105)
    (12 : Fin 144) (49 : Fin 144) (91 : Fin 144) (117 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 1213, matching 40. -/
theorem tropicalTerminalMatchingExponent8_row7_matching40 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 3646) (40 : Fin 105) =
      (Pi.single 21 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 69 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 3646) (40 : Fin 105)
    (21 : Fin 144) (49 : Fin 144) (69 : Fin 144) (117 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel

/-- Four-coordinate replay for official row 1213, matching 69. -/
theorem tropicalTerminalMatchingExponent8_row7_matching69 :
    tropicalMatchingLocalExponent8
        (tropicalColoringOfCode8 3646) (69 : Fin 105) =
      (Pi.single 28 (1 : ℤ) + Pi.single 49 (1 : ℤ) + Pi.single 57 (1 : ℤ) + Pi.single 117 (1 : ℤ)) := by
  rw [tropicalMatchingLocalExponent8_eq_four_of_globalCoordinates8
    (tropicalColoringOfCode8 3646) (69 : Fin 105)
    (28 : Fin 144) (49 : Fin 144) (57 : Fin 144) (117 : Fin 144)
    (by decide) (by decide) (by decide) (by decide)]
  abel


end

end MonochromaticQuantumGraphs.N8D3
