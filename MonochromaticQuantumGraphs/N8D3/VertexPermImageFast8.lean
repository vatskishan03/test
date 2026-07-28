import MonochromaticQuantumGraphs.N8D3.VertexPermImageData8

/-!
# Fast decidable replay predicates for N8/D3 orbit certificates

These predicates evaluate a packed image table instead of repeatedly
reducing the recursive `Equiv.Perm` decoder.  The bridge theorems below
return to the existing trusted propositions before any witness is used.
-/

namespace MonochromaticQuantumGraphs.N8D3

/-- Pointwise partner-map conjugacy using the fast image table. -/
def matchingRelabelsFast8
    (code : Fin 40320) (source target : Fin 105) : Prop :=
  ∀ v : Fin 8,
    matchingMate8 target (vertexPermImage8 code v) =
      vertexPermImage8 code (matchingMate8 source v)

instance instDecidableMatchingRelabelsFast8
    (code : Fin 40320) (source target : Fin 105) :
    Decidable (matchingRelabelsFast8 code source target) := by
  unfold matchingRelabelsFast8
  infer_instance

/-- A fast check of exactly the same packed orbit-certificate row. -/
def targetOrbitCertificateFastValid8
    (target : Fin 3 → Fin 105) (packed : Nat) : Prop :=
  ∀ color : Fin 3,
    matchingRelabelsFast8 (packedVertexCode8 packed)
      (target (packedColorPerm8 packed color))
      (targetOrbitRep8 (packedRepresentativeCode8 packed) color)

instance instDecidableTargetOrbitCertificateFastValid8
    (target : Fin 3 → Fin 105) (packed : Nat) :
    Decidable (targetOrbitCertificateFastValid8 target packed) := by
  unfold targetOrbitCertificateFastValid8
  infer_instance

/-- Fast pointwise conjugacy implies the original exact relation. -/
theorem matchingRelabels8_of_fast
    (code : Fin 40320) (source target : Fin 105)
    (hfast : matchingRelabelsFast8 code source target) :
    matchingRelabels8 (vertexPermOfCode8 code) source target := by
  unfold matchingRelabelsFast8 at hfast
  unfold matchingRelabels8
  intro v
  simpa only [vertexPermImage8_eq_vertexPermOfCode8] using hfast v

/-- A fast-valid row establishes the existing trusted certificate
proposition; no theorem downstream needs to mention the fast predicate. -/
theorem targetOrbitCertificateValid8_of_fast
    (target : Fin 3 → Fin 105) (packed : Nat)
    (hfast : targetOrbitCertificateFastValid8 target packed) :
    targetOrbitCertificateValid8 target packed := by
  unfold targetOrbitCertificateFastValid8 at hfast
  unfold targetOrbitCertificateValid8
  intro color
  simpa only [packedVertexPerm8] using
    matchingRelabels8_of_fast
      (packedVertexCode8 packed)
      (target (packedColorPerm8 packed color))
      (targetOrbitRep8 (packedRepresentativeCode8 packed) color)
      (hfast color)

/-- Fast replay can be assembled into the pre-existing witness type. -/
theorem targetOrbitWitness8_of_fast_certificate
    (target : Fin 3 → Fin 105) (packed : Nat)
    (hfast : targetOrbitCertificateFastValid8 target packed) :
    TargetOrbitWitness8 target :=
  targetOrbitWitness8_of_certificate target packed
    (targetOrbitCertificateValid8_of_fast target packed hfast)

end MonochromaticQuantumGraphs.N8D3
