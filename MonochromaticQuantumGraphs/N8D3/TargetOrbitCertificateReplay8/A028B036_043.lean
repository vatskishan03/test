import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A028B028_035

/-!
# Bounded certificate replay for `a = 28`, `b = 36..43`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a028_b036 (c : Fin 105) :
    (36 : Fin 105) ≤ c → targetOrbitCertificateAt8 (28 : Fin 105) (36 : Fin 105) c := by
  have hfast :
      (36 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (28 : Fin 105) (36 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (28 : Fin 105) (36 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a028_b037 (c : Fin 105) :
    (37 : Fin 105) ≤ c → targetOrbitCertificateAt8 (28 : Fin 105) (37 : Fin 105) c := by
  have hfast :
      (37 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (28 : Fin 105) (37 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (28 : Fin 105) (37 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a028_b038 (c : Fin 105) :
    (38 : Fin 105) ≤ c → targetOrbitCertificateAt8 (28 : Fin 105) (38 : Fin 105) c := by
  have hfast :
      (38 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (28 : Fin 105) (38 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (28 : Fin 105) (38 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a028_b039 (c : Fin 105) :
    (39 : Fin 105) ≤ c → targetOrbitCertificateAt8 (28 : Fin 105) (39 : Fin 105) c := by
  have hfast :
      (39 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (28 : Fin 105) (39 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (28 : Fin 105) (39 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a028_b040 (c : Fin 105) :
    (40 : Fin 105) ≤ c → targetOrbitCertificateAt8 (28 : Fin 105) (40 : Fin 105) c := by
  have hfast :
      (40 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (28 : Fin 105) (40 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (28 : Fin 105) (40 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a028_b041 (c : Fin 105) :
    (41 : Fin 105) ≤ c → targetOrbitCertificateAt8 (28 : Fin 105) (41 : Fin 105) c := by
  have hfast :
      (41 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (28 : Fin 105) (41 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (28 : Fin 105) (41 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a028_b042 (c : Fin 105) :
    (42 : Fin 105) ≤ c → targetOrbitCertificateAt8 (28 : Fin 105) (42 : Fin 105) c := by
  have hfast :
      (42 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (28 : Fin 105) (42 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (28 : Fin 105) (42 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a028_b043 (c : Fin 105) :
    (43 : Fin 105) ≤ c → targetOrbitCertificateAt8 (28 : Fin 105) (43 : Fin 105) c := by
  have hfast :
      (43 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (28 : Fin 105) (43 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (28 : Fin 105) (43 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
