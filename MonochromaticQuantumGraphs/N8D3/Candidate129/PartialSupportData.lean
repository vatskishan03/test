import MonochromaticQuantumGraphs.N8D3.Candidate129.SupportChecks
import Mathlib.Tactic.FinCases

/-! Generated partial-support projection; every finite claim is checked in Lean. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

def coreNonzero (g : Fin 252) : Bool :=
  ([0, 1, 6, 7, 9, 11, 15, 17, 18, 19, 20, 24, 25, 26, 27, 90, 91, 92, 93, 94, 95, 100, 101, 103, 104, 108, 117, 118, 119, 123, 124, 125, 135, 136, 137, 141, 142, 143, 155, 161, 164, 165, 167, 169, 170, 171, 172, 173, 193, 198, 201, 202, 203, 204, 205, 206, 208, 211, 212, 215, 216, 220, 222, 223, 224, 234, 235, 236, 238, 241, 246, 247, 248, 249, 250] : List Nat).contains g.val

def coreZero (g : Fin 252) : Bool :=
  ([28, 29, 34, 35, 36, 37, 38, 42, 46, 47, 52, 53, 54, 55, 56, 60, 61, 63, 65, 66, 68, 72, 73, 74, 75, 76, 77, 81, 82, 83, 84, 85, 86, 109, 111, 112, 126, 127, 128, 133, 134, 145, 146, 151, 153, 154, 159, 160, 174, 175, 176, 177, 178, 179, 181, 184, 185, 187, 188, 189, 190, 192, 194, 195, 196, 197, 214, 226, 227, 229, 232] : List Nat).contains g.val

def coreFree (g : Fin 252) : Bool := !coreNonzero g && !coreZero g

theorem core_classification_counts :
    ((Finset.univ : Finset (Fin 252)).filter (fun g => coreNonzero g = true)).card = 75 ∧
    ((Finset.univ : Finset (Fin 252)).filter (fun g => coreZero g = true)).card = 71 ∧
    ((Finset.univ : Finset (Fin 252)).filter (fun g => coreFree g = true)).card = 106 := by
  decide

def matchingCoordinate (q : Fin 8 → Fin 3) (m : Fin 105) (k : Fin 4) : Fin 252 :=
  let e := matchingPairs m k
  coordinate e.1 e.2 (q e.1) (q e.2)

/-- A matching is killed by a prescribed zero, or uses only fixed nonzero entries. -/
def CoreCompatible (q : Fin 8 → Fin 3) : Prop :=
  ∀ m : Fin 105, (∃ k : Fin 4, coreZero (matchingCoordinate q m k) = true) ∨
    (∀ k : Fin 4, coreNonzero (matchingCoordinate q m k) = true)

instance (q : Fin 8 → Fin 3) : Decidable (CoreCompatible q) := by
  unfold CoreCompatible
  infer_instance

theorem coreNonzero_supported (g : Fin 252) (h : coreNonzero g = true) :
    (localIndex g).isSome = true := by
  revert g
  decide

theorem coreZero_unsupported (g : Fin 252) (h : coreZero g = true) :
    localIndex g = none := by
  revert g
  decide

theorem matchingVariables_none_of_lookup_none (q : Fin 8 → Fin 3) (m : Fin 105)
    (k : Fin 4) (h : localIndex (matchingCoordinate q m k) = none) :
    matchingVariables q m = none := by
  fin_cases k <;> simp_all [matchingVariables, matchingCoordinate]

#print axioms coreNonzero_supported
#print axioms coreZero_unsupported

end MonochromaticQuantumGraphs.N8D3.Candidate129
