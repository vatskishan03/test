import MonochromaticQuantumGraphs.N8D3.TropicalBorderWeights8

/-!
# Finite support-coordinate data for N8D3

The canonical 144-entry local table and its official-coordinate decoder live
here without any finite replay proof, so those checks can compile in bounded
independent shards.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph

noncomputable section

/-- The increasing enumeration of the 144 set bits in
`tropicalSupportMask8`. -/
def tropicalSupportGlobalCoordinate8 : Fin 144 → Fin 252 :=
![
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
  18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 39, 40, 41, 49, 62, 67,
  78, 79, 80, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,
  101, 102, 103, 104, 105, 106, 107, 108, 117, 118, 119, 120, 121,
  122, 123, 124, 125, 129, 130, 131, 135, 136, 137, 138, 139, 140,
  141, 142, 143, 144, 155, 158, 161, 162, 163, 164, 165, 166, 167,
  168, 169, 170, 171, 172, 173, 180, 183, 186, 193, 198, 199, 200,
  201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213,
  214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 233, 234,
  235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247,
  248, 249, 250, 251
]

/-- Lexicographic inverse table for `tropicalEdgeIndex8` on physical edges. -/
def tropicalPhysicalEdgeOfIndex8 : Fin 28 → Fin 8 × Fin 8 :=
![
  (0, 1), (0, 2), (0, 3), (0, 4), (0, 5), (0, 6), (0, 7),
  (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7),
  (2, 3), (2, 4), (2, 5), (2, 6), (2, 7),
  (3, 4), (3, 5), (3, 6), (3, 7),
  (4, 5), (4, 6), (4, 7),
  (5, 6), (5, 7),
  (6, 7)
]

/-- Decode a global coordinate into the corresponding official edge record. -/
def tropicalEdgeOfGlobalCoordinate8 (x : Fin 252) : EdgeN 8 3 :=
  let edgeIndex : Fin 28 := ⟨x.val / 9, by omega⟩
  let leftColor : Fin 3 := ⟨(x.val % 9) / 3, by omega⟩
  let rightColor : Fin 3 := ⟨x.val % 3, by omega⟩
  let edge := tropicalPhysicalEdgeOfIndex8 edgeIndex
  mkEdge edge.1 edge.2 leftColor rightColor

/-- The official edge represented by one support-local coordinate. -/
def tropicalSupportEdge8 (i : Fin 144) : EdgeN 8 3 :=
  tropicalEdgeOfGlobalCoordinate8 (tropicalSupportGlobalCoordinate8 i)

/-- Restriction of official weights to the canonical support-local order. -/
def tropicalSupportWeight8 (W : WeightsN 8 3 ℂ) : Fin 144 → ℂ :=
  fun i ↦ W (tropicalSupportEdge8 i)

end


end MonochromaticQuantumGraphs.N8D3
