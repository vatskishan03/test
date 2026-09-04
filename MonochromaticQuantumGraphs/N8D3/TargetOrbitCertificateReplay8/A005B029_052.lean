import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A005B005_028

/-!
# Bounded certificate replay for `a = 5`, `b = 29..52`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b029 (c : Fin 105) :
    (29 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (29 : Fin 105) c := by
  have hfast :
      (29 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (29 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (29 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b030 (c : Fin 105) :
    (30 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (30 : Fin 105) c := by
  have hfast :
      (30 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (30 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (30 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b031 (c : Fin 105) :
    (31 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (31 : Fin 105) c := by
  have hfast :
      (31 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (31 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (31 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b032 (c : Fin 105) :
    (32 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (32 : Fin 105) c := by
  have hfast :
      (32 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (32 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (32 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b033 (c : Fin 105) :
    (33 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (33 : Fin 105) c := by
  have hfast :
      (33 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (33 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (33 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b034 (c : Fin 105) :
    (34 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (34 : Fin 105) c := by
  have hfast :
      (34 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (34 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (34 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b035 (c : Fin 105) :
    (35 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (35 : Fin 105) c := by
  have hfast :
      (35 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (35 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (35 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b036 (c : Fin 105) :
    (36 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (36 : Fin 105) c := by
  have hfast :
      (36 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (36 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (36 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b037 (c : Fin 105) :
    (37 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (37 : Fin 105) c := by
  have hfast :
      (37 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (37 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (37 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b038 (c : Fin 105) :
    (38 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (38 : Fin 105) c := by
  have hfast :
      (38 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (38 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (38 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b039 (c : Fin 105) :
    (39 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (39 : Fin 105) c := by
  have hfast :
      (39 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (39 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (39 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b040 (c : Fin 105) :
    (40 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (40 : Fin 105) c := by
  have hfast :
      (40 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (40 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (40 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b041 (c : Fin 105) :
    (41 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (41 : Fin 105) c := by
  have hfast :
      (41 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (41 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (41 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b042 (c : Fin 105) :
    (42 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (42 : Fin 105) c := by
  have hfast :
      (42 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (42 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (42 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b043 (c : Fin 105) :
    (43 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (43 : Fin 105) c := by
  have hfast :
      (43 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (43 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (43 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b044 (c : Fin 105) :
    (44 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (44 : Fin 105) c := by
  have hfast :
      (44 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (44 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (44 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b045 (c : Fin 105) :
    (45 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (45 : Fin 105) c := by
  have hfast :
      (45 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (45 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (45 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b046 (c : Fin 105) :
    (46 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (46 : Fin 105) c := by
  have hfast :
      (46 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (46 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (46 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b047 (c : Fin 105) :
    (47 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (47 : Fin 105) c := by
  have hfast :
      (47 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (47 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (47 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b048 (c : Fin 105) :
    (48 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (48 : Fin 105) c := by
  have hfast :
      (48 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (48 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (48 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b049 (c : Fin 105) :
    (49 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (49 : Fin 105) c := by
  have hfast :
      (49 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (49 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (49 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b050 (c : Fin 105) :
    (50 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (50 : Fin 105) c := by
  have hfast :
      (50 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (50 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (50 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b051 (c : Fin 105) :
    (51 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (51 : Fin 105) c := by
  have hfast :
      (51 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (51 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (51 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a005_b052 (c : Fin 105) :
    (52 : Fin 105) ≤ c → targetOrbitCertificateAt8 (5 : Fin 105) (52 : Fin 105) c := by
  have hfast :
      (52 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (5 : Fin 105) (52 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (5 : Fin 105) (52 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
