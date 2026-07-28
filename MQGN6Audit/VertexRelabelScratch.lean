import MQGN6Audit.ColorRelabel

namespace MQGN6Audit

open MonochromaticQuantumGraph

/-- Partner map obtained by transporting a tabulated matching through `π`. -/
def permutedMate6 (π : Equiv.Perm (Fin 6)) (m : Fin 15) (v : Fin 6) : Fin 6 :=
  π (matchingMate6 m (π.symm v))

/-- Direct index table for a perfect matching, keyed by the mate of vertex zero
and then by the mate of the least remaining vertex. -/
def matchingIndex6 : Fin 6 → Fin 6 → Fin 15 := ![
  ![0, 0, 0, 0, 0, 0],
  ![0, 0, 0, 0, 1, 2],
  ![0, 0, 0, 3, 4, 5],
  ![0, 0, 6, 0, 7, 8],
  ![0, 0, 9, 10, 0, 11],
  ![0, 0, 12, 13, 14, 0]
]

/-- Locate the transported matching in the fifteen-element table in constant
time.  The certification theorems below establish that this is exactly the
transported partner map. -/
def matchingAction6 (π : Equiv.Perm (Fin 6)) (m : Fin 15) : Fin 15 :=
  let transported := permutedMate6 π m
  let mateZero := transported 0
  let nextMate := if mateZero = 1 then transported 2 else transported 1
  matchingIndex6 mateZero nextMate

local instance (priority := 2000) directPermFintypeScratch6 :
    Fintype (Equiv.Perm (Fin 6)) :=
  fintypePerm

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
private lemma matchingIndex6_of_involution
    (f : Fin 6 → Fin 6) (hinv : Function.Involutive f)
    (hne : ∀ v, f v ≠ v) :
    ∀ v,
      matchingMate6
          (matchingIndex6 (f 0) (if f 0 = 1 then f 2 else f 1)) v =
        f v := by
  have hi0 := hinv (0 : Fin 6)
  have hi1 := hinv (1 : Fin 6)
  have hi2 := hinv (2 : Fin 6)
  have hi3 := hinv (3 : Fin 6)
  have hi4 := hinv (4 : Fin 6)
  have hi5 := hinv (5 : Fin 6)
  have hn0 := hne (0 : Fin 6)
  have hn1 := hne (1 : Fin 6)
  have hn2 := hne (2 : Fin 6)
  have hn3 := hne (3 : Fin 6)
  have hn4 := hne (4 : Fin 6)
  have hn5 := hne (5 : Fin 6)
  intro v
  generalize h0 : f 0 = a0 at *
  generalize h1 : f 1 = a1 at *
  generalize h2 : f 2 = a2 at *
  generalize h3 : f 3 = a3 at *
  generalize h4 : f 4 = a4 at *
  generalize h5 : f 5 = a5 at *
  fin_cases a0 <;> simp_all [matchingIndex6, matchingMate6]
  all_goals fin_cases a1 <;> simp_all [matchingIndex6, matchingMate6]
  all_goals fin_cases a2 <;> simp_all [matchingIndex6, matchingMate6]
  all_goals fin_cases a3 <;> simp_all [matchingIndex6, matchingMate6]
  all_goals fin_cases a4 <;> simp_all [matchingIndex6, matchingMate6]
  all_goals fin_cases a5 <;> simp_all [matchingIndex6, matchingMate6]
  all_goals fin_cases v <;> simp_all [matchingIndex6, matchingMate6]

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem matchingAction6_spec :
    ∀ (π : Equiv.Perm (Fin 6)) (m : Fin 15) (v : Fin 6),
      matchingMate6 (matchingAction6 π m) v = permutedMate6 π m v := by
  intro π m v
  apply matchingIndex6_of_involution
  · intro u
    simp [permutedMate6, matchingMate6_involutive]
  · intro u h
    apply matchingMate6_ne m (π.symm u)
    apply π.injective
    simpa [permutedMate6] using h

set_option maxHeartbeats 1000000 in
private lemma matchingMate6_ext {m n : Fin 15}
    (h : ∀ v : Fin 6, matchingMate6 m v = matchingMate6 n v) : m = n := by
  decide +kernel +revert

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem matchingAction6_inverse :
    ∀ (π : Equiv.Perm (Fin 6)) (m : Fin 15),
      matchingAction6 π.symm (matchingAction6 π m) = m := by
  intro π m
  apply matchingMate6_ext
  intro v
  calc
    matchingMate6 (matchingAction6 π.symm (matchingAction6 π m)) v =
        permutedMate6 π.symm (matchingAction6 π m) v :=
      matchingAction6_spec π.symm (matchingAction6 π m) v
    _ = π.symm (matchingMate6 (matchingAction6 π m) (π v)) := by
      simp [permutedMate6]
    _ = π.symm (permutedMate6 π m (π v)) := by
      rw [matchingAction6_spec]
    _ = matchingMate6 m v := by
      simp [permutedMate6]

end MQGN6Audit
