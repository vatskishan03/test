import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A017B041_048

/-!
# Bounded certificate replay for `a = 17`, `b = 49..56`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a017_b049 (c : Fin 105) :
    (49 : Fin 105) ≤ c → targetOrbitCertificateAt8 (17 : Fin 105) (49 : Fin 105) c := by
  have hfast :
      (49 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (17 : Fin 105) (49 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (17 : Fin 105) (49 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a017_b050 (c : Fin 105) :
    (50 : Fin 105) ≤ c → targetOrbitCertificateAt8 (17 : Fin 105) (50 : Fin 105) c := by
  have hfast :
      (50 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (17 : Fin 105) (50 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (17 : Fin 105) (50 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a017_b051 (c : Fin 105) :
    (51 : Fin 105) ≤ c → targetOrbitCertificateAt8 (17 : Fin 105) (51 : Fin 105) c := by
  have hfast :
      (51 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (17 : Fin 105) (51 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (17 : Fin 105) (51 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a017_b052 (c : Fin 105) :
    (52 : Fin 105) ≤ c → targetOrbitCertificateAt8 (17 : Fin 105) (52 : Fin 105) c := by
  have hfast :
      (52 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (17 : Fin 105) (52 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (17 : Fin 105) (52 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a017_b053 (c : Fin 105) :
    (53 : Fin 105) ≤ c → targetOrbitCertificateAt8 (17 : Fin 105) (53 : Fin 105) c := by
  have hfast :
      (53 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (17 : Fin 105) (53 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (17 : Fin 105) (53 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a017_b054 (c : Fin 105) :
    (54 : Fin 105) ≤ c → targetOrbitCertificateAt8 (17 : Fin 105) (54 : Fin 105) c := by
  have hfast :
      (54 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (17 : Fin 105) (54 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (17 : Fin 105) (54 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a017_b055 (c : Fin 105) :
    (55 : Fin 105) ≤ c → targetOrbitCertificateAt8 (17 : Fin 105) (55 : Fin 105) c := by
  have hfast :
      (55 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (17 : Fin 105) (55 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (17 : Fin 105) (55 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a017_b056 (c : Fin 105) :
    (56 : Fin 105) ≤ c → targetOrbitCertificateAt8 (17 : Fin 105) (56 : Fin 105) c := by
  have hfast :
      (56 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (17 : Fin 105) (56 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (17 : Fin 105) (56 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
