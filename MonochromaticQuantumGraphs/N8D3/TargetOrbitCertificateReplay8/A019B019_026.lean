import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A018B098_104

/-!
# Bounded certificate replay for `a = 19`, `b = 19..26`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a019_b019 (c : Fin 105) :
    (19 : Fin 105) ≤ c → targetOrbitCertificateAt8 (19 : Fin 105) (19 : Fin 105) c := by
  have hfast :
      (19 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (19 : Fin 105) (19 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (19 : Fin 105) (19 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a019_b020 (c : Fin 105) :
    (20 : Fin 105) ≤ c → targetOrbitCertificateAt8 (19 : Fin 105) (20 : Fin 105) c := by
  have hfast :
      (20 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (19 : Fin 105) (20 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (19 : Fin 105) (20 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a019_b021 (c : Fin 105) :
    (21 : Fin 105) ≤ c → targetOrbitCertificateAt8 (19 : Fin 105) (21 : Fin 105) c := by
  have hfast :
      (21 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (19 : Fin 105) (21 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (19 : Fin 105) (21 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a019_b022 (c : Fin 105) :
    (22 : Fin 105) ≤ c → targetOrbitCertificateAt8 (19 : Fin 105) (22 : Fin 105) c := by
  have hfast :
      (22 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (19 : Fin 105) (22 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (19 : Fin 105) (22 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a019_b023 (c : Fin 105) :
    (23 : Fin 105) ≤ c → targetOrbitCertificateAt8 (19 : Fin 105) (23 : Fin 105) c := by
  have hfast :
      (23 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (19 : Fin 105) (23 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (19 : Fin 105) (23 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a019_b024 (c : Fin 105) :
    (24 : Fin 105) ≤ c → targetOrbitCertificateAt8 (19 : Fin 105) (24 : Fin 105) c := by
  have hfast :
      (24 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (19 : Fin 105) (24 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (19 : Fin 105) (24 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a019_b025 (c : Fin 105) :
    (25 : Fin 105) ≤ c → targetOrbitCertificateAt8 (19 : Fin 105) (25 : Fin 105) c := by
  have hfast :
      (25 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (19 : Fin 105) (25 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (19 : Fin 105) (25 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a019_b026 (c : Fin 105) :
    (26 : Fin 105) ≤ c → targetOrbitCertificateAt8 (19 : Fin 105) (26 : Fin 105) c := by
  have hfast :
      (26 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (19 : Fin 105) (26 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (19 : Fin 105) (26 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
