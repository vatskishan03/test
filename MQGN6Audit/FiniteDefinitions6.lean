import MQGN6Audit.TargetOrbits6
import MQGN6Audit.UniqueObstruction

/-!
# Finite definitions for the `K₆` support classification

This file contains only the finite types and audited terminal masks.  The
compressed certificate replay lives in `UniqueDagCheckFast6`; no expensive search
is performed while compiling these definitions.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function

/-- The canonical order of the fifteen physical edges. -/
def physicalEdge6 : Fin 15 → Fin 6 × Fin 6 := ![
  (0, 1), (0, 2), (0, 3), (0, 4), (0, 5),
  (1, 2), (1, 3), (1, 4), (1, 5),
  (2, 3), (2, 4), (2, 5),
  (3, 4), (3, 5), (4, 5)
]

/-- The independently audited twenty-nine terminal support masks. -/
def survivorTemplateMask6 : Fin 29 → Fin 15 → Nat := ![
  ![65535, 1024, 16, 2, 32768, 16, 32768, 1024, 2, 65535, 32768, 16, 16, 1024, 65535],
  ![65535, 1024, 2, 16, 32768, 2, 32768, 1024, 16, 65535, 32768, 2, 2, 1024, 65535],
  ![65535, 1024, 256, 512, 32768, 32768, 4096, 8192, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 256, 8192, 32768, 32768, 4096, 512, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 4096, 512, 32768, 32768, 256, 8192, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 4096, 8192, 32768, 32768, 256, 512, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 256, 512, 32768, 32768, 8192, 4096, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 256, 8192, 32768, 32768, 8192, 256, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 4096, 512, 32768, 32768, 512, 4096, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 4096, 8192, 32768, 32768, 512, 256, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 512, 256, 32768, 32768, 4096, 8192, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 512, 4096, 32768, 32768, 4096, 512, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 8192, 256, 32768, 32768, 256, 8192, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 8192, 4096, 32768, 32768, 256, 512, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 512, 256, 32768, 32768, 8192, 4096, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 512, 4096, 32768, 32768, 8192, 256, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 8192, 256, 32768, 32768, 512, 4096, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 1024, 8192, 4096, 32768, 32768, 512, 256, 1024, 1, 32, 65535, 65535, 32, 1],
  ![65535, 32, 1024, 32768, 1, 1, 32768, 32, 1024, 65535, 1024, 32768, 1, 32, 65535],
  ![65535, 32, 1024, 32768, 4096, 4096, 32768, 32, 1024, 1, 1024, 65535, 65535, 32, 1],
  ![1, 65535, 1024, 32768, 32, 32, 32768, 65535, 1024, 1, 1024, 32768, 32, 65535, 1],
  ![1, 65535, 1024, 32768, 512, 64, 32768, 32, 65535, 1, 1024, 32768, 65535, 32, 1],
  ![1, 32, 65535, 32768, 4, 65535, 32768, 32, 1024, 1, 1024, 32768, 4, 32, 65535],
  ![1, 32, 65535, 32768, 1024, 1024, 32768, 32, 65535, 1, 65535, 32768, 1024, 32, 1],
  ![1, 32, 1024, 65535, 128, 65535, 32768, 32, 1024, 1, 1024, 32768, 8192, 65535, 1],
  ![1, 32, 1024, 65535, 32768, 32768, 65535, 32, 1024, 1, 1024, 65535, 32768, 32, 1],
  ![1, 32, 1024, 32768, 65535, 65535, 32768, 32, 1024, 1, 1024, 32768, 65535, 32, 1],
  ![1, 32, 1024, 32768, 65535, 2048, 65535, 32, 1024, 1, 65535, 32768, 2048, 32, 1],
  ![1, 32, 1024, 32768, 65535, 2, 32768, 65535, 1024, 65535, 1024, 32768, 16, 32, 1]
]

/-- Test one bit of a terminal support mask. -/
def survivorAllows6 (sid : Fin 29) (e : Fin 15) (a b : Fin 4) : Prop :=
  (survivorTemplateMask6 sid e / 2 ^ (4 * a.val + b.val)) % 2 = 1

/-- The target orbit associated with each terminal template. -/
def survivorTarget6 (sid : Fin 29) : Fin 4 → Fin 15 :=
  if sid.val < 2 then feasibleTargetRep6 6
  else if sid.val < 18 then feasibleTargetRep6 12
  else feasibleTargetRep6 13

/-- Local witness plans used in the finite enumeration.  The first condition
records that every witness is an actual neighbour of `v`; this is part of
`AxisWitness6` and was also enforced by both independent C++ enumerators. -/
def LocalPlanCompatible6 (target : Fin 4 → Fin 15) (v : Fin 6)
    (p : Fin 4 → Fin 6) : Prop :=
  (∀ c, p c ≠ v) ∧
  Function.Injective p ∧
    ∀ c d, p d = matchingMate6 (target c) v → d = c

abbrev LocalPlanOption6 (target : Fin 4 → Fin 15) (v : Fin 6) :=
  {p : Fin 4 → Fin 6 // LocalPlanCompatible6 target v p}

abbrev FeasiblePlanChoice6 (ci : Fin 14) :=
  ∀ v : Fin 6, LocalPlanOption6 (feasibleTargetRep6 ci) v

/-- Forget the subtype proofs and recover the six witness maps. -/
def planOfChoice6 {ci : Fin 14} (choice : FeasiblePlanChoice6 ci) :
    Fin 6 → Fin 4 → Fin 6 :=
  fun v => (choice v).1

/-- Equality of a maximal witness template with one terminal mask. -/
def PlanHasSurvivorTemplate6 (plan : Fin 6 → Fin 4 → Fin 6)
    (sid : Fin 29) : Prop :=
  ∀ e : Fin 15, ∀ a b : Fin 4,
    PlanAllowedEntry6 plan (physicalEdge6 e).1 (physicalEdge6 e).2 a b ↔
      survivorAllows6 sid e a b

/-- The dominant obstruction found by the finite scan. -/
def HasUniqueForcedMatching6 (target : Fin 4 → Fin 15)
    (plan : Fin 6 → Fin 4 → Fin 6) : Prop :=
  ∃ q : Fin 6 → Fin 4, ∃ m : Fin 15,
    ¬ allEqual q ∧
    MatchingForced6 plan target q m ∧
    MatchingAllowed6 plan q m ∧
    ∀ n : Fin 15, MatchingAllowed6 plan q n → n = m

set_option maxRecDepth 100000 in
set_option maxHeartbeats 10000000 in
/-- The six listed infeasible target orbits fail already at one vertex. -/
theorem infeasibleTargetRep6_no_local_plan :
    ∀ i : Fin 6, ∃ v : Fin 6,
      ¬ ∃ p : Fin 4 → Fin 6,
        LocalPlanCompatible6 (infeasibleTargetRep6 i) v p := by
  intro i
  fin_cases i
  · refine ⟨2, ?_⟩
    simp only [LocalPlanCompatible6]
    decide +kernel
  · refine ⟨3, ?_⟩
    simp only [LocalPlanCompatible6]
    decide +kernel
  · refine ⟨0, ?_⟩
    simp only [LocalPlanCompatible6]
    decide +kernel
  · refine ⟨0, ?_⟩
    simp only [LocalPlanCompatible6]
    decide +kernel
  · refine ⟨0, ?_⟩
    simp only [LocalPlanCompatible6]
    decide +kernel
  · refine ⟨0, ?_⟩
    simp only [LocalPlanCompatible6]
    decide +kernel

end MQGN6Audit
