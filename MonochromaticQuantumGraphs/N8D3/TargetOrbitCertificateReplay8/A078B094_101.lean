import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A076B100_104

/-!
# Bounded certificate replay for `a = 78`, `b = 94..101`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a078_b094 (c : Fin 105) :
    (94 : Fin 105) ≤ c → targetOrbitCertificateAt8 (78 : Fin 105) (94 : Fin 105) c := by
  have hfast :
      (94 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (78 : Fin 105) (94 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (78 : Fin 105) (94 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a078_b095 (c : Fin 105) :
    (95 : Fin 105) ≤ c → targetOrbitCertificateAt8 (78 : Fin 105) (95 : Fin 105) c := by
  have hfast :
      (95 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (78 : Fin 105) (95 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (78 : Fin 105) (95 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a078_b096 (c : Fin 105) :
    (96 : Fin 105) ≤ c → targetOrbitCertificateAt8 (78 : Fin 105) (96 : Fin 105) c := by
  have hfast :
      (96 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (78 : Fin 105) (96 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (78 : Fin 105) (96 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a078_b097 (c : Fin 105) :
    (97 : Fin 105) ≤ c → targetOrbitCertificateAt8 (78 : Fin 105) (97 : Fin 105) c := by
  have hfast :
      (97 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (78 : Fin 105) (97 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (78 : Fin 105) (97 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a078_b098 (c : Fin 105) :
    (98 : Fin 105) ≤ c → targetOrbitCertificateAt8 (78 : Fin 105) (98 : Fin 105) c := by
  have hfast :
      (98 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (78 : Fin 105) (98 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (78 : Fin 105) (98 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a078_b099 (c : Fin 105) :
    (99 : Fin 105) ≤ c → targetOrbitCertificateAt8 (78 : Fin 105) (99 : Fin 105) c := by
  have hfast :
      (99 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (78 : Fin 105) (99 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (78 : Fin 105) (99 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a078_b100 (c : Fin 105) :
    (100 : Fin 105) ≤ c → targetOrbitCertificateAt8 (78 : Fin 105) (100 : Fin 105) c := by
  have hfast :
      (100 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (78 : Fin 105) (100 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (78 : Fin 105) (100 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a078_b101 (c : Fin 105) :
    (101 : Fin 105) ≤ c → targetOrbitCertificateAt8 (78 : Fin 105) (101 : Fin 105) c := by
  have hfast :
      (101 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (78 : Fin 105) (101 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (78 : Fin 105) (101 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
