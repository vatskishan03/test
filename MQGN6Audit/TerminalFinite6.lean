import MQGN6Audit.FiniteDefinitions6

/-!
# Explicit finite terminal certificates

Twenty-eight terminal masks are killed by short support-zero chains. The
independent generator supplies the final coloring/matching and one explicit
zero-witness for every competing monomial. Lean checks those concrete data;
it does not search the ambient 4096-coloring space.
-/

namespace MQGN6Audit

open Function

/-- Locate a canonically ordered physical edge in the fifteen-edge table. -/
def physicalEdgeIndex6 (u v : Fin 6) : Fin 15 :=
  ((List.ofFn fun e : Fin 15 => e).find?
      (fun e => decide (physicalEdge6 e = (u, v)))).getD 0

set_option maxRecDepth 100000 in
theorem physicalEdgeIndex6_spec :
    ∀ u v : Fin 6, u < v → physicalEdge6 (physicalEdgeIndex6 u v) = (u, v) := by
  decide

set_option maxRecDepth 100000 in
theorem physicalEdgeIndex6_roundtrip :
    ∀ e : Fin 15,
      physicalEdgeIndex6 (physicalEdge6 e).1 (physicalEdge6 e).2 = e := by
  decide

/-- Bit-level membership in a terminal mask. -/
def MaskAllowsEntry6 (sid : Fin 29) (e : Fin 15) (a b : Fin 4) : Prop :=
  Nat.testBit (survivorTemplateMask6 sid e) (4 * a.val + b.val) = true

instance instDecidableMaskAllowsEntry6
    (sid : Fin 29) (e : Fin 15) (a b : Fin 4) :
    Decidable (MaskAllowsEntry6 sid e a b) := by
  unfold MaskAllowsEntry6
  infer_instance

/-- A mask entry is nonzero before using any derived zero equation. -/
def MaskForcesEntry6 (target : Fin 4 → Fin 15) (sid : Fin 29)
    (e : Fin 15) (a b : Fin 4) : Prop :=
  (∃ c : Fin 4,
      matchingMate6 (target c) (physicalEdge6 e).1 = (physicalEdge6 e).2 ∧
      a = c ∧ b = c) ∨
  survivorTemplateMask6 sid e = 2 ^ (4 * a.val + b.val)

instance instDecidableMaskForcesEntry6
    (target : Fin 4 → Fin 15) (sid : Fin 29)
    (e : Fin 15) (a b : Fin 4) :
    Decidable (MaskForcesEntry6 target sid e a b) := by
  unfold MaskForcesEntry6
  infer_instance

/-- Matching support evaluated solely from a terminal mask. -/
def MaskMatchingAllowed6 (sid : Fin 29) (q : Fin 6 → Fin 4)
    (m : Fin 15) : Prop :=
  ∀ k : Fin 3,
    let uv := matchingEdges6 m k
    let e := physicalEdgeIndex6 uv.1 uv.2
    MaskAllowsEntry6 sid e (q uv.1) (q uv.2)

instance instDecidableMaskMatchingAllowed6
    (sid : Fin 29) (q : Fin 6 → Fin 4) (m : Fin 15) :
    Decidable (MaskMatchingAllowed6 sid q m) := by
  unfold MaskMatchingAllowed6
  infer_instance

/-- Every matching factor is already known nonzero at the mask level. -/
def MaskMatchingForced6 (target : Fin 4 → Fin 15) (sid : Fin 29)
    (q : Fin 6 → Fin 4) (m : Fin 15) : Prop :=
  ∀ k : Fin 3,
    let uv := matchingEdges6 m k
    let e := physicalEdgeIndex6 uv.1 uv.2
    MaskForcesEntry6 target sid e (q uv.1) (q uv.2)

instance instDecidableMaskMatchingForced6
    (target : Fin 4 → Fin 15) (sid : Fin 29)
    (q : Fin 6 → Fin 4) (m : Fin 15) :
    Decidable (MaskMatchingForced6 target sid q m) := by
  unfold MaskMatchingForced6
  infer_instance

