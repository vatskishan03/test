import Mathlib.Data.Fin.VecNotation
import Mathlib.Data.List.Chain
import Mathlib.Data.Fintype.Fin
import Mathlib.Tactic.FinCases

/-!
# Pure finite combinatorics for the six-vertex certificate

The matching and target tables and support predicates are shared, unchanged,
by the finite replay and its analytic soundness proof. This layer imports no
complex weights, equation system, or target-orbit proof.
-/

namespace MQGN6Audit

/-- Canonically ordered edges of the fifteen perfect matchings of `K₆`. -/
def matchingEdges6 : Fin 15 → Fin 3 → Fin 6 × Fin 6 :=
  ![
    ![(0, 1), (2, 3), (4, 5)],
    ![(0, 1), (2, 4), (3, 5)],
    ![(0, 1), (2, 5), (3, 4)],
    ![(0, 2), (1, 3), (4, 5)],
    ![(0, 2), (1, 4), (3, 5)],
    ![(0, 2), (1, 5), (3, 4)],
    ![(0, 3), (1, 2), (4, 5)],
    ![(0, 3), (1, 4), (2, 5)],
    ![(0, 3), (1, 5), (2, 4)],
    ![(0, 4), (1, 2), (3, 5)],
    ![(0, 4), (1, 3), (2, 5)],
    ![(0, 4), (1, 5), (2, 3)],
    ![(0, 5), (1, 2), (3, 4)],
    ![(0, 5), (1, 3), (2, 4)],
    ![(0, 5), (1, 4), (2, 3)]
  ]

/-- Partner table for the same fifteen perfect matchings. -/
def matchingMate6 : Fin 15 → Fin 6 → Fin 6 :=
  ![
    ![1, 0, 3, 2, 5, 4],
    ![1, 0, 4, 5, 2, 3],
    ![1, 0, 5, 4, 3, 2],
    ![2, 3, 0, 1, 5, 4],
    ![2, 4, 0, 5, 1, 3],
    ![2, 5, 0, 4, 3, 1],
    ![3, 2, 1, 0, 5, 4],
    ![3, 4, 5, 0, 1, 2],
    ![3, 5, 4, 0, 2, 1],
    ![4, 2, 1, 5, 0, 3],
    ![4, 3, 5, 1, 0, 2],
    ![4, 5, 3, 2, 0, 1],
    ![5, 2, 1, 4, 3, 0],
    ![5, 3, 4, 1, 2, 0],
    ![5, 4, 3, 2, 1, 0]
  ]

lemma matchingEdges6_contains_vertex (m : Fin 15) (v : Fin 6) :
    ∃ k : Fin 3,
      let e := matchingEdges6 m k
      (e.1 = v ∧ e.2 = matchingMate6 m v) ∨
        (e.2 = v ∧ e.1 = matchingMate6 m v) := by
  fin_cases m <;> fin_cases v <;>
    first | exact ⟨0, by decide⟩ | exact ⟨1, by decide⟩ | exact ⟨2, by decide⟩

lemma matchingMate6_ne (m : Fin 15) (v : Fin 6) : matchingMate6 m v ≠ v := by
  fin_cases m <;> fin_cases v <;> decide

lemma matchingMate6_involutive (m : Fin 15) (v : Fin 6) :
    matchingMate6 m (matchingMate6 m v) = v := by
  fin_cases m <;> fin_cases v <;> rfl

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

/-- Pure combinatorial version of the maximal support predicate. -/
def PlanAllowedEntry6 (plan : Fin 6 → Fin 4 → Fin 6)
    (u v : Fin 6) (a b : Fin 4) : Prop :=
  (∀ c, plan u c = v → b = c) ∧
  (∀ c, plan v c = u → a = c)

/-- Entries known nonzero before using any forbidden coefficient. -/
def PlanForcedEntry6 (plan : Fin 6 → Fin 4 → Fin 6)
    (target : Fin 4 → Fin 15) (u v : Fin 6) (a b : Fin 4) : Prop :=
  (∃ c, matchingMate6 (target c) u = v ∧ a = c ∧ b = c) ∨
  (∃ c d, plan u c = v ∧ plan v d = u ∧ a = d ∧ b = c)

/-- Every factor of a matching is allowed by the witness template. -/
def MatchingAllowed6 (plan : Fin 6 → Fin 4 → Fin 6)
    (q : Fin 6 → Fin 4) (m : Fin 15) : Prop :=
  ∀ k : Fin 3,
    let e := matchingEdges6 m k
    PlanAllowedEntry6 plan e.1 e.2 (q e.1) (q e.2)

/-- Every factor of a matching is already known nonzero. -/
def MatchingForced6 (plan : Fin 6 → Fin 4 → Fin 6)
    (target : Fin 4 → Fin 15) (q : Fin 6 → Fin 4) (m : Fin 15) : Prop :=
  ∀ k : Fin 3,
    let e := matchingEdges6 m k
    PlanForcedEntry6 plan target e.1 e.2 (q e.1) (q e.2)

/-- The pinned six-vertex chain-equality predicate, without analytic imports.
Its definitional equality to the formal-conjecture predicate is checked in
`PerfectMatchings6`. -/
def allEqualFinite6 (q : Fin 6 → Fin 4) : Prop :=
  List.IsChain (fun u v => q u = q v) [0, 1, 2, 3, 4, 5]

instance (q : Fin 6 → Fin 4) : Decidable (allEqualFinite6 q) := by
  unfold allEqualFinite6
  infer_instance

end MQGN6Audit
