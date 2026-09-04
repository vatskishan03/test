import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A009B033_056

/-!
# Bounded certificate replay for `a = 9`, `b = 57..80`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b057 (c : Fin 105) :
    (57 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (57 : Fin 105) c := by
  have hfast :
      (57 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (57 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (57 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b058 (c : Fin 105) :
    (58 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (58 : Fin 105) c := by
  have hfast :
      (58 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (58 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (58 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b059 (c : Fin 105) :
    (59 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (59 : Fin 105) c := by
  have hfast :
      (59 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (59 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (59 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b060 (c : Fin 105) :
    (60 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (60 : Fin 105) c := by
  have hfast :
      (60 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (60 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (60 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b061 (c : Fin 105) :
    (61 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (61 : Fin 105) c := by
  have hfast :
      (61 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (61 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (61 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b062 (c : Fin 105) :
    (62 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (62 : Fin 105) c := by
  have hfast :
      (62 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (62 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (62 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b063 (c : Fin 105) :
    (63 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (63 : Fin 105) c := by
  have hfast :
      (63 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (63 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (63 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b064 (c : Fin 105) :
    (64 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (64 : Fin 105) c := by
  have hfast :
      (64 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (64 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (64 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b065 (c : Fin 105) :
    (65 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (65 : Fin 105) c := by
  have hfast :
      (65 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (65 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (65 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b066 (c : Fin 105) :
    (66 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (66 : Fin 105) c := by
  have hfast :
      (66 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (66 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (66 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b067 (c : Fin 105) :
    (67 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (67 : Fin 105) c := by
  have hfast :
      (67 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (67 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (67 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b068 (c : Fin 105) :
    (68 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (68 : Fin 105) c := by
  have hfast :
      (68 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (68 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (68 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b069 (c : Fin 105) :
    (69 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (69 : Fin 105) c := by
  have hfast :
      (69 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (69 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (69 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b070 (c : Fin 105) :
    (70 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (70 : Fin 105) c := by
  have hfast :
      (70 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (70 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (70 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b071 (c : Fin 105) :
    (71 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (71 : Fin 105) c := by
  have hfast :
      (71 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (71 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (71 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b072 (c : Fin 105) :
    (72 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (72 : Fin 105) c := by
  have hfast :
      (72 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (72 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (72 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b073 (c : Fin 105) :
    (73 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (73 : Fin 105) c := by
  have hfast :
      (73 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (73 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (73 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b074 (c : Fin 105) :
    (74 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (74 : Fin 105) c := by
  have hfast :
      (74 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (74 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (74 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b075 (c : Fin 105) :
    (75 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (75 : Fin 105) c := by
  have hfast :
      (75 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (75 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (75 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b076 (c : Fin 105) :
    (76 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (76 : Fin 105) c := by
  have hfast :
      (76 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (76 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (76 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b077 (c : Fin 105) :
    (77 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (77 : Fin 105) c := by
  have hfast :
      (77 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (77 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (77 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b078 (c : Fin 105) :
    (78 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (78 : Fin 105) c := by
  have hfast :
      (78 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (78 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (78 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b079 (c : Fin 105) :
    (79 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (79 : Fin 105) c := by
  have hfast :
      (79 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (79 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (79 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a009_b080 (c : Fin 105) :
    (80 : Fin 105) ≤ c → targetOrbitCertificateAt8 (9 : Fin 105) (80 : Fin 105) c := by
  have hfast :
      (80 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (9 : Fin 105) (80 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (9 : Fin 105) (80 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
