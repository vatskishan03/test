import MQGN6Audit.VertexRelabel

/-!
# The twenty-one target-matching orbits

The selected target family is a multiset of four of the fifteen perfect
matchings.  After sorting the colors and relabeling the six vertices, there are
exactly twenty-one possibilities.  The classification below is a closed finite
statement checked by `native_decide` against the reflectively certified action
of all 720 vertex permutations.
-/

namespace MQGN6Audit

open Function

/-- The single all-identical target orbit. -/
def identicalTargetRep6 : Fin 4 → Fin 15 := ![0, 0, 0, 0]

/-- The six target orbits for which no compatible local witness plan exists. -/
def infeasibleTargetRep6 : Fin 6 → Fin 4 → Fin 15 := ![
  ![0, 0, 1, 1],
  ![0, 0, 1, 4],
  ![0, 0, 4, 4],
  ![0, 0, 4, 5],
  ![0, 1, 3, 4],
  ![0, 1, 3, 5]
]

/-- The fourteen non-identical, locally feasible target orbits. -/
def feasibleTargetRep6 : Fin 14 → Fin 4 → Fin 15 := ![
  ![0, 0, 0, 1],
  ![0, 0, 0, 4],
  ![0, 0, 1, 2],
  ![0, 0, 1, 3],
  ![0, 0, 1, 5],
  ![0, 0, 4, 8],
  ![0, 0, 4, 13],
  ![0, 1, 2, 3],
  ![0, 1, 3, 7],
  ![0, 1, 3, 11],
  ![0, 1, 3, 14],
  ![0, 1, 5, 7],
  ![0, 1, 5, 12],
  ![0, 4, 8, 10]
]

/-- Closed finite verification of the complete orbit list. -/
set_option maxRecDepth 100000 in
set_option maxHeartbeats 100000000 in
theorem targetOrbitTrichotomy6 :
    ∀ target : Fin 4 → Fin 15, Monotone target →
      ∃ π : Equiv.Perm (Fin 6),
        sortedTarget6 (relabelTargetVertices6 π target) = identicalTargetRep6 ∨
        (∃ i : Fin 6,
          sortedTarget6 (relabelTargetVertices6 π target) = infeasibleTargetRep6 i) ∨
        (∃ i : Fin 14,
          sortedTarget6 (relabelTargetVertices6 π target) = feasibleTargetRep6 i) := by
  native_decide

/-- The twenty-one displayed representatives are pairwise distinct. -/
set_option maxRecDepth 100000 in
theorem targetOrbitReps6_distinct :
    (∀ i : Fin 6, infeasibleTargetRep6 i ≠ identicalTargetRep6) ∧
    (∀ i : Fin 14, feasibleTargetRep6 i ≠ identicalTargetRep6) ∧
    (∀ i j : Fin 6, infeasibleTargetRep6 i = infeasibleTargetRep6 j → i = j) ∧
    (∀ i j : Fin 14, feasibleTargetRep6 i = feasibleTargetRep6 j → i = j) ∧
    (∀ i : Fin 6, ∀ j : Fin 14,
      infeasibleTargetRep6 i ≠ feasibleTargetRep6 j) := by
  native_decide

end MQGN6Audit
