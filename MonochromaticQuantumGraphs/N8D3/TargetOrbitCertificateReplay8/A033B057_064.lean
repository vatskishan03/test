import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A033B049_056

/-!
# Bounded certificate replay for `a = 33`, `b = 57..64`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a033_b057 (c : Fin 105) :
    (57 : Fin 105) ≤ c → targetOrbitCertificateAt8 (33 : Fin 105) (57 : Fin 105) c := by
  have hfast :
      (57 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (33 : Fin 105) (57 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (33 : Fin 105) (57 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a033_b058 (c : Fin 105) :
    (58 : Fin 105) ≤ c → targetOrbitCertificateAt8 (33 : Fin 105) (58 : Fin 105) c := by
  have hfast :
      (58 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (33 : Fin 105) (58 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (33 : Fin 105) (58 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a033_b059 (c : Fin 105) :
    (59 : Fin 105) ≤ c → targetOrbitCertificateAt8 (33 : Fin 105) (59 : Fin 105) c := by
  have hfast :
      (59 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (33 : Fin 105) (59 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (33 : Fin 105) (59 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a033_b060 (c : Fin 105) :
    (60 : Fin 105) ≤ c → targetOrbitCertificateAt8 (33 : Fin 105) (60 : Fin 105) c := by
  have hfast :
      (60 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (33 : Fin 105) (60 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (33 : Fin 105) (60 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a033_b061 (c : Fin 105) :
    (61 : Fin 105) ≤ c → targetOrbitCertificateAt8 (33 : Fin 105) (61 : Fin 105) c := by
  have hfast :
      (61 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (33 : Fin 105) (61 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (33 : Fin 105) (61 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a033_b062 (c : Fin 105) :
    (62 : Fin 105) ≤ c → targetOrbitCertificateAt8 (33 : Fin 105) (62 : Fin 105) c := by
  have hfast :
      (62 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (33 : Fin 105) (62 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (33 : Fin 105) (62 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a033_b063 (c : Fin 105) :
    (63 : Fin 105) ≤ c → targetOrbitCertificateAt8 (33 : Fin 105) (63 : Fin 105) c := by
  have hfast :
      (63 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (33 : Fin 105) (63 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (33 : Fin 105) (63 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a033_b064 (c : Fin 105) :
    (64 : Fin 105) ≤ c → targetOrbitCertificateAt8 (33 : Fin 105) (64 : Fin 105) c := by
  have hfast :
      (64 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (33 : Fin 105) (64 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (33 : Fin 105) (64 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
