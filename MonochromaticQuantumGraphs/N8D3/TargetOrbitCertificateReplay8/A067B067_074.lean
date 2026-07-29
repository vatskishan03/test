import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A065B089_096

/-!
# Bounded certificate replay for `a = 67`, `b = 67..74`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a067_b067 (c : Fin 105) :
    (67 : Fin 105) ≤ c → targetOrbitCertificateAt8 (67 : Fin 105) (67 : Fin 105) c := by
  have hfast :
      (67 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (67 : Fin 105) (67 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (67 : Fin 105) (67 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a067_b068 (c : Fin 105) :
    (68 : Fin 105) ≤ c → targetOrbitCertificateAt8 (67 : Fin 105) (68 : Fin 105) c := by
  have hfast :
      (68 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (67 : Fin 105) (68 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (67 : Fin 105) (68 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a067_b069 (c : Fin 105) :
    (69 : Fin 105) ≤ c → targetOrbitCertificateAt8 (67 : Fin 105) (69 : Fin 105) c := by
  have hfast :
      (69 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (67 : Fin 105) (69 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (67 : Fin 105) (69 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a067_b070 (c : Fin 105) :
    (70 : Fin 105) ≤ c → targetOrbitCertificateAt8 (67 : Fin 105) (70 : Fin 105) c := by
  have hfast :
      (70 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (67 : Fin 105) (70 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (67 : Fin 105) (70 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a067_b071 (c : Fin 105) :
    (71 : Fin 105) ≤ c → targetOrbitCertificateAt8 (67 : Fin 105) (71 : Fin 105) c := by
  have hfast :
      (71 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (67 : Fin 105) (71 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (67 : Fin 105) (71 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a067_b072 (c : Fin 105) :
    (72 : Fin 105) ≤ c → targetOrbitCertificateAt8 (67 : Fin 105) (72 : Fin 105) c := by
  have hfast :
      (72 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (67 : Fin 105) (72 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (67 : Fin 105) (72 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a067_b073 (c : Fin 105) :
    (73 : Fin 105) ≤ c → targetOrbitCertificateAt8 (67 : Fin 105) (73 : Fin 105) c := by
  have hfast :
      (73 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (67 : Fin 105) (73 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (67 : Fin 105) (73 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a067_b074 (c : Fin 105) :
    (74 : Fin 105) ≤ c → targetOrbitCertificateAt8 (67 : Fin 105) (74 : Fin 105) c := by
  have hfast :
      (74 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (67 : Fin 105) (74 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (67 : Fin 105) (74 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