/-- A single edge entry can be derived zero from a forbidden coefficient. -/
def MaskDerivedZero6 (target : Fin 4 → Fin 15) (sid : Fin 29)
    (e : Fin 15) (a b : Fin 4) : Prop :=
  ∃ q : Fin 6 → Fin 4, ∃ m : Fin 15, ∃ k : Fin 3,
    ¬ allEqualFinite6 q ∧
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
    ¬ allEqualFinite6 q ∧
    MaskMatchingAllowed6 sid q m ∧
    MaskMatchingForced6 target sid q m ∧
    ∀ n : Fin 15, n ≠ m → MaskMatchingAllowed6 sid q n →
      ∃ k : Fin 3,
        let uv := matchingEdges6 n k
        let e := physicalEdgeIndex6 uv.1 uv.2
        MaskDerivedZero6 target sid e (q uv.1) (q uv.2)

structure TerminalKillData6 where
  competitor : Fin 15
  finalSlot : Fin 3
  edge : Fin 15
  zeroQ : Fin 4096
  zeroPm : Fin 15
  zeroSlot : Fin 3
  deriving Repr, DecidableEq

/-- Decode a base-four coloring code. -/
def decodeTerminalColoring6 (z : Fin 4096) : Fin 6 → Fin 4 := fun v =>
  ⟨(z.val / 4 ^ v.val) % 4, Nat.mod_lt _ (by decide)⟩

def terminalFinalQ6 : Fin 29 → Fin 4096 := ![2436, 884, 2314, 2330, 2314, 42, 2314, 2330, 2314, 106, 2058, 2394, 2058, 42, 2058, 2394, 2058, 106, 748, 221, 3440, 1632, 1632, 3760, 3568, 1632, 0, 4016, 1632]

def terminalFinalPm6 : Fin 29 → Fin 15 := ![9, 8, 11, 8, 11, 3, 11, 8, 11, 3, 11, 8, 11, 3, 11, 8, 11, 3, 13, 3, 2, 1, 1, 2, 2, 1, 0, 2, 1]

def terminalKills6 : Fin 29 → List TerminalKillData6 := ![
  [⟨0, 0, 0, 4, 0, 0⟩],
  [⟨0, 0, 0, 4, 0, 0⟩],
  [⟨2, 1, 11, 2688, 2, 1⟩],
  [⟨2, 1, 11, 2704, 2, 1⟩, ⟨7, 2, 11, 2704, 2, 1⟩],
  [⟨2, 1, 11, 2688, 2, 1⟩, ⟨10, 2, 11, 2688, 2, 1⟩],
  [⟨2, 1, 11, 672, 2, 1⟩],
  [⟨2, 1, 11, 2688, 2, 1⟩],
  [⟨2, 1, 11, 2704, 2, 1⟩],
  [⟨2, 1, 11, 2688, 2, 1⟩],
  [⟨2, 1, 11, 672, 2, 1⟩],
  [⟨2, 1, 11, 2688, 2, 1⟩],
  [⟨2, 1, 11, 2704, 2, 1⟩, ⟨7, 2, 11, 2704, 2, 1⟩],
  [⟨2, 1, 11, 2688, 2, 1⟩, ⟨10, 2, 11, 2688, 2, 1⟩],
  [⟨2, 1, 11, 672, 2, 1⟩],
  [⟨2, 1, 11, 2688, 2, 1⟩],
  [⟨2, 1, 11, 2704, 2, 1⟩],
  [⟨2, 1, 11, 2688, 2, 1⟩],
  [⟨2, 1, 11, 672, 2, 1⟩],
  [⟨0, 0, 0, 12, 0, 0⟩],
  [⟨2, 2, 12, 3312, 2, 2⟩],
  [⟨4, 0, 1, 1396, 4, 0⟩],
  [⟨5, 2, 12, 2649, 5, 2⟩],
  [⟨6, 1, 5, 162, 6, 1⟩],
  [⟨8, 0, 2, 2728, 8, 0⟩],
  [⟨9, 1, 5, 1907, 9, 1⟩],
  [⟨10, 0, 3, 3836, 10, 0⟩],
  [],
  [⟨13, 0, 4, 3820, 13, 0⟩],
  [⟨14, 0, 4, 1284, 14, 0⟩]
]

