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
theorem matchingAction6_spec :
    ∀ (π : Equiv.Perm (Fin 6)) (m : Fin 15) (v : Fin 6),
      matchingMate6 (matchingAction6 π m) v = permutedMate6 π m v := by
  native_decide

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem matchingAction6_inverse :
    ∀ (π : Equiv.Perm (Fin 6)) (m : Fin 15),
      matchingAction6 π.symm (matchingAction6 π m) = m := by
  native_decide

end MQGN6Audit
