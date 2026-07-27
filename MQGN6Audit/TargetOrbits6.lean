import MQGN6Audit.VertexRelabel
import MQGN6Audit.TargetOrbitBalancedData6
import Mathlib.GroupTheory.Perm.Fin

/-!
# The twenty-one target-matching orbits

The selected target family is a multiset of four of the fifteen perfect
matchings.  After sorting the colors and relabeling the six vertices, there are
exactly twenty-one possibilities.  The classification below replays one
explicit vertex/color certificate for each of the 3,060 monotone targets.
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

/- ### Fixed mixed-radix certificate decoders -/

private def mixedPerm0 : Equiv.Perm (Fin 0) :=
  Equiv.refl _

private def mixedPerm1 (code : Nat) : Equiv.Perm (Fin 1) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 1 code, mixedPerm0)

private def mixedPerm2 (code : Nat) : Equiv.Perm (Fin 2) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 2 code, mixedPerm1 (code / 2))

private def mixedPerm3 (code : Nat) : Equiv.Perm (Fin 3) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 3 code, mixedPerm2 (code / 3))

private def mixedPerm4 (code : Nat) : Equiv.Perm (Fin 4) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 4 code, mixedPerm3 (code / 4))

private def mixedPerm5 (code : Nat) : Equiv.Perm (Fin 5) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 5 code, mixedPerm4 (code / 5))

private def mixedPerm6 (code : Nat) : Equiv.Perm (Fin 6) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 6 code, mixedPerm5 (code / 6))

/-- Decode the certificate's mixed-radix vertex-permutation code. -/
private def vertexPermOfCode6 (code : Fin 720) : Equiv.Perm (Fin 6) :=
  mixedPerm6 code

/-- Decode the certificate's mixed-radix color-permutation code. -/
private def colorPermOfCode6 (code : Fin 24) : Equiv.Perm (Fin 4) :=
  mixedPerm4 code

/-- Packed layout:
`vertexCode + 720 * (colorCode + 24 * representativeCode)`. -/
private def packedVertexCode6 (packed : Nat) : Fin 720 :=
  Fin.ofNat 720 packed

private def packedColorCode6 (packed : Nat) : Fin 24 :=
  Fin.ofNat 24 (packed / 720)

private def packedRepresentativeCode6 (packed : Nat) : Nat :=
  packed / (720 * 24)

private def packedVertexPerm6 (packed : Nat) : Equiv.Perm (Fin 6) :=
  vertexPermOfCode6 (packedVertexCode6 packed)

private def packedColorPerm6 (packed : Nat) : Equiv.Perm (Fin 4) :=
  colorPermOfCode6 (packedColorCode6 packed)

/- ### Monotone-target rank and representative decoding -/

/-- Lexicographic rank in
`itertools.combinations_with_replacement(range(15), 4)`. -/
private def targetLexRankNat6 (a b c d : Fin 15) : Nat :=
  (Nat.choose 18 4 - Nat.choose (18 - a.val) 4) +
  (Nat.choose (17 - a.val) 3 - Nat.choose (17 - b.val) 3) +
  (Nat.choose (16 - b.val) 2 - Nat.choose (16 - c.val) 2) +
  (d.val - c.val)

private def targetLexRank6 (a b c d : Fin 15) : Fin 3060 :=
  Fin.ofNat 3060 (targetLexRankNat6 a b c d)

private def targetTuple6 (a b c d : Fin 15) : Fin 4 → Fin 15 :=
  ![a, b, c, d]

private def targetLexRankOfTuple6
    (target : Fin 4 → Fin 15) : Fin 3060 :=
  targetLexRank6 (target 0) (target 1) (target 2) (target 3)

private theorem target_eq_targetTuple6 (target : Fin 4 → Fin 15) :
    target = targetTuple6 (target 0) (target 1) (target 2) (target 3) := by
  funext i
  fin_cases i <;> rfl

/-- The twenty-one orbit classes encoded in one packed certificate word. -/
private inductive TargetOrbitTag6 where
  | identical
  | infeasible (index : Fin 6)
  | feasible (index : Fin 14)
  deriving DecidableEq

private def targetOrbitTagOfNat6 (code : Nat) : TargetOrbitTag6 :=
  if code = 0 then
    .identical
  else if h : code < 7 then
    .infeasible ⟨code - 1, by omega⟩
  else if h : code < 21 then
    .feasible ⟨code - 7, by omega⟩
  else
    .identical

private def packedTargetOrbitTag6 (packed : Nat) : TargetOrbitTag6 :=
  targetOrbitTagOfNat6 (packedRepresentativeCode6 packed)

private def targetOrbitRepresentative6 :
    TargetOrbitTag6 → Fin 4 → Fin 15
  | .identical => identicalTargetRep6
  | .infeasible i => infeasibleTargetRep6 i
  | .feasible i => feasibleTargetRep6 i

private theorem targetOrbitRepresentative6_monotone :
    ∀ tag : TargetOrbitTag6, Monotone (targetOrbitRepresentative6 tag) := by
  intro tag
  rcases tag with _ | i | i
  · decide
  · fin_cases i <;> decide
  · fin_cases i <;> decide

private theorem sortedTarget6_eq_of_comp_perm_eq
    (target representative : Fin 4 → Fin 15)
    (σ : Equiv.Perm (Fin 4))
    (hcert : target ∘ σ = representative)
    (hmono : Monotone representative) :
    sortedTarget6 target = representative := by
  have hperm : Monotone (target ∘ σ) := hcert.symm ▸ hmono
  exact
    (Tuple.unique_monotone hperm (Tuple.monotone_sort target)).symm.trans
      hcert

