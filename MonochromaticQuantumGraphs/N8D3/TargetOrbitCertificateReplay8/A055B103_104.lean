import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A054B102_104

/-!
# Bounded certificate replay for `a = 55`, `b = 103..104`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a055_b103 (c : Fin 105) :
    (103 : Fin 105) ≤ c → targetOrbitCertificateAt8 (55 : Fin 105) (103 : Fin 105) c := by
  have hfast :
      (103 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (55 : Fin 105) (103 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (55 : Fin 105) (103 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a055_b104 (c : Fin 105) :
    (104 : Fin 105) ≤ c → targetOrbitCertificateAt8 (55 : Fin 105) (104 : Fin 105) c := by
  have hfast :
      (104 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (55 : Fin 105) (104 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (55 : Fin 105) (104 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
