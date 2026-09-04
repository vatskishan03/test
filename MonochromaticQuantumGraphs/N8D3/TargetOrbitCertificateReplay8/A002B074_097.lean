import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A002B050_073

/-!
# Bounded certificate replay for `a = 2`, `b = 74..97`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b074 (c : Fin 105) :
    (74 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (74 : Fin 105) c := by
  have hfast :
      (74 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (74 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (74 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b075 (c : Fin 105) :
    (75 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (75 : Fin 105) c := by
  have hfast :
      (75 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (75 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (75 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b076 (c : Fin 105) :
    (76 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (76 : Fin 105) c := by
  have hfast :
      (76 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (76 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (76 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b077 (c : Fin 105) :
    (77 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (77 : Fin 105) c := by
  have hfast :
      (77 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (77 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (77 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b078 (c : Fin 105) :
    (78 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (78 : Fin 105) c := by
  have hfast :
      (78 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (78 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (78 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b079 (c : Fin 105) :
    (79 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (79 : Fin 105) c := by
  have hfast :
      (79 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (79 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (79 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b080 (c : Fin 105) :
    (80 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (80 : Fin 105) c := by
  have hfast :
      (80 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (80 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (80 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b081 (c : Fin 105) :
    (81 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (81 : Fin 105) c := by
  have hfast :
      (81 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (81 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (81 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b082 (c : Fin 105) :
    (82 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (82 : Fin 105) c := by
  have hfast :
      (82 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (82 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (82 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b083 (c : Fin 105) :
    (83 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (83 : Fin 105) c := by
  have hfast :
      (83 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (83 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (83 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b084 (c : Fin 105) :
    (84 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (84 : Fin 105) c := by
  have hfast :
      (84 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (84 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (84 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b085 (c : Fin 105) :
    (85 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (85 : Fin 105) c := by
  have hfast :
      (85 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (85 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (85 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b086 (c : Fin 105) :
    (86 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (86 : Fin 105) c := by
  have hfast :
      (86 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (86 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (86 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b087 (c : Fin 105) :
    (87 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (87 : Fin 105) c := by
  have hfast :
      (87 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (87 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (87 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b088 (c : Fin 105) :
    (88 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (88 : Fin 105) c := by
  have hfast :
      (88 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (88 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (88 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b089 (c : Fin 105) :
    (89 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (89 : Fin 105) c := by
  have hfast :
      (89 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (89 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (89 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b090 (c : Fin 105) :
    (90 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (90 : Fin 105) c := by
  have hfast :
      (90 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (90 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (90 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b091 (c : Fin 105) :
    (91 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (91 : Fin 105) c := by
  have hfast :
      (91 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (91 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (91 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b092 (c : Fin 105) :
    (92 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (92 : Fin 105) c := by
  have hfast :
      (92 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (92 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (92 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b093 (c : Fin 105) :
    (93 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (93 : Fin 105) c := by
  have hfast :
      (93 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (93 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (93 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b094 (c : Fin 105) :
    (94 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (94 : Fin 105) c := by
  have hfast :
      (94 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (94 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (94 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b095 (c : Fin 105) :
    (95 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (95 : Fin 105) c := by
  have hfast :
      (95 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (95 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (95 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b096 (c : Fin 105) :
    (96 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (96 : Fin 105) c := by
  have hfast :
      (96 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (96 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (96 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a002_b097 (c : Fin 105) :
    (97 : Fin 105) ≤ c → targetOrbitCertificateAt8 (2 : Fin 105) (97 : Fin 105) c := by
  have hfast :
      (97 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (2 : Fin 105) (97 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (2 : Fin 105) (97 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
