import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A082B090_097

/-!
# Bounded certificate replay for `a = 84`, `b = 100..104`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a084_b100 (c : Fin 105) :
    (100 : Fin 105) ≤ c → targetOrbitCertificateAt8 (84 : Fin 105) (100 : Fin 105) c := by
  have hfast :
      (100 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (84 : Fin 105) (100 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (84 : Fin 105) (100 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a084_b101 (c : Fin 105) :
    (101 : Fin 105) ≤ c → targetOrbitCertificateAt8 (84 : Fin 105) (101 : Fin 105) c := by
  have hfast :
      (101 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (84 : Fin 105) (101 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (84 : Fin 105) (101 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a084_b102 (c : Fin 105) :
    (102 : Fin 105) ≤ c → targetOrbitCertificateAt8 (84 : Fin 105) (102 : Fin 105) c := by
  have hfast :
      (102 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (84 : Fin 105) (102 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (84 : Fin 105) (102 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a084_b103 (c : Fin 105) :
    (103 : Fin 105) ≤ c → targetOrbitCertificateAt8 (84 : Fin 105) (103 : Fin 105) c := by
  have hfast :
      (103 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (84 : Fin 105) (103 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (84 : Fin 105) (103 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a084_b104 (c : Fin 105) :
    (104 : Fin 105) ≤ c → targetOrbitCertificateAt8 (84 : Fin 105) (104 : Fin 105) c := by
  have hfast :
      (104 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (84 : Fin 105) (104 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (84 : Fin 105) (104 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
