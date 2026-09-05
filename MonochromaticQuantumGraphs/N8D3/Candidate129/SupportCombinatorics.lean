import MonochromaticQuantumGraphs.LaurentListCertificate
import Mathlib.Data.Fin.VecNotation

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix BigOperators

/-- Increasing enumeration of exactly the 143 frozen physical edge-color coordinates. -/
def supportGlobal : Fin 143 → Fin 252 :=
![0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 39, 40, 41, 49, 62, 67, 78, 79, 80, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 117, 118, 119, 120, 121, 122, 123, 124, 125, 129, 130, 131, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 155, 158, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 180, 183, 186, 193, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251]

def localIndex : Fin 252 → Option (Fin 143) :=
  fun g => if g.val = 0 then some 0 else
    if g.val = 1 then some 1 else
    if g.val = 2 then some 2 else
    if g.val = 3 then some 3 else
    if g.val = 4 then some 4 else
    if g.val = 5 then some 5 else
    if g.val = 6 then some 6 else
    if g.val = 7 then some 7 else
    if g.val = 8 then some 8 else
    if g.val = 9 then some 9 else
    if g.val = 10 then some 10 else
    if g.val = 11 then some 11 else
    if g.val = 12 then some 12 else
    if g.val = 13 then some 13 else
    if g.val = 14 then some 14 else
    if g.val = 15 then some 15 else
    if g.val = 16 then some 16 else
    if g.val = 17 then some 17 else
    if g.val = 18 then some 18 else
    if g.val = 19 then some 19 else
    if g.val = 20 then some 20 else
    if g.val = 21 then some 21 else
    if g.val = 22 then some 22 else
    if g.val = 23 then some 23 else
    if g.val = 24 then some 24 else
    if g.val = 25 then some 25 else
    if g.val = 26 then some 26 else
    if g.val = 27 then some 27 else
    if g.val = 39 then some 28 else
    if g.val = 40 then some 29 else
    if g.val = 41 then some 30 else
    if g.val = 49 then some 31 else
    if g.val = 62 then some 32 else
    if g.val = 67 then some 33 else
    if g.val = 78 then some 34 else
    if g.val = 79 then some 35 else
    if g.val = 80 then some 36 else
    if g.val = 89 then some 37 else
    if g.val = 90 then some 38 else
    if g.val = 91 then some 39 else
    if g.val = 92 then some 40 else
    if g.val = 93 then some 41 else
    if g.val = 94 then some 42 else
    if g.val = 95 then some 43 else
    if g.val = 96 then some 44 else
    if g.val = 97 then some 45 else
    if g.val = 98 then some 46 else
    if g.val = 99 then some 47 else
    if g.val = 100 then some 48 else
    if g.val = 101 then some 49 else
    if g.val = 102 then some 50 else
    if g.val = 103 then some 51 else
    if g.val = 104 then some 52 else
    if g.val = 105 then some 53 else
    if g.val = 106 then some 54 else
    if g.val = 107 then some 55 else
    if g.val = 108 then some 56 else
    if g.val = 117 then some 57 else
    if g.val = 118 then some 58 else
    if g.val = 119 then some 59 else
    if g.val = 120 then some 60 else
    if g.val = 121 then some 61 else
    if g.val = 122 then some 62 else
    if g.val = 123 then some 63 else
    if g.val = 124 then some 64 else
    if g.val = 125 then some 65 else
    if g.val = 129 then some 66 else
    if g.val = 130 then some 67 else
    if g.val = 131 then some 68 else
    if g.val = 135 then some 69 else
    if g.val = 136 then some 70 else
    if g.val = 137 then some 71 else
    if g.val = 138 then some 72 else
    if g.val = 139 then some 73 else
    if g.val = 140 then some 74 else
    if g.val = 141 then some 75 else
    if g.val = 142 then some 76 else
    if g.val = 143 then some 77 else
    if g.val = 144 then some 78 else
    if g.val = 155 then some 79 else
    if g.val = 158 then some 80 else
    if g.val = 161 then some 81 else
    if g.val = 162 then some 82 else
    if g.val = 163 then some 83 else
    if g.val = 164 then some 84 else
    if g.val = 165 then some 85 else
    if g.val = 166 then some 86 else
    if g.val = 167 then some 87 else
    if g.val = 168 then some 88 else
    if g.val = 169 then some 89 else
    if g.val = 170 then some 90 else
    if g.val = 171 then some 91 else
    if g.val = 172 then some 92 else
    if g.val = 173 then some 93 else
    if g.val = 180 then some 94 else
    if g.val = 183 then some 95 else
    if g.val = 186 then some 96 else
    if g.val = 193 then some 97 else
    if g.val = 198 then some 98 else
    if g.val = 199 then some 99 else
    if g.val = 200 then some 100 else
    if g.val = 201 then some 101 else
    if g.val = 202 then some 102 else
    if g.val = 203 then some 103 else
    if g.val = 204 then some 104 else
    if g.val = 205 then some 105 else
    if g.val = 206 then some 106 else
    if g.val = 207 then some 107 else
    if g.val = 208 then some 108 else
    if g.val = 209 then some 109 else
    if g.val = 210 then some 110 else
    if g.val = 211 then some 111 else
    if g.val = 212 then some 112 else
    if g.val = 213 then some 113 else
    if g.val = 215 then some 114 else
    if g.val = 216 then some 115 else
    if g.val = 217 then some 116 else
    if g.val = 218 then some 117 else
    if g.val = 219 then some 118 else
    if g.val = 220 then some 119 else
    if g.val = 221 then some 120 else
    if g.val = 222 then some 121 else
    if g.val = 223 then some 122 else
    if g.val = 224 then some 123 else
    if g.val = 233 then some 124 else
    if g.val = 234 then some 125 else
    if g.val = 235 then some 126 else
    if g.val = 236 then some 127 else
    if g.val = 237 then some 128 else
    if g.val = 238 then some 129 else
    if g.val = 239 then some 130 else
    if g.val = 240 then some 131 else
    if g.val = 241 then some 132 else
    if g.val = 242 then some 133 else
    if g.val = 243 then some 134 else
    if g.val = 244 then some 135 else
    if g.val = 245 then some 136 else
    if g.val = 246 then some 137 else
    if g.val = 247 then some 138 else
    if g.val = 248 then some 139 else
    if g.val = 249 then some 140 else
    if g.val = 250 then some 141 else
    if g.val = 251 then some 142 else none

