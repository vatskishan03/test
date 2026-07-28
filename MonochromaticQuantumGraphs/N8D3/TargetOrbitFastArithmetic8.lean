import MonochromaticQuantumGraphs.N8D3.MixedPermApplyFast8
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateRank8

/-!
# Arithmetic-fast N8/D3 orbit-certificate replay

The decidable propositions in this module use `vertexPermApplyFast8`.  Bridge
theorems immediately convert successful checks back to the pre-existing
`matchingRelabels8` and `targetOrbitCertificateValid8` propositions.
-/

namespace MonochromaticQuantumGraphs.N8D3

def matchingRelabelsApplyFast8
    (code : Fin 40320) (source target : Fin 105) : Prop :=
  ∀ v : Fin 8,
    matchingMate8 target (vertexPermApplyFast8 code v) =
      vertexPermApplyFast8 code (matchingMate8 source v)

instance instDecidableMatchingRelabelsApplyFast8
    (code : Fin 40320) (source target : Fin 105) :
    Decidable (matchingRelabelsApplyFast8 code source target) := by
  unfold matchingRelabelsApplyFast8
  infer_instance

def targetOrbitCertificateApplyFastValid8
    (target : Fin 3 → Fin 105) (packed : Nat) : Prop :=
  ∀ color : Fin 3,
    matchingRelabelsApplyFast8 (packedVertexCode8 packed)
      (target (packedColorPerm8 packed color))
      (targetOrbitRep8 (packedRepresentativeCode8 packed) color)

instance instDecidableTargetOrbitCertificateApplyFastValid8
    (target : Fin 3 → Fin 105) (packed : Nat) :
    Decidable (targetOrbitCertificateApplyFastValid8 target packed) := by
  unfold targetOrbitCertificateApplyFastValid8
  infer_instance

theorem matchingRelabels8_of_applyFast
    (code : Fin 40320) (source target : Fin 105)
    (hfast : matchingRelabelsApplyFast8 code source target) :
    matchingRelabels8 (vertexPermOfCode8 code) source target := by
  unfold matchingRelabelsApplyFast8 at hfast
  unfold matchingRelabels8
  intro v
  simpa only [vertexPermApplyFast8_eq_vertexPermOfCode8] using hfast v

theorem targetOrbitCertificateValid8_of_applyFast
    (target : Fin 3 → Fin 105) (packed : Nat)
    (hfast : targetOrbitCertificateApplyFastValid8 target packed) :
    targetOrbitCertificateValid8 target packed := by
  unfold targetOrbitCertificateApplyFastValid8 at hfast
  unfold targetOrbitCertificateValid8
  intro color
  simpa only [packedVertexPerm8] using
    matchingRelabels8_of_applyFast
      (packedVertexCode8 packed)
      (target (packedColorPerm8 packed color))
      (targetOrbitRep8 (packedRepresentativeCode8 packed) color)
      (hfast color)

def targetOrbitCertificateApplyFastAt8
    (a b c : Fin 105) : Prop :=
  let packed := orbitPackedCertificate8 (targetLexRank8 a b c)
  targetOrbitCertificateApplyFastValid8 (targetTuple8 a b c) packed

instance instDecidableTargetOrbitCertificateApplyFastAt8
    (a b c : Fin 105) :
    Decidable (targetOrbitCertificateApplyFastAt8 a b c) := by
  unfold targetOrbitCertificateApplyFastAt8
  infer_instance

theorem targetOrbitCertificateAt8_of_applyFast
    (a b c : Fin 105)
    (hfast : targetOrbitCertificateApplyFastAt8 a b c) :
    targetOrbitCertificateAt8 a b c := by
  unfold targetOrbitCertificateApplyFastAt8 at hfast
  unfold targetOrbitCertificateAt8
  exact targetOrbitCertificateValid8_of_applyFast
    (targetTuple8 a b c)
    (orbitPackedCertificate8 (targetLexRank8 a b c))
    hfast

end MonochromaticQuantumGraphs.N8D3
