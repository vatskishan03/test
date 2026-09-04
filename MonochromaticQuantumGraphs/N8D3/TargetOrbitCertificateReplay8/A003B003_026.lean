import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A002B098_104

/-!
# Bounded certificate replay for `a = 3`, `b = 3..26`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b003 (c : Fin 105) :
    (3 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (3 : Fin 105) c := by
  have hfast :
      (3 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (3 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (3 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b004 (c : Fin 105) :
    (4 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (4 : Fin 105) c := by
  have hfast :
      (4 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (4 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (4 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b005 (c : Fin 105) :
    (5 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (5 : Fin 105) c := by
  have hfast :
      (5 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (5 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (5 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b006 (c : Fin 105) :
    (6 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (6 : Fin 105) c := by
  have hfast :
      (6 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (6 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (6 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b007 (c : Fin 105) :
    (7 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (7 : Fin 105) c := by
  have hfast :
      (7 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (7 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (7 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b008 (c : Fin 105) :
    (8 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (8 : Fin 105) c := by
  have hfast :
      (8 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (8 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (8 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b009 (c : Fin 105) :
    (9 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (9 : Fin 105) c := by
  have hfast :
      (9 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (9 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (9 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b010 (c : Fin 105) :
    (10 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (10 : Fin 105) c := by
  have hfast :
      (10 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (10 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (10 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b011 (c : Fin 105) :
    (11 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (11 : Fin 105) c := by
  have hfast :
      (11 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (11 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (11 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b012 (c : Fin 105) :
    (12 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (12 : Fin 105) c := by
  have hfast :
      (12 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (12 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (12 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b013 (c : Fin 105) :
    (13 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (13 : Fin 105) c := by
  have hfast :
      (13 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (13 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (13 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b014 (c : Fin 105) :
    (14 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (14 : Fin 105) c := by
  have hfast :
      (14 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (14 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (14 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b015 (c : Fin 105) :
    (15 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (15 : Fin 105) c := by
  have hfast :
      (15 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (15 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (15 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b016 (c : Fin 105) :
    (16 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (16 : Fin 105) c := by
  have hfast :
      (16 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (16 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (16 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b017 (c : Fin 105) :
    (17 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (17 : Fin 105) c := by
  have hfast :
      (17 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (17 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (17 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b018 (c : Fin 105) :
    (18 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (18 : Fin 105) c := by
  have hfast :
      (18 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (18 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (18 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b019 (c : Fin 105) :
    (19 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (19 : Fin 105) c := by
  have hfast :
      (19 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (19 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (19 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b020 (c : Fin 105) :
    (20 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (20 : Fin 105) c := by
  have hfast :
      (20 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (20 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (20 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b021 (c : Fin 105) :
    (21 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (21 : Fin 105) c := by
  have hfast :
      (21 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (21 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (21 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b022 (c : Fin 105) :
    (22 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (22 : Fin 105) c := by
  have hfast :
      (22 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (22 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (22 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b023 (c : Fin 105) :
    (23 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (23 : Fin 105) c := by
  have hfast :
      (23 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (23 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (23 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b024 (c : Fin 105) :
    (24 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (24 : Fin 105) c := by
  have hfast :
      (24 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (24 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (24 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b025 (c : Fin 105) :
    (25 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (25 : Fin 105) c := by
  have hfast :
      (25 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (25 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (25 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a003_b026 (c : Fin 105) :
    (26 : Fin 105) ≤ c → targetOrbitCertificateAt8 (3 : Fin 105) (26 : Fin 105) c := by
  have hfast :
      (26 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (3 : Fin 105) (26 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (3 : Fin 105) (26 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
