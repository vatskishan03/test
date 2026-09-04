import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A050B090_097

/-!
# Bounded certificate replay for `a = 51`, `b = 91..98`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a051_b091 (c : Fin 105) :
    (91 : Fin 105) ≤ c → targetOrbitCertificateAt8 (51 : Fin 105) (91 : Fin 105) c := by
  have hfast :
      (91 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (51 : Fin 105) (91 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (51 : Fin 105) (91 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a051_b092 (c : Fin 105) :
    (92 : Fin 105) ≤ c → targetOrbitCertificateAt8 (51 : Fin 105) (92 : Fin 105) c := by
  have hfast :
      (92 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (51 : Fin 105) (92 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (51 : Fin 105) (92 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a051_b093 (c : Fin 105) :
    (93 : Fin 105) ≤ c → targetOrbitCertificateAt8 (51 : Fin 105) (93 : Fin 105) c := by
  have hfast :
      (93 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (51 : Fin 105) (93 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (51 : Fin 105) (93 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a051_b094 (c : Fin 105) :
    (94 : Fin 105) ≤ c → targetOrbitCertificateAt8 (51 : Fin 105) (94 : Fin 105) c := by
  have hfast :
      (94 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (51 : Fin 105) (94 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (51 : Fin 105) (94 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a051_b095 (c : Fin 105) :
    (95 : Fin 105) ≤ c → targetOrbitCertificateAt8 (51 : Fin 105) (95 : Fin 105) c := by
  have hfast :
      (95 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (51 : Fin 105) (95 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (51 : Fin 105) (95 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a051_b096 (c : Fin 105) :
    (96 : Fin 105) ≤ c → targetOrbitCertificateAt8 (51 : Fin 105) (96 : Fin 105) c := by
  have hfast :
      (96 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (51 : Fin 105) (96 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (51 : Fin 105) (96 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a051_b097 (c : Fin 105) :
    (97 : Fin 105) ≤ c → targetOrbitCertificateAt8 (51 : Fin 105) (97 : Fin 105) c := by
  have hfast :
      (97 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (51 : Fin 105) (97 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (51 : Fin 105) (97 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a051_b098 (c : Fin 105) :
    (98 : Fin 105) ≤ c → targetOrbitCertificateAt8 (51 : Fin 105) (98 : Fin 105) c := by
  have hfast :
      (98 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (51 : Fin 105) (98 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (51 : Fin 105) (98 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
