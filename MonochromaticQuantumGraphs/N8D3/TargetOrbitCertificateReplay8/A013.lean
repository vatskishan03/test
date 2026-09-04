import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A013B085_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A012

/-! # Dispatch over `b` for the fixed first index `a = 13` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a013
    (b c : Fin 105)
    (hab : (13 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (13 : Fin 105) b c := by
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
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a013_b013 c hbc
  · exact targetOrbitCertificateAt8_a013_b014 c hbc
  · exact targetOrbitCertificateAt8_a013_b015 c hbc
  · exact targetOrbitCertificateAt8_a013_b016 c hbc
  · exact targetOrbitCertificateAt8_a013_b017 c hbc
  · exact targetOrbitCertificateAt8_a013_b018 c hbc
  · exact targetOrbitCertificateAt8_a013_b019 c hbc
  · exact targetOrbitCertificateAt8_a013_b020 c hbc
  · exact targetOrbitCertificateAt8_a013_b021 c hbc
  · exact targetOrbitCertificateAt8_a013_b022 c hbc
  · exact targetOrbitCertificateAt8_a013_b023 c hbc
  · exact targetOrbitCertificateAt8_a013_b024 c hbc
  · exact targetOrbitCertificateAt8_a013_b025 c hbc
  · exact targetOrbitCertificateAt8_a013_b026 c hbc
  · exact targetOrbitCertificateAt8_a013_b027 c hbc
  · exact targetOrbitCertificateAt8_a013_b028 c hbc
  · exact targetOrbitCertificateAt8_a013_b029 c hbc
  · exact targetOrbitCertificateAt8_a013_b030 c hbc
  · exact targetOrbitCertificateAt8_a013_b031 c hbc
  · exact targetOrbitCertificateAt8_a013_b032 c hbc
  · exact targetOrbitCertificateAt8_a013_b033 c hbc
  · exact targetOrbitCertificateAt8_a013_b034 c hbc
  · exact targetOrbitCertificateAt8_a013_b035 c hbc
  · exact targetOrbitCertificateAt8_a013_b036 c hbc
  · exact targetOrbitCertificateAt8_a013_b037 c hbc
  · exact targetOrbitCertificateAt8_a013_b038 c hbc
  · exact targetOrbitCertificateAt8_a013_b039 c hbc
  · exact targetOrbitCertificateAt8_a013_b040 c hbc
  · exact targetOrbitCertificateAt8_a013_b041 c hbc
  · exact targetOrbitCertificateAt8_a013_b042 c hbc
  · exact targetOrbitCertificateAt8_a013_b043 c hbc
  · exact targetOrbitCertificateAt8_a013_b044 c hbc
  · exact targetOrbitCertificateAt8_a013_b045 c hbc
  · exact targetOrbitCertificateAt8_a013_b046 c hbc
  · exact targetOrbitCertificateAt8_a013_b047 c hbc
  · exact targetOrbitCertificateAt8_a013_b048 c hbc
  · exact targetOrbitCertificateAt8_a013_b049 c hbc
  · exact targetOrbitCertificateAt8_a013_b050 c hbc
  · exact targetOrbitCertificateAt8_a013_b051 c hbc
  · exact targetOrbitCertificateAt8_a013_b052 c hbc
  · exact targetOrbitCertificateAt8_a013_b053 c hbc
  · exact targetOrbitCertificateAt8_a013_b054 c hbc
  · exact targetOrbitCertificateAt8_a013_b055 c hbc
  · exact targetOrbitCertificateAt8_a013_b056 c hbc
  · exact targetOrbitCertificateAt8_a013_b057 c hbc
  · exact targetOrbitCertificateAt8_a013_b058 c hbc
  · exact targetOrbitCertificateAt8_a013_b059 c hbc
  · exact targetOrbitCertificateAt8_a013_b060 c hbc
  · exact targetOrbitCertificateAt8_a013_b061 c hbc
  · exact targetOrbitCertificateAt8_a013_b062 c hbc
  · exact targetOrbitCertificateAt8_a013_b063 c hbc
  · exact targetOrbitCertificateAt8_a013_b064 c hbc
  · exact targetOrbitCertificateAt8_a013_b065 c hbc
  · exact targetOrbitCertificateAt8_a013_b066 c hbc
  · exact targetOrbitCertificateAt8_a013_b067 c hbc
  · exact targetOrbitCertificateAt8_a013_b068 c hbc
  · exact targetOrbitCertificateAt8_a013_b069 c hbc
  · exact targetOrbitCertificateAt8_a013_b070 c hbc
  · exact targetOrbitCertificateAt8_a013_b071 c hbc
  · exact targetOrbitCertificateAt8_a013_b072 c hbc
  · exact targetOrbitCertificateAt8_a013_b073 c hbc
  · exact targetOrbitCertificateAt8_a013_b074 c hbc
  · exact targetOrbitCertificateAt8_a013_b075 c hbc
  · exact targetOrbitCertificateAt8_a013_b076 c hbc
  · exact targetOrbitCertificateAt8_a013_b077 c hbc
  · exact targetOrbitCertificateAt8_a013_b078 c hbc
  · exact targetOrbitCertificateAt8_a013_b079 c hbc
  · exact targetOrbitCertificateAt8_a013_b080 c hbc
  · exact targetOrbitCertificateAt8_a013_b081 c hbc
  · exact targetOrbitCertificateAt8_a013_b082 c hbc
  · exact targetOrbitCertificateAt8_a013_b083 c hbc
  · exact targetOrbitCertificateAt8_a013_b084 c hbc
  · exact targetOrbitCertificateAt8_a013_b085 c hbc
  · exact targetOrbitCertificateAt8_a013_b086 c hbc
  · exact targetOrbitCertificateAt8_a013_b087 c hbc
  · exact targetOrbitCertificateAt8_a013_b088 c hbc
  · exact targetOrbitCertificateAt8_a013_b089 c hbc
  · exact targetOrbitCertificateAt8_a013_b090 c hbc
  · exact targetOrbitCertificateAt8_a013_b091 c hbc
  · exact targetOrbitCertificateAt8_a013_b092 c hbc
  · exact targetOrbitCertificateAt8_a013_b093 c hbc
  · exact targetOrbitCertificateAt8_a013_b094 c hbc
  · exact targetOrbitCertificateAt8_a013_b095 c hbc
  · exact targetOrbitCertificateAt8_a013_b096 c hbc
  · exact targetOrbitCertificateAt8_a013_b097 c hbc
  · exact targetOrbitCertificateAt8_a013_b098 c hbc
  · exact targetOrbitCertificateAt8_a013_b099 c hbc
  · exact targetOrbitCertificateAt8_a013_b100 c hbc
  · exact targetOrbitCertificateAt8_a013_b101 c hbc
  · exact targetOrbitCertificateAt8_a013_b102 c hbc
  · exact targetOrbitCertificateAt8_a013_b103 c hbc
  · exact targetOrbitCertificateAt8_a013_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
