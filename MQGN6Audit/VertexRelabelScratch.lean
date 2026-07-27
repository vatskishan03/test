import MQGN6Audit.ColorRelabel

namespace MQGN6Audit

open MonochromaticQuantumGraph

/-- Partner map obtained by transporting a tabulated matching through `π`. -/
def permutedMate6 (π : Equiv.Perm (Fin 6)) (m : Fin 15) (v : Fin 6) : Fin 6 :=
  π (matchingMate6 m (π.symm v))

/-- Locate the transported matching in the fifteen-element table. -/
def matchingAction6 (π : Equiv.Perm (Fin 6)) (m : Fin 15) : Fin 15 :=
  let transported : List (Fin 6) := List.ofFn (permutedMate6 π m)
  ((List.ofFn fun n : Fin 15 => n).find?
      (fun n => decide (List.ofFn (matchingMate6 n) = transported))).getD 0

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
