import MonochromaticQuantumGraphs.N8D3.Basic

/-!
# Exact data for the `(N,D) = (8,3)` tropical-border certificate

The 144-coordinate support is generated from the canonical bundle whose ZIP
SHA-256 is
`11dc0fd9a451edba5e0b4c9c7a3bda0439f41349dfb364d4b770d19da0e7b5dd`.
Coordinates use the lexicographic physical-edge index and
`9 * edgeIndex + 3 * leftColor + rightColor`.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

set_option maxRecDepth 100000

/-- Lexicographic index of an undirected physical edge of `K₈`.
Diagonal entries are irrelevant and are assigned index zero. -/
def tropicalEdgeIndex8 : Fin 8 → Fin 8 → Fin 28 :=
![
  ![0, 0, 1, 2, 3, 4, 5, 6],
  ![0, 0, 7, 8, 9, 10, 11, 12],
  ![1, 7, 0, 13, 14, 15, 16, 17],
  ![2, 8, 13, 0, 18, 19, 20, 21],
  ![3, 9, 14, 18, 0, 22, 23, 24],
  ![4, 10, 15, 19, 22, 0, 25, 26],
  ![5, 11, 16, 20, 23, 25, 0, 27],
  ![6, 12, 17, 21, 24, 26, 27, 0]
]

/-- Coordinate index `9 * edgeIndex + 3 * a + b` from the canonical bundle. -/
def tropicalCoordinate8 (u v : Fin 8) (a b : Fin 3) : Fin 252 :=
  ⟨9 * (tropicalEdgeIndex8 u v).val + 3 * a.val + b.val, by omega⟩

/-- Exact 252-bit characteristic mask of the canonical 144-entry support. -/
def tropicalSupportMask8 : Nat := 0xff92601ffffffc2049ffffe4801ff8e3fe01ffffe01c008400203800fffffff

/-- Exact characteristic function of the canonical 144-entry support. -/
def tropicalSupportCoord8 (x : Fin 252) : Bool :=
  tropicalSupportMask8.testBit x.val

/-- The eleven coordinates assigned valuation `+1`. -/
def tropicalPositiveCoord8 (x : Fin 252) : Bool :=
  x == 8 || x == 27 || x == 49 || x == 67 || x == 108 || x == 144 || x == 161 || x == 170 || x == 171 || x == 202 || x == 233

/-- The two coordinates assigned valuation zero. -/
def tropicalZeroCoord8 (x : Fin 252) : Bool :=
  x == 0 || x == 193

/-- The certificate valuation. Values at unsupported coordinates are irrelevant;
they are set to `-1` so the definition implements the manifest's default branch. -/
def tropicalValuationCoord8 (x : Fin 252) : Int :=
  bif tropicalPositiveCoord8 x then 1
  else bif tropicalZeroCoord8 x then 0 else -1

/-- The 144 supported coordinate indices as a finite set. -/
def tropicalSupportSet8 : Finset (Fin 252) :=
  Finset.univ.filter fun x => tropicalSupportCoord8 x = true

/-- Kernel check of the canonical support cardinality. -/
theorem tropicalSupportSize8 : tropicalSupportSet8.card = 144 := by
  decide

/-- Support lookup on a canonically ordered physical edge. -/
def tropicalSupportedEntry8
    (u v : Fin 8) (a b : Fin 3) : Bool :=
  tropicalSupportCoord8 (tropicalCoordinate8 u v a b)

/-- Valuation lookup on a canonically ordered physical edge. -/
def tropicalEntryValuation8
    (u v : Fin 8) (a b : Fin 3) : Int :=
  tropicalValuationCoord8 (tropicalCoordinate8 u v a b)

/-- Canonical undirected support lookup for an official edge coordinate. -/
def tropicalEdgeSupported8 (e : EdgeN 8 3) : Bool :=
  if e.u < e.v then tropicalSupportedEntry8 e.u e.v e.i e.j
  else if e.v < e.u then tropicalSupportedEntry8 e.v e.u e.j e.i
  else false

/-- Canonical undirected valuation lookup for an official edge coordinate. -/
def tropicalEdgeValuation8 (e : EdgeN 8 3) : Int :=
  if e.u < e.v then tropicalEntryValuation8 e.u e.v e.i e.j
  else if e.v < e.u then tropicalEntryValuation8 e.v e.u e.j e.i
  else 0

@[simp] theorem tropicalEdgeSupported8_mkEdge_of_lt
    {u v : Fin 8} {a b : Fin 3} (h : u < v) :
    tropicalEdgeSupported8 (mkEdge u v a b) =
      tropicalSupportedEntry8 u v a b := by
  simp [tropicalEdgeSupported8, mkEdge, h]

