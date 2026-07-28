import MonochromaticQuantumGraphs.N8D3.MatchingRelabelsCanonical8
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateRank8
import MonochromaticQuantumGraphs.N8D3.VertexPermImageData8

/-!
# Canonical fast replay of the N8/D3 target-orbit certificates

The decidable predicate uses only the kernel-checked compact tables and four
canonical endpoints of each perfect matching.  Its bridge returns immediately
to the original `targetOrbitCertificateValid8` proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

def targetOrbitCertificateCanonicalFastValid8
    (target : Fin 3 → Fin 105) (packed : Nat) : Prop :=
  ∀ color : Fin 3,
    matchingRelabelsCanonicalLookup8
      (vertexPermImage8 (packedVertexCode8 packed))
      (target (colorPermLookup8 (packedColorCode8 packed) color))
      (targetOrbitRepLookup8 (packedRepresentativeCode8 packed) color)

instance instDecidableTargetOrbitCertificateCanonicalFastValid8
    (target : Fin 3 → Fin 105) (packed : Nat) :
    Decidable (targetOrbitCertificateCanonicalFastValid8 target packed) := by
  unfold targetOrbitCertificateCanonicalFastValid8
  infer_instance

theorem targetOrbitCertificateValid8_of_canonicalFast
    (target : Fin 3 → Fin 105) (packed : Nat)
    (hfast : targetOrbitCertificateCanonicalFastValid8 target packed) :
    targetOrbitCertificateValid8 target packed := by
  unfold targetOrbitCertificateCanonicalFastValid8 at hfast
  unfold targetOrbitCertificateValid8
  intro color
  apply matchingRelabels8_of_canonicalLookup
    (packedVertexPerm8 packed)
    (vertexPermImage8 (packedVertexCode8 packed))
    (target (packedColorPerm8 packed color))
    (targetOrbitRep8 (packedRepresentativeCode8 packed) color)
  · intro v
    simpa only [packedVertexPerm8] using
      vertexPermImage8_eq_vertexPermOfCode8 (packedVertexCode8 packed) v
  · simpa only [
      colorPermLookup8_eq_colorPermOfCode8,
      targetOrbitRepLookup8_eq_targetOrbitRep8,
      packedColorPerm8
    ] using hfast color

def targetOrbitCertificateCanonicalFastAt8
    (a b c : Fin 105) : Prop :=
  let packed := orbitPackedCertificate8 (targetLexRank8 a b c)
  targetOrbitCertificateCanonicalFastValid8 (targetTuple8 a b c) packed

instance instDecidableTargetOrbitCertificateCanonicalFastAt8
    (a b c : Fin 105) :
    Decidable (targetOrbitCertificateCanonicalFastAt8 a b c) := by
  unfold targetOrbitCertificateCanonicalFastAt8
  infer_instance

theorem targetOrbitCertificateAt8_of_canonicalFast
    (a b c : Fin 105)
    (hfast : targetOrbitCertificateCanonicalFastAt8 a b c) :
    targetOrbitCertificateAt8 a b c := by
  unfold targetOrbitCertificateCanonicalFastAt8 at hfast
  unfold targetOrbitCertificateAt8
  exact targetOrbitCertificateValid8_of_canonicalFast
    (targetTuple8 a b c)
    (orbitPackedCertificate8 (targetLexRank8 a b c))
    hfast

end MonochromaticQuantumGraphs.N8D3