structure TerminalKillValid6 (target : Fin 4 → Fin 15) (sid : Fin 29)
    (qFinal : Fin 6 → Fin 4) (K : TerminalKillData6) : Prop where
  finalEdge : matchingEdges6 K.competitor K.finalSlot = physicalEdge6 K.edge
  colorLeft : qFinal (physicalEdge6 K.edge).1 =
    decodeTerminalColoring6 K.zeroQ (physicalEdge6 K.edge).1
  colorRight : qFinal (physicalEdge6 K.edge).2 =
    decodeTerminalColoring6 K.zeroQ (physicalEdge6 K.edge).2
  zeroNonmono : ¬ allEqualFinite6 (decodeTerminalColoring6 K.zeroQ)
  zeroEdge : matchingEdges6 K.zeroPm K.zeroSlot = physicalEdge6 K.edge
  zeroAllowed : MaskMatchingAllowed6 sid (decodeTerminalColoring6 K.zeroQ) K.zeroPm
  zeroUnique : ∀ n : Fin 15,
    MaskMatchingAllowed6 sid (decodeTerminalColoring6 K.zeroQ) n → n = K.zeroPm
  zeroOtherForced : ∀ l : Fin 3, l ≠ K.zeroSlot →
    let uv := matchingEdges6 K.zeroPm l
    let e := physicalEdgeIndex6 uv.1 uv.2
    MaskForcesEntry6 target sid e
      (decodeTerminalColoring6 K.zeroQ uv.1)
      (decodeTerminalColoring6 K.zeroQ uv.2)

instance instDecidableTerminalKillValid6
    (target : Fin 4 → Fin 15) (sid : Fin 29)
    (qFinal : Fin 6 → Fin 4) (K : TerminalKillData6) :
    Decidable (TerminalKillValid6 target sid qFinal K) := by
  apply decidable_of_iff (
    matchingEdges6 K.competitor K.finalSlot = physicalEdge6 K.edge ∧
    qFinal (physicalEdge6 K.edge).1 =
      decodeTerminalColoring6 K.zeroQ (physicalEdge6 K.edge).1 ∧
    qFinal (physicalEdge6 K.edge).2 =
      decodeTerminalColoring6 K.zeroQ (physicalEdge6 K.edge).2 ∧
    ¬ allEqualFinite6 (decodeTerminalColoring6 K.zeroQ) ∧
    matchingEdges6 K.zeroPm K.zeroSlot = physicalEdge6 K.edge ∧
    MaskMatchingAllowed6 sid (decodeTerminalColoring6 K.zeroQ) K.zeroPm ∧
    (∀ n : Fin 15,
      MaskMatchingAllowed6 sid (decodeTerminalColoring6 K.zeroQ) n →
        n = K.zeroPm) ∧
    ∀ l : Fin 3, l ≠ K.zeroSlot →
      let uv := matchingEdges6 K.zeroPm l
      let e := physicalEdgeIndex6 uv.1 uv.2
      MaskForcesEntry6 target sid e
        (decodeTerminalColoring6 K.zeroQ uv.1)
        (decodeTerminalColoring6 K.zeroQ uv.2))
  constructor
  · rintro ⟨hFinalEdge, hColorLeft, hColorRight, hZeroNonmono,
      hZeroEdge, hZeroAllowed, hZeroUnique, hZeroOtherForced⟩
    exact ⟨hFinalEdge, hColorLeft, hColorRight, hZeroNonmono,
      hZeroEdge, hZeroAllowed, hZeroUnique, hZeroOtherForced⟩
  · intro h
    exact ⟨h.finalEdge, h.colorLeft, h.colorRight, h.zeroNonmono,
      h.zeroEdge, h.zeroAllowed, h.zeroUnique, h.zeroOtherForced⟩

