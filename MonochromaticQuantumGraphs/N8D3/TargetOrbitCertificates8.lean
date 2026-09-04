import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A099
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A100
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A101
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A102
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A103
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A098

/-!
# Kernel-checked target-orbit coverage for `(N,D) = (8,3)`

The leaf modules replay all 198,485 sorted certificate rows.  This
module dispatches on the first matching index and assembles each valid
row into an explicit `S₈ × S₃` witness for one of the 31 representatives.
-/

namespace MonochromaticQuantumGraphs.N8D3

/-- Every sorted triple has a kernel-replayed row in the packed table. -/
theorem targetOrbitCertificateAt8_sorted
    (a b c : Fin 105) (hab : a ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 a b c := by
  fin_cases a
  · exact targetOrbitCertificateAt8_a000 b c hab hbc
  · exact targetOrbitCertificateAt8_a001 b c hab hbc
  · exact targetOrbitCertificateAt8_a002 b c hab hbc
  · exact targetOrbitCertificateAt8_a003 b c hab hbc
  · exact targetOrbitCertificateAt8_a004 b c hab hbc
  · exact targetOrbitCertificateAt8_a005 b c hab hbc
  · exact targetOrbitCertificateAt8_a006 b c hab hbc
  · exact targetOrbitCertificateAt8_a007 b c hab hbc
  · exact targetOrbitCertificateAt8_a008 b c hab hbc
  · exact targetOrbitCertificateAt8_a009 b c hab hbc
  · exact targetOrbitCertificateAt8_a010 b c hab hbc
  · exact targetOrbitCertificateAt8_a011 b c hab hbc
  · exact targetOrbitCertificateAt8_a012 b c hab hbc
  · exact targetOrbitCertificateAt8_a013 b c hab hbc
  · exact targetOrbitCertificateAt8_a014 b c hab hbc
  · exact targetOrbitCertificateAt8_a015 b c hab hbc
  · exact targetOrbitCertificateAt8_a016 b c hab hbc
  · exact targetOrbitCertificateAt8_a017 b c hab hbc
  · exact targetOrbitCertificateAt8_a018 b c hab hbc
  · exact targetOrbitCertificateAt8_a019 b c hab hbc
  · exact targetOrbitCertificateAt8_a020 b c hab hbc
  · exact targetOrbitCertificateAt8_a021 b c hab hbc
  · exact targetOrbitCertificateAt8_a022 b c hab hbc
  · exact targetOrbitCertificateAt8_a023 b c hab hbc
  · exact targetOrbitCertificateAt8_a024 b c hab hbc
  · exact targetOrbitCertificateAt8_a025 b c hab hbc
  · exact targetOrbitCertificateAt8_a026 b c hab hbc
  · exact targetOrbitCertificateAt8_a027 b c hab hbc
  · exact targetOrbitCertificateAt8_a028 b c hab hbc
  · exact targetOrbitCertificateAt8_a029 b c hab hbc
  · exact targetOrbitCertificateAt8_a030 b c hab hbc
  · exact targetOrbitCertificateAt8_a031 b c hab hbc
  · exact targetOrbitCertificateAt8_a032 b c hab hbc
  · exact targetOrbitCertificateAt8_a033 b c hab hbc
  · exact targetOrbitCertificateAt8_a034 b c hab hbc
  · exact targetOrbitCertificateAt8_a035 b c hab hbc
  · exact targetOrbitCertificateAt8_a036 b c hab hbc
  · exact targetOrbitCertificateAt8_a037 b c hab hbc
  · exact targetOrbitCertificateAt8_a038 b c hab hbc
  · exact targetOrbitCertificateAt8_a039 b c hab hbc
  · exact targetOrbitCertificateAt8_a040 b c hab hbc
  · exact targetOrbitCertificateAt8_a041 b c hab hbc
  · exact targetOrbitCertificateAt8_a042 b c hab hbc
  · exact targetOrbitCertificateAt8_a043 b c hab hbc
  · exact targetOrbitCertificateAt8_a044 b c hab hbc
  · exact targetOrbitCertificateAt8_a045 b c hab hbc
  · exact targetOrbitCertificateAt8_a046 b c hab hbc
  · exact targetOrbitCertificateAt8_a047 b c hab hbc
  · exact targetOrbitCertificateAt8_a048 b c hab hbc
  · exact targetOrbitCertificateAt8_a049 b c hab hbc
  · exact targetOrbitCertificateAt8_a050 b c hab hbc
  · exact targetOrbitCertificateAt8_a051 b c hab hbc
  · exact targetOrbitCertificateAt8_a052 b c hab hbc
  · exact targetOrbitCertificateAt8_a053 b c hab hbc
  · exact targetOrbitCertificateAt8_a054 b c hab hbc
  · exact targetOrbitCertificateAt8_a055 b c hab hbc
  · exact targetOrbitCertificateAt8_a056 b c hab hbc
  · exact targetOrbitCertificateAt8_a057 b c hab hbc
  · exact targetOrbitCertificateAt8_a058 b c hab hbc
  · exact targetOrbitCertificateAt8_a059 b c hab hbc
  · exact targetOrbitCertificateAt8_a060 b c hab hbc
  · exact targetOrbitCertificateAt8_a061 b c hab hbc
  · exact targetOrbitCertificateAt8_a062 b c hab hbc
  · exact targetOrbitCertificateAt8_a063 b c hab hbc
  · exact targetOrbitCertificateAt8_a064 b c hab hbc
  · exact targetOrbitCertificateAt8_a065 b c hab hbc
  · exact targetOrbitCertificateAt8_a066 b c hab hbc
  · exact targetOrbitCertificateAt8_a067 b c hab hbc
  · exact targetOrbitCertificateAt8_a068 b c hab hbc
  · exact targetOrbitCertificateAt8_a069 b c hab hbc
  · exact targetOrbitCertificateAt8_a070 b c hab hbc
  · exact targetOrbitCertificateAt8_a071 b c hab hbc
  · exact targetOrbitCertificateAt8_a072 b c hab hbc
  · exact targetOrbitCertificateAt8_a073 b c hab hbc
  · exact targetOrbitCertificateAt8_a074 b c hab hbc
  · exact targetOrbitCertificateAt8_a075 b c hab hbc
  · exact targetOrbitCertificateAt8_a076 b c hab hbc
  · exact targetOrbitCertificateAt8_a077 b c hab hbc
  · exact targetOrbitCertificateAt8_a078 b c hab hbc
  · exact targetOrbitCertificateAt8_a079 b c hab hbc
  · exact targetOrbitCertificateAt8_a080 b c hab hbc
  · exact targetOrbitCertificateAt8_a081 b c hab hbc
  · exact targetOrbitCertificateAt8_a082 b c hab hbc
  · exact targetOrbitCertificateAt8_a083 b c hab hbc
  · exact targetOrbitCertificateAt8_a084 b c hab hbc
  · exact targetOrbitCertificateAt8_a085 b c hab hbc
  · exact targetOrbitCertificateAt8_a086 b c hab hbc
  · exact targetOrbitCertificateAt8_a087 b c hab hbc
  · exact targetOrbitCertificateAt8_a088 b c hab hbc
  · exact targetOrbitCertificateAt8_a089 b c hab hbc
  · exact targetOrbitCertificateAt8_a090 b c hab hbc
  · exact targetOrbitCertificateAt8_a091 b c hab hbc
  · exact targetOrbitCertificateAt8_a092 b c hab hbc
  · exact targetOrbitCertificateAt8_a093 b c hab hbc
  · exact targetOrbitCertificateAt8_a094 b c hab hbc
  · exact targetOrbitCertificateAt8_a095 b c hab hbc
  · exact targetOrbitCertificateAt8_a096 b c hab hbc
  · exact targetOrbitCertificateAt8_a097 b c hab hbc
  · exact targetOrbitCertificateAt8_a098 b c hab hbc
  · exact targetOrbitCertificateAt8_a099 b c hab hbc
  · exact targetOrbitCertificateAt8_a100 b c hab hbc
  · exact targetOrbitCertificateAt8_a101 b c hab hbc
  · exact targetOrbitCertificateAt8_a102 b c hab hbc
  · exact targetOrbitCertificateAt8_a103 b c hab hbc
  · exact targetOrbitCertificateAt8_a104 b c hab hbc

/-- Every monotone target triple is equivalent under one vertex
permutation and one global color permutation to one of the 31
entries in `targetOrbitRep8`. -/
theorem targetOrbitRep8_covers
    (target : Fin 3 → Fin 105) (hsorted : Monotone target) :
    ∃ representative : Fin 31,
    ∃ vertexPerm : Equiv.Perm (Fin 8),
    ∃ colorPerm : Equiv.Perm (Fin 3),
      ∀ color : Fin 3,
        matchingRelabels8 vertexPerm
          (target (colorPerm color))
          (targetOrbitRep8 representative color) := by
  change TargetOrbitWitness8 target
  have hab : target 0 ≤ target 1 := hsorted (by decide)
  have hbc : target 1 ≤ target 2 := hsorted (by decide)
  rw [target_eq_targetTuple8 target]
  exact targetOrbitWitness8_of_certificate
    (targetTuple8 (target 0) (target 1) (target 2))
    (orbitPackedCertificate8
      (targetLexRank8 (target 0) (target 1) (target 2)))
    (targetOrbitCertificateAt8_sorted
      (target 0) (target 1) (target 2) hab hbc)

end MonochromaticQuantumGraphs.N8D3
