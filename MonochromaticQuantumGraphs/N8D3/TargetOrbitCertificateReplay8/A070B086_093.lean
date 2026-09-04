import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A069B069_076

/-!
# Bounded certificate replay for `a = 70`, `b = 86..93`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a070_b086 (c : Fin 105) :
    (86 : Fin 105) ≤ c → targetOrbitCertificateAt8 (70 : Fin 105) (86 : Fin 105) c := by
  have hfast :
      (86 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (70 : Fin 105) (86 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (70 : Fin 105) (86 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a070_b087 (c : Fin 105) :
    (87 : Fin 105) ≤ c → targetOrbitCertificateAt8 (70 : Fin 105) (87 : Fin 105) c := by
  have hfast :
      (87 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (70 : Fin 105) (87 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (70 : Fin 105) (87 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a070_b088 (c : Fin 105) :
    (88 : Fin 105) ≤ c → targetOrbitCertificateAt8 (70 : Fin 105) (88 : Fin 105) c := by
  have hfast :
      (88 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (70 : Fin 105) (88 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (70 : Fin 105) (88 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a070_b089 (c : Fin 105) :
    (89 : Fin 105) ≤ c → targetOrbitCertificateAt8 (70 : Fin 105) (89 : Fin 105) c := by
  have hfast :
      (89 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (70 : Fin 105) (89 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (70 : Fin 105) (89 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a070_b090 (c : Fin 105) :
    (90 : Fin 105) ≤ c → targetOrbitCertificateAt8 (70 : Fin 105) (90 : Fin 105) c := by
  have hfast :
      (90 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (70 : Fin 105) (90 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (70 : Fin 105) (90 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a070_b091 (c : Fin 105) :
    (91 : Fin 105) ≤ c → targetOrbitCertificateAt8 (70 : Fin 105) (91 : Fin 105) c := by
  have hfast :
      (91 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (70 : Fin 105) (91 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (70 : Fin 105) (91 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a070_b092 (c : Fin 105) :
    (92 : Fin 105) ≤ c → targetOrbitCertificateAt8 (70 : Fin 105) (92 : Fin 105) c := by
  have hfast :
      (92 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (70 : Fin 105) (92 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (70 : Fin 105) (92 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a070_b093 (c : Fin 105) :
    (93 : Fin 105) ≤ c → targetOrbitCertificateAt8 (70 : Fin 105) (93 : Fin 105) c := by
  have hfast :
      (93 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (70 : Fin 105) (93 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (70 : Fin 105) (93 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
