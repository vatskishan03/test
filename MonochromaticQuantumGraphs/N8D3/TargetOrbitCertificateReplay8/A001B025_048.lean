import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A001B001_024

/-!
# Bounded certificate replay for `a = 1`, `b = 25..48`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b025 (c : Fin 105) :
    (25 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (25 : Fin 105) c := by
  have hfast :
      (25 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (25 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (25 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b026 (c : Fin 105) :
    (26 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (26 : Fin 105) c := by
  have hfast :
      (26 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (26 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (26 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b027 (c : Fin 105) :
    (27 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (27 : Fin 105) c := by
  have hfast :
      (27 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (27 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (27 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b028 (c : Fin 105) :
    (28 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (28 : Fin 105) c := by
  have hfast :
      (28 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (28 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (28 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b029 (c : Fin 105) :
    (29 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (29 : Fin 105) c := by
  have hfast :
      (29 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (29 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (29 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b030 (c : Fin 105) :
    (30 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (30 : Fin 105) c := by
  have hfast :
      (30 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (30 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (30 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b031 (c : Fin 105) :
    (31 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (31 : Fin 105) c := by
  have hfast :
      (31 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (31 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (31 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b032 (c : Fin 105) :
    (32 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (32 : Fin 105) c := by
  have hfast :
      (32 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (32 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (32 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b033 (c : Fin 105) :
    (33 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (33 : Fin 105) c := by
  have hfast :
      (33 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (33 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (33 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b034 (c : Fin 105) :
    (34 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (34 : Fin 105) c := by
  have hfast :
      (34 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (34 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (34 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b035 (c : Fin 105) :
    (35 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (35 : Fin 105) c := by
  have hfast :
      (35 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (35 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (35 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b036 (c : Fin 105) :
    (36 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (36 : Fin 105) c := by
  have hfast :
      (36 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (36 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (36 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b037 (c : Fin 105) :
    (37 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (37 : Fin 105) c := by
  have hfast :
      (37 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (37 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (37 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b038 (c : Fin 105) :
    (38 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (38 : Fin 105) c := by
  have hfast :
      (38 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (38 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (38 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b039 (c : Fin 105) :
    (39 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (39 : Fin 105) c := by
  have hfast :
      (39 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (39 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (39 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b040 (c : Fin 105) :
    (40 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (40 : Fin 105) c := by
  have hfast :
      (40 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (40 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (40 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b041 (c : Fin 105) :
    (41 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (41 : Fin 105) c := by
  have hfast :
      (41 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (41 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (41 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b042 (c : Fin 105) :
    (42 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (42 : Fin 105) c := by
  have hfast :
      (42 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (42 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (42 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b043 (c : Fin 105) :
    (43 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (43 : Fin 105) c := by
  have hfast :
      (43 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (43 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (43 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b044 (c : Fin 105) :
    (44 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (44 : Fin 105) c := by
  have hfast :
      (44 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (44 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (44 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b045 (c : Fin 105) :
    (45 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (45 : Fin 105) c := by
  have hfast :
      (45 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (45 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (45 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b046 (c : Fin 105) :
    (46 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (46 : Fin 105) c := by
  have hfast :
      (46 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (46 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (46 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b047 (c : Fin 105) :
    (47 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (47 : Fin 105) c := by
  have hfast :
      (47 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (47 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (47 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a001_b048 (c : Fin 105) :
    (48 : Fin 105) ≤ c → targetOrbitCertificateAt8 (1 : Fin 105) (48 : Fin 105) c := by
  have hfast :
      (48 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (1 : Fin 105) (48 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (1 : Fin 105) (48 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
