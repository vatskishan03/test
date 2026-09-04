import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A025B097_104

/-!
# Bounded certificate replay for `a = 26`, `b = 26..33`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a026_b026 (c : Fin 105) :
    (26 : Fin 105) ≤ c → targetOrbitCertificateAt8 (26 : Fin 105) (26 : Fin 105) c := by
  have hfast :
      (26 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (26 : Fin 105) (26 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (26 : Fin 105) (26 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a026_b027 (c : Fin 105) :
    (27 : Fin 105) ≤ c → targetOrbitCertificateAt8 (26 : Fin 105) (27 : Fin 105) c := by
  have hfast :
      (27 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (26 : Fin 105) (27 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (26 : Fin 105) (27 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a026_b028 (c : Fin 105) :
    (28 : Fin 105) ≤ c → targetOrbitCertificateAt8 (26 : Fin 105) (28 : Fin 105) c := by
  have hfast :
      (28 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (26 : Fin 105) (28 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (26 : Fin 105) (28 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a026_b029 (c : Fin 105) :
    (29 : Fin 105) ≤ c → targetOrbitCertificateAt8 (26 : Fin 105) (29 : Fin 105) c := by
  have hfast :
      (29 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (26 : Fin 105) (29 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (26 : Fin 105) (29 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a026_b030 (c : Fin 105) :
    (30 : Fin 105) ≤ c → targetOrbitCertificateAt8 (26 : Fin 105) (30 : Fin 105) c := by
  have hfast :
      (30 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (26 : Fin 105) (30 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (26 : Fin 105) (30 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a026_b031 (c : Fin 105) :
    (31 : Fin 105) ≤ c → targetOrbitCertificateAt8 (26 : Fin 105) (31 : Fin 105) c := by
  have hfast :
      (31 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (26 : Fin 105) (31 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (26 : Fin 105) (31 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a026_b032 (c : Fin 105) :
    (32 : Fin 105) ≤ c → targetOrbitCertificateAt8 (26 : Fin 105) (32 : Fin 105) c := by
  have hfast :
      (32 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (26 : Fin 105) (32 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (26 : Fin 105) (32 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a026_b033 (c : Fin 105) :
    (33 : Fin 105) ≤ c → targetOrbitCertificateAt8 (26 : Fin 105) (33 : Fin 105) c := by
  have hfast :
      (33 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (26 : Fin 105) (33 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (26 : Fin 105) (33 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
