import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A010B082_104

/-!
# Bounded certificate replay for `a = 11`, `b = 11..34`

Each theorem fixes `(a,b)` and kernel-checks at most 105 closed
`c` branches with the canonical-endpoint checker.  The implication
makes branches with `c < b` propositionally false rather than
looking up an invalid sorted row.  The bridge then returns the
proof to the official certificate proposition.
-/

namespace MonochromaticQuantumGraphs.N8D3

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b011 (c : Fin 105) :
    (11 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (11 : Fin 105) c := by
  have hfast :
      (11 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (11 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (11 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b012 (c : Fin 105) :
    (12 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (12 : Fin 105) c := by
  have hfast :
      (12 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (12 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (12 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b013 (c : Fin 105) :
    (13 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (13 : Fin 105) c := by
  have hfast :
      (13 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (13 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (13 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b014 (c : Fin 105) :
    (14 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (14 : Fin 105) c := by
  have hfast :
      (14 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (14 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (14 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b015 (c : Fin 105) :
    (15 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (15 : Fin 105) c := by
  have hfast :
      (15 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (15 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (15 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b016 (c : Fin 105) :
    (16 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (16 : Fin 105) c := by
  have hfast :
      (16 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (16 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (16 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b017 (c : Fin 105) :
    (17 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (17 : Fin 105) c := by
  have hfast :
      (17 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (17 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (17 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b018 (c : Fin 105) :
    (18 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (18 : Fin 105) c := by
  have hfast :
      (18 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (18 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (18 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b019 (c : Fin 105) :
    (19 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (19 : Fin 105) c := by
  have hfast :
      (19 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (19 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (19 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b020 (c : Fin 105) :
    (20 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (20 : Fin 105) c := by
  have hfast :
      (20 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (20 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (20 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b021 (c : Fin 105) :
    (21 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (21 : Fin 105) c := by
  have hfast :
      (21 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (21 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (21 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b022 (c : Fin 105) :
    (22 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (22 : Fin 105) c := by
  have hfast :
      (22 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (22 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (22 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b023 (c : Fin 105) :
    (23 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (23 : Fin 105) c := by
  have hfast :
      (23 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (23 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (23 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b024 (c : Fin 105) :
    (24 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (24 : Fin 105) c := by
  have hfast :
      (24 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (24 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (24 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b025 (c : Fin 105) :
    (25 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (25 : Fin 105) c := by
  have hfast :
      (25 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (25 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (25 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b026 (c : Fin 105) :
    (26 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (26 : Fin 105) c := by
  have hfast :
      (26 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (26 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (26 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b027 (c : Fin 105) :
    (27 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (27 : Fin 105) c := by
  have hfast :
      (27 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (27 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (27 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b028 (c : Fin 105) :
    (28 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (28 : Fin 105) c := by
  have hfast :
      (28 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (28 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (28 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b029 (c : Fin 105) :
    (29 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (29 : Fin 105) c := by
  have hfast :
      (29 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (29 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (29 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b030 (c : Fin 105) :
    (30 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (30 : Fin 105) c := by
  have hfast :
      (30 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (30 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (30 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b031 (c : Fin 105) :
    (31 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (31 : Fin 105) c := by
  have hfast :
      (31 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (31 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (31 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b032 (c : Fin 105) :
    (32 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (32 : Fin 105) c := by
  have hfast :
      (32 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (32 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (32 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b033 (c : Fin 105) :
    (33 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (33 : Fin 105) c := by
  have hfast :
      (33 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (33 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (33 : Fin 105) c (hfast hbc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 2000000 in
theorem targetOrbitCertificateAt8_a011_b034 (c : Fin 105) :
    (34 : Fin 105) ≤ c → targetOrbitCertificateAt8 (11 : Fin 105) (34 : Fin 105) c := by
  have hfast :
      (34 : Fin 105) ≤ c → targetOrbitCertificateCanonicalFastAt8 (11 : Fin 105) (34 : Fin 105) c := by
    fin_cases c <;> decide +kernel
  intro hbc
  exact targetOrbitCertificateAt8_of_canonicalFast
    (11 : Fin 105) (34 : Fin 105) c (hfast hbc)

end MonochromaticQuantumGraphs.N8D3