def physicalEdge : Fin 28 → Fin 8 × Fin 8 :=
![(0, 1), (0, 2), (0, 3), (0, 4), (0, 5), (0, 6), (0, 7), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (3, 4), (3, 5), (3, 6), (3, 7), (4, 5), (4, 6), (4, 7), (5, 6), (5, 7), (6, 7)]

def edgeIndex : Fin 8 → Fin 8 → Fin 28 :=
![![0, 0, 1, 2, 3, 4, 5, 6],
  ![0, 0, 7, 8, 9, 10, 11, 12],
  ![1, 7, 0, 13, 14, 15, 16, 17],
  ![2, 8, 13, 0, 18, 19, 20, 21],
  ![3, 9, 14, 18, 0, 22, 23, 24],
  ![4, 10, 15, 19, 22, 0, 25, 26],
  ![5, 11, 16, 20, 23, 25, 0, 27],
  ![6, 12, 17, 21, 24, 26, 27, 0]]

def coordinate (u v : Fin 8) (a b : Fin 3) : Fin 252 :=
  ⟨9 * (edgeIndex u v).val + 3 * a.val + b.val, by omega⟩

def decodeCoordinate (g : Fin 252) : Fin 8 × Fin 8 × Fin 3 × Fin 3 :=
  let k : Fin 28 := ⟨g.val / 9, by omega⟩
  let a : Fin 3 := ⟨(g.val % 9) / 3, by omega⟩
  let b : Fin 3 := ⟨g.val % 3, by omega⟩
  ((physicalEdge k).1, (physicalEdge k).2, a, b)

