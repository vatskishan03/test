import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A013B013_036

/-!
# Bounded certificate replay for `a = 13`, `b = 37..60`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b037 (c : Fin 105) :
    (37 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (37 : Fin 105) c := by
  have hfast :
      (37 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (37 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (37 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b038 (c : Fin 105) :
    (38 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (38 : Fin 105) c := by
  have hfast :
      (38 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (38 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (38 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b039 (c : Fin 105) :
    (39 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (39 : Fin 105) c := by
  have hfast :
      (39 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (39 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (39 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b040 (c : Fin 105) :
    (40 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (40 : Fin 105) c := by
  have hfast :
      (40 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (40 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (40 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b041 (c : Fin 105) :
    (41 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (41 : Fin 105) c := by
  have hfast :
      (41 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (41 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (41 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b042 (c : Fin 105) :
    (42 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (42 : Fin 105) c := by
  have hfast :
      (42 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (42 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (42 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b043 (c : Fin 105) :
    (43 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (43 : Fin 105) c := by
  have hfast :
      (43 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (43 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (43 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b044 (c : Fin 105) :
    (44 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (44 : Fin 105) c := by
  have hfast :
      (44 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (44 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (44 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b045 (c : Fin 105) :
    (45 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (45 : Fin 105) c := by
  have hfast :
      (45 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (45 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (45 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b046 (c : Fin 105) :
    (46 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (46 : Fin 105) c := by
  have hfast :
      (46 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (46 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (46 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b047 (c : Fin 105) :
    (47 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (47 : Fin 105) c := by
  have hfast :
      (47 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (47 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (47 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b048 (c : Fin 105) :
    (48 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (48 : Fin 105) c := by
  have hfast :
      (48 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (48 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (48 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b049 (c : Fin 105) :
    (49 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (49 : Fin 105) c := by
  have hfast :
      (49 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (49 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (49 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b050 (c : Fin 105) :
    (50 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (50 : Fin 105) c := by
  have hfast :
      (50 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (50 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (50 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b051 (c : Fin 105) :
    (51 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (51 : Fin 105) c := by
  have hfast :
      (51 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (51 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (51 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b052 (c : Fin 105) :
    (52 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (52 : Fin 105) c := by
  have hfast :
      (52 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (52 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (52 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b053 (c : Fin 105) :
    (53 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (53 : Fin 105) c := by
  have hfast :
      (53 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (53 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (53 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b054 (c : Fin 105) :
    (54 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (54 : Fin 105) c := by
  have hfast :
      (54 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (54 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (54 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b055 (c : Fin 105) :
    (55 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (55 : Fin 105) c := by
  have hfast :
      (55 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (55 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (55 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b056 (c : Fin 105) :
    (56 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (56 : Fin 105) c := by
  have hfast :
      (56 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (56 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (56 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b057 (c : Fin 105) :
    (57 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (57 : Fin 105) c := by
  have hfast :
      (57 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (57 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (57 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b058 (c : Fin 105) :
    (58 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (58 : Fin 105) c := by
  have hfast :
      (58 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (58 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (58 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b059 (c : Fin 105) :
    (59 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (59 : Fin 105) c := by
  have hfast :
      (59 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (59 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (59 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a013_b060 (c : Fin 105) :
    (60 : Fin 105) ≤ c → targetOrbitCertificateAt8 (13 : Fin 105) (60 : Fin 105) c := by
  have hfast :
      (60 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (13 : Fin 105) (60 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (13 : Fin 105) (60 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