/-- The fully explicit finite proposition checked for each support-zero SID. -/
def ExplicitTerminalCertificateValid6 (sid : Fin 29) : Prop :=
  sid.val ≠ 26 →
    let q := decodeTerminalColoring6 (terminalFinalQ6 sid)
    let m := terminalFinalPm6 sid
    ¬ allEqualFinite6 q ∧
    MaskMatchingAllowed6 sid q m ∧
    MaskMatchingForced6 (survivorTarget6 sid) sid q m ∧
    ∀ n : Fin 15, n ≠ m → MaskMatchingAllowed6 sid q n →
      ∃ K ∈ terminalKills6 sid,
        K.competitor = n ∧
        TerminalKillValid6 (survivorTarget6 sid) sid q K

instance instDecidableExplicitTerminalCertificateValid6 (sid : Fin 29) :
    Decidable (ExplicitTerminalCertificateValid6 sid) := by
  unfold ExplicitTerminalCertificateValid6
  infer_instance

theorem explicitTerminalCertificateValid6_0 :
    ExplicitTerminalCertificateValid6 0 := by decide

theorem explicitTerminalCertificateValid6_1 :
    ExplicitTerminalCertificateValid6 1 := by decide

theorem explicitTerminalCertificateValid6_2 :
    ExplicitTerminalCertificateValid6 2 := by decide

theorem explicitTerminalCertificateValid6_3 :
    ExplicitTerminalCertificateValid6 3 := by decide

theorem explicitTerminalCertificateValid6_4 :
    ExplicitTerminalCertificateValid6 4 := by decide

theorem explicitTerminalCertificateValid6_5 :
    ExplicitTerminalCertificateValid6 5 := by decide

theorem explicitTerminalCertificateValid6_6 :
    ExplicitTerminalCertificateValid6 6 := by decide

theorem explicitTerminalCertificateValid6_7 :
    ExplicitTerminalCertificateValid6 7 := by decide

theorem explicitTerminalCertificateValid6_8 :
    ExplicitTerminalCertificateValid6 8 := by decide

theorem explicitTerminalCertificateValid6_9 :
    ExplicitTerminalCertificateValid6 9 := by decide

theorem explicitTerminalCertificateValid6_10 :
    ExplicitTerminalCertificateValid6 10 := by decide

theorem explicitTerminalCertificateValid6_11 :
    ExplicitTerminalCertificateValid6 11 := by decide

theorem explicitTerminalCertificateValid6_12 :
    ExplicitTerminalCertificateValid6 12 := by decide

theorem explicitTerminalCertificateValid6_13 :
    ExplicitTerminalCertificateValid6 13 := by decide

theorem explicitTerminalCertificateValid6_14 :
    ExplicitTerminalCertificateValid6 14 := by decide

theorem explicitTerminalCertificateValid6_15 :
    ExplicitTerminalCertificateValid6 15 := by decide

theorem explicitTerminalCertificateValid6_16 :
    ExplicitTerminalCertificateValid6 16 := by decide

theorem explicitTerminalCertificateValid6_17 :
    ExplicitTerminalCertificateValid6 17 := by decide

theorem explicitTerminalCertificateValid6_18 :
    ExplicitTerminalCertificateValid6 18 := by decide

theorem explicitTerminalCertificateValid6_19 :
    ExplicitTerminalCertificateValid6 19 := by decide

theorem explicitTerminalCertificateValid6_20 :
    ExplicitTerminalCertificateValid6 20 := by decide

theorem explicitTerminalCertificateValid6_21 :
    ExplicitTerminalCertificateValid6 21 := by decide