/-- A small-environment mirror, checked against the official matching table
by `matchingPairs_eq` before it can justify any official equation. -/
def matchingPairs : Fin 105 → Fin 4 → Fin 8 × Fin 8 :=
  fun m => if m.val = 0 then ![(0, 1), (2, 3), (4, 5), (6, 7)] else
    if m.val = 1 then ![(0, 1), (2, 3), (4, 6), (5, 7)] else
    if m.val = 2 then ![(0, 1), (2, 3), (4, 7), (5, 6)] else
    if m.val = 3 then ![(0, 1), (2, 4), (3, 5), (6, 7)] else
    if m.val = 4 then ![(0, 1), (2, 4), (3, 6), (5, 7)] else
    if m.val = 5 then ![(0, 1), (2, 4), (3, 7), (5, 6)] else
    if m.val = 6 then ![(0, 1), (2, 5), (3, 4), (6, 7)] else
    if m.val = 7 then ![(0, 1), (2, 5), (3, 6), (4, 7)] else
    if m.val = 8 then ![(0, 1), (2, 5), (3, 7), (4, 6)] else
    if m.val = 9 then ![(0, 1), (2, 6), (3, 4), (5, 7)] else
    if m.val = 10 then ![(0, 1), (2, 6), (3, 5), (4, 7)] else
    if m.val = 11 then ![(0, 1), (2, 6), (3, 7), (4, 5)] else
    if m.val = 12 then ![(0, 1), (2, 7), (3, 4), (5, 6)] else
    if m.val = 13 then ![(0, 1), (2, 7), (3, 5), (4, 6)] else
    if m.val = 14 then ![(0, 1), (2, 7), (3, 6), (4, 5)] else
    if m.val = 15 then ![(0, 2), (1, 3), (4, 5), (6, 7)] else
    if m.val = 16 then ![(0, 2), (1, 3), (4, 6), (5, 7)] else
    if m.val = 17 then ![(0, 2), (1, 3), (4, 7), (5, 6)] else
    if m.val = 18 then ![(0, 2), (1, 4), (3, 5), (6, 7)] else
    if m.val = 19 then ![(0, 2), (1, 4), (3, 6), (5, 7)] else
    if m.val = 20 then ![(0, 2), (1, 4), (3, 7), (5, 6)] else
    if m.val = 21 then ![(0, 2), (1, 5), (3, 4), (6, 7)] else
    if m.val = 22 then ![(0, 2), (1, 5), (3, 6), (4, 7)] else
    if m.val = 23 then ![(0, 2), (1, 5), (3, 7), (4, 6)] else
    if m.val = 24 then ![(0, 2), (1, 6), (3, 4), (5, 7)] else
    if m.val = 25 then ![(0, 2), (1, 6), (3, 5), (4, 7)] else
    if m.val = 26 then ![(0, 2), (1, 6), (3, 7), (4, 5)] else
    if m.val = 27 then ![(0, 2), (1, 7), (3, 4), (5, 6)] else
    if m.val = 28 then ![(0, 2), (1, 7), (3, 5), (4, 6)] else
    if m.val = 29 then ![(0, 2), (1, 7), (3, 6), (4, 5)] else
    if m.val = 30 then ![(0, 3), (1, 2), (4, 5), (6, 7)] else
    if m.val = 31 then ![(0, 3), (1, 2), (4, 6), (5, 7)] else
    if m.val = 32 then ![(0, 3), (1, 2), (4, 7), (5, 6)] else
    if m.val = 33 then ![(0, 3), (1, 4), (2, 5), (6, 7)] else
    if m.val = 34 then ![(0, 3), (1, 4), (2, 6), (5, 7)] else
    if m.val = 35 then ![(0, 3), (1, 4), (2, 7), (5, 6)] else
    if m.val = 36 then ![(0, 3), (1, 5), (2, 4), (6, 7)] else
    if m.val = 37 then ![(0, 3), (1, 5), (2, 6), (4, 7)] else
    if m.val = 38 then ![(0, 3), (1, 5), (2, 7), (4, 6)] else
    if m.val = 39 then ![(0, 3), (1, 6), (2, 4), (5, 7)] else
    if m.val = 40 then ![(0, 3), (1, 6), (2, 5), (4, 7)] else
    if m.val = 41 then ![(0, 3), (1, 6), (2, 7), (4, 5)] else
    if m.val = 42 then ![(0, 3), (1, 7), (2, 4), (5, 6)] else
    if m.val = 43 then ![(0, 3), (1, 7), (2, 5), (4, 6)] else
    if m.val = 44 then ![(0, 3), (1, 7), (2, 6), (4, 5)] else
    if m.val = 45 then ![(0, 4), (1, 2), (3, 5), (6, 7)] else
    if m.val = 46 then ![(0, 4), (1, 2), (3, 6), (5, 7)] else
    if m.val = 47 then ![(0, 4), (1, 2), (3, 7), (5, 6)] else
    if m.val = 48 then ![(0, 4), (1, 3), (2, 5), (6, 7)] else
    if m.val = 49 then ![(0, 4), (1, 3), (2, 6), (5, 7)] else
    if m.val = 50 then ![(0, 4), (1, 3), (2, 7), (5, 6)] else
    if m.val = 51 then ![(0, 4), (1, 5), (2, 3), (6, 7)] else
    if m.val = 52 then ![(0, 4), (1, 5), (2, 6), (3, 7)] else
    if m.val = 53 then ![(0, 4), (1, 5), (2, 7), (3, 6)] else
    if m.val = 54 then ![(0, 4), (1, 6), (2, 3), (5, 7)] else
    if m.val = 55 then ![(0, 4), (1, 6), (2, 5), (3, 7)] else
    if m.val = 56 then ![(0, 4), (1, 6), (2, 7), (3, 5)] else
    if m.val = 57 then ![(0, 4), (1, 7), (2, 3), (5, 6)] else
    if m.val = 58 then ![(0, 4), (1, 7), (2, 5), (3, 6)] else
    if m.val = 59 then ![(0, 4), (1, 7), (2, 6), (3, 5)] else
    if m.val = 60 then ![(0, 5), (1, 2), (3, 4), (6, 7)] else
    if m.val = 61 then ![(0, 5), (1, 2), (3, 6), (4, 7)] else
    if m.val = 62 then ![(0, 5), (1, 2), (3, 7), (4, 6)] else
    if m.val = 63 then ![(0, 5), (1, 3), (2, 4), (6, 7)] else
    if m.val = 64 then ![(0, 5), (1, 3), (2, 6), (4, 7)] else
    if m.val = 65 then ![(0, 5), (1, 3), (2, 7), (4, 6)] else
    if m.val = 66 then ![(0, 5), (1, 4), (2, 3), (6, 7)] else
    if m.val = 67 then ![(0, 5), (1, 4), (2, 6), (3, 7)] else
    if m.val = 68 then ![(0, 5), (1, 4), (2, 7), (3, 6)] else
    if m.val = 69 then ![(0, 5), (1, 6), (2, 3), (4, 7)] else
    if m.val = 70 then ![(0, 5), (1, 6), (2, 4), (3, 7)] else
    if m.val = 71 then ![(0, 5), (1, 6), (2, 7), (3, 4)] else
    if m.val = 72 then ![(0, 5), (1, 7), (2, 3), (4, 6)] else
    if m.val = 73 then ![(0, 5), (1, 7), (2, 4), (3, 6)] else
    if m.val = 74 then ![(0, 5), (1, 7), (2, 6), (3, 4)] else
    if m.val = 75 then ![(0, 6), (1, 2), (3, 4), (5, 7)] else
    if m.val = 76 then ![(0, 6), (1, 2), (3, 5), (4, 7)] else
    if m.val = 77 then ![(0, 6), (1, 2), (3, 7), (4, 5)] else
    if m.val = 78 then ![(0, 6), (1, 3), (2, 4), (5, 7)] else
    if m.val = 79 then ![(0, 6), (1, 3), (2, 5), (4, 7)] else
    if m.val = 80 then ![(0, 6), (1, 3), (2, 7), (4, 5)] else
    if m.val = 81 then ![(0, 6), (1, 4), (2, 3), (5, 7)] else
    if m.val = 82 then ![(0, 6), (1, 4), (2, 5), (3, 7)] else
    if m.val = 83 then ![(0, 6), (1, 4), (2, 7), (3, 5)] else
    if m.val = 84 then ![(0, 6), (1, 5), (2, 3), (4, 7)] else
    if m.val = 85 then ![(0, 6), (1, 5), (2, 4), (3, 7)] else
    if m.val = 86 then ![(0, 6), (1, 5), (2, 7), (3, 4)] else
    if m.val = 87 then ![(0, 6), (1, 7), (2, 3), (4, 5)] else
    if m.val = 88 then ![(0, 6), (1, 7), (2, 4), (3, 5)] else
    if m.val = 89 then ![(0, 6), (1, 7), (2, 5), (3, 4)] else
    if m.val = 90 then ![(0, 7), (1, 2), (3, 4), (5, 6)] else
    if m.val = 91 then ![(0, 7), (1, 2), (3, 5), (4, 6)] else
    if m.val = 92 then ![(0, 7), (1, 2), (3, 6), (4, 5)] else
    if m.val = 93 then ![(0, 7), (1, 3), (2, 4), (5, 6)] else
    if m.val = 94 then ![(0, 7), (1, 3), (2, 5), (4, 6)] else
    if m.val = 95 then ![(0, 7), (1, 3), (2, 6), (4, 5)] else
    if m.val = 96 then ![(0, 7), (1, 4), (2, 3), (5, 6)] else
    if m.val = 97 then ![(0, 7), (1, 4), (2, 5), (3, 6)] else
    if m.val = 98 then ![(0, 7), (1, 4), (2, 6), (3, 5)] else
    if m.val = 99 then ![(0, 7), (1, 5), (2, 3), (4, 6)] else
    if m.val = 100 then ![(0, 7), (1, 5), (2, 4), (3, 6)] else
    if m.val = 101 then ![(0, 7), (1, 5), (2, 6), (3, 4)] else
    if m.val = 102 then ![(0, 7), (1, 6), (2, 3), (4, 5)] else
    if m.val = 103 then ![(0, 7), (1, 6), (2, 4), (3, 5)] else
    ![(0, 7), (1, 6), (2, 5), (3, 4)]

def matchingVariables (q : Fin 8 → Fin 3) (m : Fin 105) : Option (List (Fin 143)) :=
  let lookup := fun k : Fin 4 =>
    let e := matchingPairs m k
    localIndex (coordinate e.1 e.2 (q e.1) (q e.2))
  match lookup 0, lookup 1, lookup 2, lookup 3 with
  | some a, some b, some c, some d => some [a, b, c, d]
  | _, _, _, _ => none

def termPolynomial : Option (List (Fin 143)) → Polynomial 143
  | none => []
  | some indices => [(1, exponentOfVariables indices)]

def tablePolynomial (table : Fin 105 → Option (List (Fin 143))) : Polynomial 143 :=
  LaurentList.sum fun m => termPolynomial (table m)

end MonochromaticQuantumGraphs.N8D3.Candidate129
