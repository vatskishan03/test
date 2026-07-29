import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A021B037_044

/-!
# Bounded certificate replay for `a = 21`, `b = 45..52`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a021_b045 (c : Fin 105) :
    (45 : Fin 105) ≤ c → targetOrbitCertificateAt8 (21 : Fin 105) (45 : Fin 105) c := by
  have hfast :
      (45 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (21 : Fin 105) (45 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (21 : Fin 105) (45 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a021_b046 (c : Fin 105) :
    (46 : Fin 105) ≤ c → targetOrbitCertificateAt8 (21 : Fin 105) (46 : Fin 105) c := by
  have hfast :
      (46 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (21 : Fin 105) (46 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (21 : Fin 105) (46 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a021_b047 (c : Fin 105) :
    (47 : Fin 105) ≤ c → targetOrbitCertificateAt8 (21 : Fin 105) (47 : Fin 105) c := by
  have hfast :
      (47 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (21 : Fin 105) (47 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (21 : Fin 105) (47 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a021_b048 (c : Fin 105) :
    (48 : Fin 105) ≤ c → targetOrbitCertificateAt8 (21 : Fin 105) (48 : Fin 105) c := by
  have hfast :
      (48 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (21 : Fin 105) (48 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (21 : Fin 105) (48 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a021_b049 (c : Fin 105) :
    (49 : Fin 105) ≤ c → targetOrbitCertificateAt8 (21 : Fin 105) (49 : Fin 105) c := by
  have hfast :
      (49 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (21 : Fin 105) (49 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (21 : Fin 105) (49 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a021_b050 (c : Fin 105) :
    (50 : Fin 105) ≤ c → targetOrbitCertificateAt8 (21 : Fin 105) (50 : Fin 105) c := by
  have hfast :
      (50 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (21 : Fin 105) (50 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (21 : Fin 105) (50 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a021_b051 (c : Fin 105) :
    (51 : Fin 105) ≤ c → targetOrbitCertificateAt8 (21 : Fin 105) (51 : Fin 105) c := by
  have hfast :
      (51 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (21 : Fin 105) (51 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (21 : Fin 105) (51 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a021_b052 (c : Fin 105) :
    (52 : Fin 105) ≤ c → targetOrbitCertificateAt8 (21 : Fin 105) (52 : Fin 105) c := by
  have hfast :
      (52 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (21 : Fin 105) (52 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (21 : Fin 105) (52 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