theorem explicitTerminalCertificateValid6_22 :
    ExplicitTerminalCertificateValid6 22 := by decide

theorem explicitTerminalCertificateValid6_23 :
    ExplicitTerminalCertificateValid6 23 := by decide

theorem explicitTerminalCertificateValid6_24 :
    ExplicitTerminalCertificateValid6 24 := by decide

theorem explicitTerminalCertificateValid6_25 :
    ExplicitTerminalCertificateValid6 25 := by decide

theorem explicitTerminalCertificateValid6_26 :
    ExplicitTerminalCertificateValid6 26 := by decide

theorem explicitTerminalCertificateValid6_27 :
    ExplicitTerminalCertificateValid6 27 := by decide

theorem explicitTerminalCertificateValid6_28 :
    ExplicitTerminalCertificateValid6 28 := by decide

theorem explicitTerminalCertificatesValid6 :
    ∀ sid : Fin 29, ExplicitTerminalCertificateValid6 sid := by
  intro sid
  fin_cases sid
  · exact explicitTerminalCertificateValid6_0
  · exact explicitTerminalCertificateValid6_1
  · exact explicitTerminalCertificateValid6_2
  · exact explicitTerminalCertificateValid6_3
  · exact explicitTerminalCertificateValid6_4
  · exact explicitTerminalCertificateValid6_5
  · exact explicitTerminalCertificateValid6_6
  · exact explicitTerminalCertificateValid6_7
  · exact explicitTerminalCertificateValid6_8
  · exact explicitTerminalCertificateValid6_9
  · exact explicitTerminalCertificateValid6_10
  · exact explicitTerminalCertificateValid6_11
  · exact explicitTerminalCertificateValid6_12
  · exact explicitTerminalCertificateValid6_13
  · exact explicitTerminalCertificateValid6_14
  · exact explicitTerminalCertificateValid6_15
  · exact explicitTerminalCertificateValid6_16
  · exact explicitTerminalCertificateValid6_17
  · exact explicitTerminalCertificateValid6_18
  · exact explicitTerminalCertificateValid6_19
  · exact explicitTerminalCertificateValid6_20
  · exact explicitTerminalCertificateValid6_21
  · exact explicitTerminalCertificateValid6_22
  · exact explicitTerminalCertificateValid6_23
  · exact explicitTerminalCertificateValid6_24
  · exact explicitTerminalCertificateValid6_25
  · exact explicitTerminalCertificateValid6_26
  · exact explicitTerminalCertificateValid6_27
  · exact explicitTerminalCertificateValid6_28

/-- Repackage the explicit finite data into the abstract certificate consumed
by the algebraic soundness theorem. -/
theorem supportZeroTerminalCertificates6 :
    ∀ sid : Fin 29, sid.val ≠ 26 →
      MaskSupportZeroContradiction6 (survivorTarget6 sid) sid := by
  intro sid hsid
  have h := explicitTerminalCertificatesValid6 sid hsid
  let q := decodeTerminalColoring6 (terminalFinalQ6 sid)
  let m := terminalFinalPm6 sid
  refine ⟨q, m, h.1, h.2.1, h.2.2.1, ?_⟩
  intro n hnm hnallowed
  obtain ⟨K, hKmem, hKn, hK⟩ := h.2.2.2 n hnm hnallowed
  subst n
  refine ⟨K.finalSlot, ?_⟩
  dsimp
  rw [hK.finalEdge, physicalEdgeIndex6_roundtrip]
  refine ⟨decodeTerminalColoring6 K.zeroQ, K.zeroPm, K.zeroSlot,
    hK.zeroNonmono, hK.zeroEdge, ?_, ?_, hK.zeroAllowed,
    hK.zeroUnique, hK.zeroOtherForced⟩
  · exact hK.colorLeft.symm
  · exact hK.colorRight.symm

end MQGN6Audit
