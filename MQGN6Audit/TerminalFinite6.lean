import MQGN6Audit.FiniteClassification6

/-!
# Finite terminal certificates

For twenty-eight of the twenty-nine terminal masks, a broad entry is first
forced to zero by a unique forbidden monomial whose other factors are already
forced nonzero.  A final forbidden coloring then has one forced nonzero
matching while every competitor contains one of those derived-zero entries.
The theorem in this file asks Lean to rediscover those finite certificates from
the masks themselves.
-/

namespace MQGN6Audit

open MonochromaticQuantumGraph
open Function

/-- Locate a canonically ordered physical edge in the fifteen-edge table. -/
def physicalEdgeIndex6 (u v : Fin 6) : Fin 15 :=
  ((List.ofFn fun e : Fin 15 => e).find?
      (fun e => decide (physicalEdge6 e = (u, v)))).getD 0

set_option maxRecDepth 100000 in
theorem physicalEdgeIndex6_spec :
    ∀ u v : Fin 6, u < v → physicalEdge6 (physicalEdgeIndex6 u v) = (u, v) := by
  native_decide

/-- The target orbit associated with each terminal template. -/
def survivorTarget6 (sid : Fin 29) : Fin 4 → Fin 15 :=
  if sid.val < 2 then feasibleTargetRep6 6
  else if sid.val < 18 then feasibleTargetRep6 12
  else feasibleTargetRep6 13

/-- Bit-level membership in a terminal mask. -/
def MaskAllowsEntry6 (sid : Fin 29) (e : Fin 15) (a b : Fin 4) : Prop :=
  Nat.testBit (survivorTemplateMask6 sid e) (4 * a.val + b.val) = true

/-- A mask entry is nonzero before using any derived zero equation: it belongs
to a selected target matching, or the maximal support on that edge is a
singleton. -/
def MaskForcesEntry6 (target : Fin 4 → Fin 15) (sid : Fin 29)
    (e : Fin 15) (a b : Fin 4) : Prop :=
  (∃ c : Fin 4,
      matchingMate6 (target c) (physicalEdge6 e).1 = (physicalEdge6 e).2 ∧
      a = c ∧ b = c) ∨
  survivorTemplateMask6 sid e = 2 ^ (4 * a.val + b.val)

/-- Matching support evaluated solely from a terminal mask. -/
def MaskMatchingAllowed6 (sid : Fin 29) (q : Fin 6 → Fin 4)
    (m : Fin 15) : Prop :=
  ∀ k : Fin 3,
    let uv := matchingEdges6 m k
    let e := physicalEdgeIndex6 uv.1 uv.2
    MaskAllowsEntry6 sid e (q uv.1) (q uv.2)

/-- Every matching factor is already known nonzero at the mask level. -/
def MaskMatchingForced6 (target : Fin 4 → Fin 15) (sid : Fin 29)
    (q : Fin 6 → Fin 4) (m : Fin 15) : Prop :=
  ∀ k : Fin 3,
    let uv := matchingEdges6 m k
    let e := physicalEdgeIndex6 uv.1 uv.2
    MaskForcesEntry6 target sid e (q uv.1) (q uv.2)

/-- A single edge entry can be derived zero from a forbidden coloring with one
allowed matching, provided every other factor of that matching is forced. -/
def MaskDerivedZero6 (target : Fin 4 → Fin 15) (sid : Fin 29)
    (e : Fin 15) (a b : Fin 4) : Prop :=
  ∃ q : Fin 6 → Fin 4, ∃ m : Fin 15, ∃ k : Fin 3,
    ¬ allEqual q ∧
    matchingEdges6 m k = physicalEdge6 e ∧
    q (physicalEdge6 e).1 = a ∧ q (physicalEdge6 e).2 = b ∧
    MaskMatchingAllowed6 sid q m ∧
    (∀ n : Fin 15, MaskMatchingAllowed6 sid q n → n = m) ∧
    (∀ l : Fin 3, l ≠ k →
      let uv := matchingEdges6 m l
      let f := physicalEdgeIndex6 uv.1 uv.2
      MaskForcesEntry6 target sid f (q uv.1) (q uv.2))

/-- A complete support-zero-chain terminal certificate. -/
def MaskSupportZeroContradiction6 (target : Fin 4 → Fin 15)
    (sid : Fin 29) : Prop :=
  ∃ q : Fin 6 → Fin 4, ∃ m : Fin 15,
    ¬ allEqual q ∧
    MaskMatchingAllowed6 sid q m ∧
    MaskMatchingForced6 target sid q m ∧
    ∀ n : Fin 15, n ≠ m → MaskMatchingAllowed6 sid q n →
      ∃ k : Fin 3,
        let uv := matchingEdges6 n k
        let e := physicalEdgeIndex6 uv.1 uv.2
        MaskDerivedZero6 target sid e (q uv.1) (q uv.2)

/-- Lean independently reconstructs support-zero-chain certificates for every
terminal template except SID 26, the Cartesian-block case. -/
set_option maxRecDepth 1000000 in
set_option maxHeartbeats 1000000000 in
theorem supportZeroTerminalCertificates6 :
    ∀ sid : Fin 29, sid.val ≠ 26 →
      MaskSupportZeroContradiction6 (survivorTarget6 sid) sid := by
  native_decide

end MQGN6Audit
