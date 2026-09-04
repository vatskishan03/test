import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A028B100_104

/-!
# Bounded certificate replay for `a = 29`, `b = 29..36`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a029_b029 (c : Fin 105) :
    (29 : Fin 105) ≤ c → targetOrbitCertificateAt8 (29 : Fin 105) (29 : Fin 105) c := by
  have hfast :
      (29 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (29 : Fin 105) (29 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (29 : Fin 105) (29 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a029_b030 (c : Fin 105) :
    (30 : Fin 105) ≤ c → targetOrbitCertificateAt8 (29 : Fin 105) (30 : Fin 105) c := by
  have hfast :
      (30 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (29 : Fin 105) (30 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (29 : Fin 105) (30 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a029_b031 (c : Fin 105) :
    (31 : Fin 105) ≤ c → targetOrbitCertificateAt8 (29 : Fin 105) (31 : Fin 105) c := by
  have hfast :
      (31 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (29 : Fin 105) (31 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (29 : Fin 105) (31 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a029_b032 (c : Fin 105) :
    (32 : Fin 105) ≤ c → targetOrbitCertificateAt8 (29 : Fin 105) (32 : Fin 105) c := by
  have hfast :
      (32 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (29 : Fin 105) (32 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (29 : Fin 105) (32 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a029_b033 (c : Fin 105) :
    (33 : Fin 105) ≤ c → targetOrbitCertificateAt8 (29 : Fin 105) (33 : Fin 105) c := by
  have hfast :
      (33 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (29 : Fin 105) (33 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (29 : Fin 105) (33 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a029_b034 (c : Fin 105) :
    (34 : Fin 105) ≤ c → targetOrbitCertificateAt8 (29 : Fin 105) (34 : Fin 105) c := by
  have hfast :
      (34 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (29 : Fin 105) (34 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (29 : Fin 105) (34 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a029_b035 (c : Fin 105) :
    (35 : Fin 105) ≤ c → targetOrbitCertificateAt8 (29 : Fin 105) (35 : Fin 105) c := by
  have hfast :
      (35 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (29 : Fin 105) (35 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (29 : Fin 105) (35 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a029_b036 (c : Fin 105) :
    (36 : Fin 105) ≤ c → targetOrbitCertificateAt8 (29 : Fin 105) (36 : Fin 105) c := by
  have hfast :
      (36 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (29 : Fin 105) (36 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (29 : Fin 105) (36 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
