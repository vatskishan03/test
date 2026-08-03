import MonochromaticQuantumGraphs.N8D3.TropicalBorderData8

/-!
# Finite data for the 200 N8D3 base relations

This module deliberately stores only the 200 ternary coloring codes.  The
matching monomials are reconstructed from the existing N8D3 matching table.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000

/-- Decode the research engine's little-endian ternary coloring code.  The
color of vertex `v` is ternary digit `v`. -/
def tropicalColoringOfCode8 (code : Fin 6561) : Fin 8 → Fin 3 :=
  fun v ↦ ⟨(code.val / 3 ^ v.val) % 3, Nat.mod_lt _ (by omega)⟩

/-- The exact 200 coloring codes retained by the canonical six-matching
factor pipeline. -/
def tropicalBaseColoringCode8 : Fin 200 → Fin 6561 :=
![
  761, 779, 788, 806, 840, 842, 858, 860, 867, 869,
  885, 887, 921, 923, 939, 941, 948, 950, 966, 968,
  1004, 1022, 1031, 1049, 1083, 1085, 1101, 1103, 1110, 1112,
  1128, 1130, 1164, 1166, 1182, 1184, 1191, 1193, 1209, 1211,
  1247, 1265, 1274, 1292, 1326, 1328, 1344, 1346, 1353, 1355,
  1371, 1373, 1407, 1409, 1425, 1427, 1434, 1436, 1452, 1454,
  1490, 1508, 1517, 1535, 1569, 1571, 1587, 1589, 1596, 1598,
  1614, 1616, 1650, 1652, 1668, 1670, 1677, 1679, 1695, 1697,
  1733, 1751, 1760, 1778, 1812, 1814, 1830, 1832, 1839, 1841,
  1857, 1859, 1893, 1895, 1911, 1913, 1920, 1922, 1938, 1940,
  2972, 2975, 2990, 2993, 3051, 3053, 3054, 3056, 3069, 3071,
  3072, 3074, 3132, 3134, 3135, 3137, 3150, 3152, 3153, 3155,
  3215, 3218, 3233, 3236, 3294, 3296, 3297, 3299, 3312, 3314,
  3315, 3317, 3375, 3377, 3378, 3380, 3393, 3395, 3396, 3398,
  3458, 3461, 3476, 3479, 3537, 3539, 3540, 3542, 3555, 3557,
  3558, 3560, 3618, 3620, 3621, 3623, 3636, 3638, 3639, 3641,
  3701, 3704, 3719, 3722, 3780, 3782, 3783, 3785, 3798, 3800,
  3801, 3803, 3861, 3863, 3864, 3866, 3879, 3881, 3882, 3884,
  3944, 3947, 3962, 3965, 4023, 4025, 4026, 4028, 4041, 4043,
  4044, 4046, 4104, 4106, 4107, 4109, 4122, 4124, 4125, 4127
]

/-- The coloring represented by one of the 200 retained base rows. -/
def tropicalBaseColoring8 (r : Fin 200) : Fin 8 → Fin 3 :=
  tropicalColoringOfCode8 (tropicalBaseColoringCode8 r)

/-- The six perfect matchings active at every retained base coloring. -/
def tropicalBaseMatching8 : Fin 6 → Fin 105 := ![0, 1, 6, 21, 24, 40]

/-- The same six matchings as a finite set, for comparison with support
filtering of the official 105-term sum. -/
def tropicalBaseMatchingSet8 : Finset (Fin 105) :=
  {0, 1, 6, 21, 24, 40}

/-- Row `i` in one of ten bounded 20-row replay shards. -/
def tropicalBaseRowOfShard8 (s : Fin 10) (i : Fin 20) : Fin 200 :=
  ⟨20 * s.val + i.val, by omega⟩

end


end MonochromaticQuantumGraphs.N8D3
