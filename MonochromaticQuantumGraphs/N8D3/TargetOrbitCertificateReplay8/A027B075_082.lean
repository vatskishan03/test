import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A027B067_074

/-!
# Bounded certificate replay for `a = 27`, `b = 75..82`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a027_b075 (c : Fin 105) :
    (75 : Fin 105) ≤ c → targetOrbitCertificateAt8 (27 : Fin 105) (75 : Fin 105) c := by
  have hfast :
      (75 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (27 : Fin 105) (75 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (27 : Fin 105) (75 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a027_b076 (c : Fin 105) :
    (76 : Fin 105) ≤ c → targetOrbitCertificateAt8 (27 : Fin 105) (76 : Fin 105) c := by
  have hfast :
      (76 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (27 : Fin 105) (76 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (27 : Fin 105) (76 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a027_b077 (c : Fin 105) :
    (77 : Fin 105) ≤ c → targetOrbitCertificateAt8 (27 : Fin 105) (77 : Fin 105) c := by
  have hfast :
      (77 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (27 : Fin 105) (77 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (27 : Fin 105) (77 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a027_b078 (c : Fin 105) :
    (78 : Fin 105) ≤ c → targetOrbitCertificateAt8 (27 : Fin 105) (78 : Fin 105) c := by
  have hfast :
      (78 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (27 : Fin 105) (78 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (27 : Fin 105) (78 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a027_b079 (c : Fin 105) :
    (79 : Fin 105) ≤ c → targetOrbitCertificateAt8 (27 : Fin 105) (79 : Fin 105) c := by
  have hfast :
      (79 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (27 : Fin 105) (79 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (27 : Fin 105) (79 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a027_b080 (c : Fin 105) :
    (80 : Fin 105) ≤ c → targetOrbitCertificateAt8 (27 : Fin 105) (80 : Fin 105) c := by
  have hfast :
      (80 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (27 : Fin 105) (80 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (27 : Fin 105) (80 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a027_b081 (c : Fin 105) :
    (81 : Fin 105) ≤ c → targetOrbitCertificateAt8 (27 : Fin 105) (81 : Fin 105) c := by
  have hfast :
      (81 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (27 : Fin 105) (81 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (27 : Fin 105) (81 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a027_b082 (c : Fin 105) :
    (82 : Fin 105) ≤ c → targetOrbitCertificateAt8 (27 : Fin 105) (82 : Fin 105) c := by
  have hfast :
      (82 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (27 : Fin 105) (82 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (27 : Fin 105) (82 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