private theorem targetOrbitCasesOfPackedRow6
    (target : Fin 4 → Fin 15)
    (π : Equiv.Perm (Fin 6))
    (σ : Equiv.Perm (Fin 4))
    (tag : TargetOrbitTag6)
    (hcert :
      relabelTargetVertices6 π target ∘ σ =
        targetOrbitRepresentative6 tag) :
    sortedTarget6 (relabelTargetVertices6 π target) = identicalTargetRep6 ∨
    (∃ i : Fin 6,
      sortedTarget6 (relabelTargetVertices6 π target) = infeasibleTargetRep6 i) ∨
    (∃ i : Fin 14,
      sortedTarget6 (relabelTargetVertices6 π target) = feasibleTargetRep6 i) := by
  have heq :
      sortedTarget6 (relabelTargetVertices6 π target) =
        targetOrbitRepresentative6 tag :=
    sortedTarget6_eq_of_comp_perm_eq
      (relabelTargetVertices6 π target)
      (targetOrbitRepresentative6 tag) σ hcert
      (targetOrbitRepresentative6_monotone tag)
  rcases tag with _ | i | i
  · exact Or.inl heq
  · exact Or.inr (Or.inl ⟨i, heq⟩)
  · exact Or.inr (Or.inr ⟨i, heq⟩)

private theorem targetOrbitCasesOfPackedNat6
    (target : Fin 4 → Fin 15)
    (packed : Nat)
    (hcert :
      relabelTargetVertices6 (packedVertexPerm6 packed) target ∘
          packedColorPerm6 packed =
        targetOrbitRepresentative6 (packedTargetOrbitTag6 packed)) :
    sortedTarget6
          (relabelTargetVertices6 (packedVertexPerm6 packed) target) =
        identicalTargetRep6 ∨
    (∃ i : Fin 6,
      sortedTarget6
          (relabelTargetVertices6 (packedVertexPerm6 packed) target) =
        infeasibleTargetRep6 i) ∨
    (∃ i : Fin 14,
      sortedTarget6
          (relabelTargetVertices6 (packedVertexPerm6 packed) target) =
        feasibleTargetRep6 i) := by
  exact targetOrbitCasesOfPackedRow6 target
    (packedVertexPerm6 packed) (packedColorPerm6 packed)
    (packedTargetOrbitTag6 packed) hcert

/- ### Sharded kernel replay -/

set_option maxRecDepth 100000 in
set_option maxHeartbeats 100000000 in
theorem orbitPackedCertificate6Balanced_entriesValid :
    ∀ a b : Fin 15, ∀ c d : Fin 15,
      a ≤ b → b ≤ c → c ≤ d →
        let packed := orbitPackedCertificate6Balanced (targetLexRank6 a b c d)
        relabelTargetVertices6 (packedVertexPerm6 packed)
              (targetTuple6 a b c d) ∘
            packedColorPerm6 packed =
          targetOrbitRepresentative6 (packedTargetOrbitTag6 packed) := by
  intro a b
  fin_cases a <;> fin_cases b <;> decide +kernel

/-- Closed finite verification of the complete orbit list. -/
theorem targetOrbitTrichotomy6 :
    ∀ target : Fin 4 → Fin 15, Monotone target →
      ∃ π : Equiv.Perm (Fin 6),
        sortedTarget6 (relabelTargetVertices6 π target) = identicalTargetRep6 ∨
        (∃ i : Fin 6,
          sortedTarget6 (relabelTargetVertices6 π target) = infeasibleTargetRep6 i) ∨
        (∃ i : Fin 14,
          sortedTarget6 (relabelTargetVertices6 π target) = feasibleTargetRep6 i) := by
  intro target htarget
  have hab : target 0 ≤ target 1 := htarget (by decide)
  have hbc : target 1 ≤ target 2 := htarget (by decide)
  have hcd : target 2 ≤ target 3 := htarget (by decide)
  let packed :=
    orbitPackedCertificate6Balanced (targetLexRankOfTuple6 target)
  have hcert := orbitPackedCertificate6Balanced_entriesValid
    (target 0) (target 1) (target 2) (target 3) hab hbc hcd
  have htuple := target_eq_targetTuple6 target
  change
    relabelTargetVertices6 (packedVertexPerm6 packed)
          (targetTuple6 (target 0) (target 1) (target 2) (target 3)) ∘
        packedColorPerm6 packed =
      targetOrbitRepresentative6 (packedTargetOrbitTag6 packed) at hcert
  rw [← htuple] at hcert
  exact ⟨packedVertexPerm6 packed,
    targetOrbitCasesOfPackedNat6 target packed hcert⟩

/-- The twenty-one displayed representatives are pairwise distinct. -/
theorem targetOrbitReps6_distinct :
    (∀ i : Fin 6, infeasibleTargetRep6 i ≠ identicalTargetRep6) ∧
    (∀ i : Fin 14, feasibleTargetRep6 i ≠ identicalTargetRep6) ∧
    (∀ i j : Fin 6, infeasibleTargetRep6 i = infeasibleTargetRep6 j → i = j) ∧
    (∀ i j : Fin 14, feasibleTargetRep6 i = feasibleTargetRep6 j → i = j) ∧
    (∀ i : Fin 6, ∀ j : Fin 14,
      infeasibleTargetRep6 i ≠ feasibleTargetRep6 j) := by
  decide +kernel

end MQGN6Audit
