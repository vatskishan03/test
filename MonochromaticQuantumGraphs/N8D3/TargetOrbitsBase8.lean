import MonochromaticQuantumGraphs.N8D3.GeneratedData
import Mathlib.GroupTheory.Perm.Fin

/-!
# Trusted target-orbit certificate primitives for `(N,D) = (8,3)`

The generated certificate shards use fixed mixed-radix encodings of a vertex
permutation, a global color permutation, and one of the 31 displayed target
representatives.  This module contains only the small decoder and the exact
proposition checked by every certificate row.
-/

namespace MonochromaticQuantumGraphs.N8D3

/- ### Fixed mixed-radix permutation decoders -/

def mixedPerm0 : Equiv.Perm (Fin 0) :=
  Equiv.refl _

def mixedPerm1 (code : Nat) : Equiv.Perm (Fin 1) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 1 code, mixedPerm0)

def mixedPerm2 (code : Nat) : Equiv.Perm (Fin 2) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 2 code, mixedPerm1 (code / 2))

def mixedPerm3 (code : Nat) : Equiv.Perm (Fin 3) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 3 code, mixedPerm2 (code / 3))

def mixedPerm4 (code : Nat) : Equiv.Perm (Fin 4) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 4 code, mixedPerm3 (code / 4))

def mixedPerm5 (code : Nat) : Equiv.Perm (Fin 5) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 5 code, mixedPerm4 (code / 5))

def mixedPerm6 (code : Nat) : Equiv.Perm (Fin 6) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 6 code, mixedPerm5 (code / 6))

def mixedPerm7 (code : Nat) : Equiv.Perm (Fin 7) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 7 code, mixedPerm6 (code / 7))

def mixedPerm8 (code : Nat) : Equiv.Perm (Fin 8) :=
  Equiv.Perm.decomposeFin.symm
    (Fin.ofNat 8 code, mixedPerm7 (code / 8))

/-- Decode the certificate's mixed-radix vertex-permutation code. -/
def vertexPermOfCode8 (code : Fin 40320) : Equiv.Perm (Fin 8) :=
  mixedPerm8 code

/-- Decode the certificate's mixed-radix color-permutation code. -/
def colorPermOfCode8 (code : Fin 6) : Equiv.Perm (Fin 3) :=
  mixedPerm3 code

/- ### Packed certificate layout -/

/-- Packed layout:
`vertexCode + 40320 * (colorCode + 6 * representativeCode)`. -/
def packedVertexCode8 (packed : Nat) : Fin 40320 :=
  Fin.ofNat 40320 packed

def packedColorCode8 (packed : Nat) : Fin 6 :=
  Fin.ofNat 6 (packed / 40320)

def packedRepresentativeCode8 (packed : Nat) : Fin 31 :=
  Fin.ofNat 31 (packed / (40320 * 6))

def packedVertexPerm8 (packed : Nat) : Equiv.Perm (Fin 8) :=
  vertexPermOfCode8 (packedVertexCode8 packed)

def packedColorPerm8 (packed : Nat) : Equiv.Perm (Fin 3) :=
  colorPermOfCode8 (packedColorCode8 packed)

/- ### Exact symmetry relation -/

/-- `matchingRelabels8 π source target` means that applying the vertex
permutation `π` to every edge of `source` gives `target`.  Partner-map
conjugacy states this without relying on an untrusted matching-index action. -/
def matchingRelabels8
    (π : Equiv.Perm (Fin 8)) (source target : Fin 105) : Prop :=
  ∀ v : Fin 8,
    matchingMate8 target (π v) = π (matchingMate8 source v)

instance instDecidableMatchingRelabels8
    (π : Equiv.Perm (Fin 8)) (source target : Fin 105) :
    Decidable (matchingRelabels8 π source target) := by
  unfold matchingRelabels8
  infer_instance

/-- The three matching indices stored as an explicit target tuple. -/
def targetTuple8 (a b c : Fin 105) : Fin 3 → Fin 105 :=
  ![a, b, c]

theorem target_eq_targetTuple8 (target : Fin 3 → Fin 105) :
    target = targetTuple8 (target 0) (target 1) (target 2) := by
  funext i
  fin_cases i <;> rfl

/-- A concrete `S₈ × S₃` witness sending a target triple to one of the 31
displayed representatives. -/
def TargetOrbitWitness8 (target : Fin 3 → Fin 105) : Prop :=
  ∃ representative : Fin 31,
  ∃ vertexPerm : Equiv.Perm (Fin 8),
  ∃ colorPerm : Equiv.Perm (Fin 3),
    ∀ color : Fin 3,
      matchingRelabels8 vertexPerm
        (target (colorPerm color))
        (targetOrbitRep8 representative color)

/-- The exact finite proposition replayed for one packed certificate row. -/
def targetOrbitCertificateValid8
    (target : Fin 3 → Fin 105) (packed : Nat) : Prop :=
  ∀ color : Fin 3,
    matchingRelabels8 (packedVertexPerm8 packed)
      (target (packedColorPerm8 packed color))
      (targetOrbitRep8 (packedRepresentativeCode8 packed) color)

instance instDecidableTargetOrbitCertificateValid8
    (target : Fin 3 → Fin 105) (packed : Nat) :
    Decidable (targetOrbitCertificateValid8 target packed) := by
  unfold targetOrbitCertificateValid8
  infer_instance

theorem targetOrbitWitness8_of_certificate
    (target : Fin 3 → Fin 105) (packed : Nat)
    (hvalid : targetOrbitCertificateValid8 target packed) :
    TargetOrbitWitness8 target :=
  ⟨packedRepresentativeCode8 packed, packedVertexPerm8 packed,
    packedColorPerm8 packed, hvalid⟩

end MonochromaticQuantumGraphs.N8D3