@[simp] theorem tropicalEdgeValuation8_mkEdge_of_lt
    {u v : Fin 8} {a b : Fin 3} (h : u < v) :
    tropicalEdgeValuation8 (mkEdge u v a b) =
      tropicalEntryValuation8 u v a b := by
  simp [tropicalEdgeValuation8, mkEdge, h]

/-- Manifest target matching indices `[59, 77, 12]`. -/
def tropicalTargetMatching8 : Fin 3 → Fin 105 := ![59, 77, 12]

/-- Manifest target valuation rates `[4, 3, 4]`. -/
def tropicalTargetRate8 : Fin 3 → Int := ![4, 3, 4]

/-- Coordinate selected by a matching edge and a vertex coloring. -/
def tropicalMatchingCoordinate8
    (q : Fin 8 → Fin 3) (m : Fin 105) (k : Fin 4) : Fin 252 :=
  let e := matchingEdges8 m k
  tropicalCoordinate8 e.1 e.2 (q e.1) (q e.2)

/-- Whether all four coordinates of a matching monomial are supported. -/
def tropicalMatchingSupported8
    (q : Fin 8 → Fin 3) (m : Fin 105) : Bool :=
  tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 0) &&
  tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 1) &&
  tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 2) &&
  tropicalSupportCoord8 (tropicalMatchingCoordinate8 q m 3)

/-- Sum of the four coordinate valuations in one matching monomial. -/
def tropicalMatchingValuation8
    (q : Fin 8 → Fin 3) (m : Fin 105) : Int :=
  tropicalValuationCoord8 (tropicalMatchingCoordinate8 q m 0) +
  tropicalValuationCoord8 (tropicalMatchingCoordinate8 q m 1) +
  tropicalValuationCoord8 (tropicalMatchingCoordinate8 q m 2) +
  tropicalValuationCoord8 (tropicalMatchingCoordinate8 q m 3)

/-- Exactly the three selected monochromatic target monomials. -/
def tropicalSelectedTarget8
    (q : Fin 8 → Fin 3) (m : Fin 105) : Bool :=
  (q 1 == q 0) && (q 2 == q 0) && (q 3 == q 0) &&
  (q 4 == q 0) && (q 5 == q 0) && (q 6 == q 0) &&
  (q 7 == q 0) && (m == tropicalTargetMatching8 (q 0))

/-- The exact finite strict-gap proposition replayed for one coloring/matching. -/
def TropicalGapAt8 (q : Fin 8 → Fin 3) (m : Fin 105) : Prop :=
  tropicalMatchingSupported8 q m = true →
  tropicalSelectedTarget8 q m = false →
  tropicalMatchingValuation8 q m ≤ tropicalTargetRate8 (q 0) - 1

/-- Every tabulated matching edge is canonically ordered. -/
theorem matchingEdges8_lt :
    ∀ m : Fin 105, ∀ k : Fin 4,
      (matchingEdges8 m k).1 < (matchingEdges8 m k).2 := by
  decide

/-- The three manifest target matchings have exactly the stated physical edges. -/
theorem tropicalTargetMatchingEdges8 :
    matchingEdges8 (tropicalTargetMatching8 0) =
        ![(0, 4), (1, 7), (2, 6), (3, 5)] ∧
    matchingEdges8 (tropicalTargetMatching8 1) =
        ![(0, 6), (1, 2), (3, 7), (4, 5)] ∧
    matchingEdges8 (tropicalTargetMatching8 2) =
        ![(0, 1), (2, 7), (3, 4), (5, 6)] := by
  decide

/-- All three selected target monomials lie in the canonical support. -/
theorem tropicalTargetMatchingSupported8 :
    ∀ c : Fin 3,
      tropicalMatchingSupported8 (monoColoring8 c)
        (tropicalTargetMatching8 c) = true := by
  decide

/-- The selected target valuation equals its manifest rate for each color. -/
theorem tropicalTargetMatchingValuation8 :
    ∀ c : Fin 3,
      tropicalMatchingValuation8 (monoColoring8 c)
        (tropicalTargetMatching8 c) = tropicalTargetRate8 c := by
  decide

/-- Explicit kernel replay of the target valuation sums `4, 3, 4`. -/
theorem tropicalTargetValuationSums8 :
    tropicalMatchingValuation8 (monoColoring8 0)
        (tropicalTargetMatching8 0) = 4 ∧
    tropicalMatchingValuation8 (monoColoring8 1)
        (tropicalTargetMatching8 1) = 3 ∧
    tropicalMatchingValuation8 (monoColoring8 2)
        (tropicalTargetMatching8 2) = 4 := by
  decide

/-- Each selected target is recognized by the finite exception predicate. -/
theorem tropicalTargetSelected8 :
    ∀ c : Fin 3,
      tropicalSelectedTarget8 (monoColoring8 c)
        (tropicalTargetMatching8 c) = true := by
  decide

end MonochromaticQuantumGraphs.N8D3
