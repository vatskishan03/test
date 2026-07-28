import MonochromaticQuantumGraphs.N8D3.TargetOrbitFastLookup8

/-!
# Canonical-endpoint replay for matching relabelings

A perfect matching has four undirected edges.  It is enough to check the
endpoint `v` satisfying `v < matchingMate8 source v` on each edge.
Fixed-point-freeness and involutivity recover the reverse endpoint, so the
result is exactly the existing eight-vertex `matchingRelabels8` relation.
-/

namespace MonochromaticQuantumGraphs.N8D3

def matchingRelabelsCanonicalLookup8
    (vertexImage : Fin 8 → Fin 8) (source target : Fin 105) : Prop :=
  ∀ v : Fin 8,
    v < matchingMateLookup8 source v →
      matchingMateLookup8 target (vertexImage v) =
        vertexImage (matchingMateLookup8 source v)

instance instDecidableMatchingRelabelsCanonicalLookup8
    (vertexImage : Fin 8 → Fin 8) (source target : Fin 105) :
    Decidable (matchingRelabelsCanonicalLookup8 vertexImage source target) := by
  unfold matchingRelabelsCanonicalLookup8
  infer_instance

theorem matchingRelabels8_of_canonical
    (π : Equiv.Perm (Fin 8)) (source target : Fin 105)
    (hcanonical :
      ∀ v : Fin 8,
        v < matchingMate8 source v →
          matchingMate8 target (π v) =
            π (matchingMate8 source v)) :
    matchingRelabels8 π source target := by
  unfold matchingRelabels8
  intro v
  by_cases hv : v < matchingMate8 source v
  · exact hcanonical v hv
  · have hmate_le : matchingMate8 source v ≤ v := le_of_not_gt hv
    have hmate_lt : matchingMate8 source v < v :=
      lt_of_le_of_ne hmate_le (matchingMate8_ne source v)
    have hreverse :
        matchingMate8 target (π (matchingMate8 source v)) = π v := by
      simpa only [matchingMate8_involutive] using
        hcanonical (matchingMate8 source v) (by
          simpa only [matchingMate8_involutive] using hmate_lt)
    have hcongr := congrArg (matchingMate8 target) hreverse
    simpa only [matchingMate8_involutive] using hcongr.symm

theorem matchingRelabels8_of_canonicalLookup
    (π : Equiv.Perm (Fin 8)) (vertexImage : Fin 8 → Fin 8)
    (source target : Fin 105)
    (hvertex : ∀ v, vertexImage v = π v)
    (hcanonical :
      matchingRelabelsCanonicalLookup8 vertexImage source target) :
    matchingRelabels8 π source target := by
  apply matchingRelabels8_of_canonical
  intro v hv
  have hvLookup : v < matchingMateLookup8 source v := by
    simpa only [matchingMateLookup8_eq_matchingMate8] using hv
  simpa only [matchingMateLookup8_eq_matchingMate8, hvertex] using
    hcanonical v hvLookup

end MonochromaticQuantumGraphs.N8D3
