import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A011B083_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A010

/-! # Dispatch over `b` for the fixed first index `a = 11` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a011
    (b c : Fin 105)
    (hab : (11 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (11 : Fin 105) b c := by
  fin_cases b
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a011_b011 c hbc
  · exact targetOrbitCertificateAt8_a011_b012 c hbc
  · exact targetOrbitCertificateAt8_a011_b013 c hbc
  · exact targetOrbitCertificateAt8_a011_b014 c hbc
  · exact targetOrbitCertificateAt8_a011_b015 c hbc
  · exact targetOrbitCertificateAt8_a011_b016 c hbc
  · exact targetOrbitCertificateAt8_a011_b017 c hbc
  · exact targetOrbitCertificateAt8_a011_b018 c hbc
  · exact targetOrbitCertificateAt8_a011_b019 c hbc
  · exact targetOrbitCertificateAt8_a011_b020 c hbc
  · exact targetOrbitCertificateAt8_a011_b021 c hbc
  · exact targetOrbitCertificateAt8_a011_b022 c hbc
  · exact targetOrbitCertificateAt8_a011_b023 c hbc
  · exact targetOrbitCertificateAt8_a011_b024 c hbc
  · exact targetOrbitCertificateAt8_a011_b025 c hbc
  · exact targetOrbitCertificateAt8_a011_b026 c hbc
  · exact targetOrbitCertificateAt8_a011_b027 c hbc
  · exact targetOrbitCertificateAt8_a011_b028 c hbc
  · exact targetOrbitCertificateAt8_a011_b029 c hbc
  · exact targetOrbitCertificateAt8_a011_b030 c hbc
  · exact targetOrbitCertificateAt8_a011_b031 c hbc
  · exact targetOrbitCertificateAt8_a011_b032 c hbc
  · exact targetOrbitCertificateAt8_a011_b033 c hbc
  · exact targetOrbitCertificateAt8_a011_b034 c hbc
  · exact targetOrbitCertificateAt8_a011_b035 c hbc
  · exact targetOrbitCertificateAt8_a011_b036 c hbc
  · exact targetOrbitCertificateAt8_a011_b037 c hbc
  · exact targetOrbitCertificateAt8_a011_b038 c hbc
  · exact targetOrbitCertificateAt8_a011_b039 c hbc
  · exact targetOrbitCertificateAt8_a011_b040 c hbc
  · exact targetOrbitCertificateAt8_a011_b041 c hbc
  · exact targetOrbitCertificateAt8_a011_b042 c hbc
  · exact targetOrbitCertificateAt8_a011_b043 c hbc
  · exact targetOrbitCertificateAt8_a011_b044 c hbc
  · exact targetOrbitCertificateAt8_a011_b045 c hbc
  · exact targetOrbitCertificateAt8_a011_b046 c hbc
  · exact targetOrbitCertificateAt8_a011_b047 c hbc
  · exact targetOrbitCertificateAt8_a011_b048 c hbc
  · exact targetOrbitCertificateAt8_a011_b049 c hbc
  · exact targetOrbitCertificateAt8_a011_b050 c hbc
  · exact targetOrbitCertificateAt8_a011_b051 c hbc
  · exact targetOrbitCertificateAt8_a011_b052 c hbc
  · exact targetOrbitCertificateAt8_a011_b053 c hbc
  · exact targetOrbitCertificateAt8_a011_b054 c hbc
  · exact targetOrbitCertificateAt8_a011_b055 c hbc
  · exact targetOrbitCertificateAt8_a011_b056 c hbc
  · exact targetOrbitCertificateAt8_a011_b057 c hbc
  · exact targetOrbitCertificateAt8_a011_b058 c hbc
  · exact targetOrbitCertificateAt8_a011_b059 c hbc
  · exact targetOrbitCertificateAt8_a011_b060 c hbc
  · exact targetOrbitCertificateAt8_a011_b061 c hbc
  · exact targetOrbitCertificateAt8_a011_b062 c hbc
  · exact targetOrbitCertificateAt8_a011_b063 c hbc
  · exact targetOrbitCertificateAt8_a011_b064 c hbc
  · exact targetOrbitCertificateAt8_a011_b065 c hbc
  · exact targetOrbitCertificateAt8_a011_b066 c hbc
  · exact targetOrbitCertificateAt8_a011_b067 c hbc
  · exact targetOrbitCertificateAt8_a011_b068 c hbc
  · exact targetOrbitCertificateAt8_a011_b069 c hbc
  · exact targetOrbitCertificateAt8_a011_b070 c hbc
  · exact targetOrbitCertificateAt8_a011_b071 c hbc
  · exact targetOrbitCertificateAt8_a011_b072 c hbc
  · exact targetOrbitCertificateAt8_a011_b073 c hbc
  · exact targetOrbitCertificateAt8_a011_b074 c hbc
  · exact targetOrbitCertificateAt8_a011_b075 c hbc
  · exact targetOrbitCertificateAt8_a011_b076 c hbc
  · exact targetOrbitCertificateAt8_a011_b077 c hbc
  · exact targetOrbitCertificateAt8_a011_b078 c hbc
  · exact targetOrbitCertificateAt8_a011_b079 c hbc
  · exact targetOrbitCertificateAt8_a011_b080 c hbc
  · exact targetOrbitCertificateAt8_a011_b081 c hbc
  · exact targetOrbitCertificateAt8_a011_b082 c hbc
  · exact targetOrbitCertificateAt8_a011_b083 c hbc
  · exact targetOrbitCertificateAt8_a011_b084 c hbc
  · exact targetOrbitCertificateAt8_a011_b085 c hbc
  · exact targetOrbitCertificateAt8_a011_b086 c hbc
  · exact targetOrbitCertificateAt8_a011_b087 c hbc
  · exact targetOrbitCertificateAt8_a011_b088 c hbc
  · exact targetOrbitCertificateAt8_a011_b089 c hbc
  · exact targetOrbitCertificateAt8_a011_b090 c hbc
  · exact targetOrbitCertificateAt8_a011_b091 c hbc
  · exact targetOrbitCertificateAt8_a011_b092 c hbc
  · exact targetOrbitCertificateAt8_a011_b093 c hbc
  · exact targetOrbitCertificateAt8_a011_b094 c hbc
  · exact targetOrbitCertificateAt8_a011_b095 c hbc
  · exact targetOrbitCertificateAt8_a011_b096 c hbc
  · exact targetOrbitCertificateAt8_a011_b097 c hbc
  · exact targetOrbitCertificateAt8_a011_b098 c hbc
  · exact targetOrbitCertificateAt8_a011_b099 c hbc
  · exact targetOrbitCertificateAt8_a011_b100 c hbc
  · exact targetOrbitCertificateAt8_a011_b101 c hbc
  · exact targetOrbitCertificateAt8_a011_b102 c hbc
  · exact targetOrbitCertificateAt8_a011_b103 c hbc
  · exact targetOrbitCertificateAt8_a011_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
