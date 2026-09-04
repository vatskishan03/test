import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A015B103_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A014

/-! # Dispatch over `b` for the fixed first index `a = 15` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a015
    (b c : Fin 105)
    (hab : (15 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (15 : Fin 105) b c := by
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
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a015_b015 c hbc
  · exact targetOrbitCertificateAt8_a015_b016 c hbc
  · exact targetOrbitCertificateAt8_a015_b017 c hbc
  · exact targetOrbitCertificateAt8_a015_b018 c hbc
  · exact targetOrbitCertificateAt8_a015_b019 c hbc
  · exact targetOrbitCertificateAt8_a015_b020 c hbc
  · exact targetOrbitCertificateAt8_a015_b021 c hbc
  · exact targetOrbitCertificateAt8_a015_b022 c hbc
  · exact targetOrbitCertificateAt8_a015_b023 c hbc
  · exact targetOrbitCertificateAt8_a015_b024 c hbc
  · exact targetOrbitCertificateAt8_a015_b025 c hbc
  · exact targetOrbitCertificateAt8_a015_b026 c hbc
  · exact targetOrbitCertificateAt8_a015_b027 c hbc
  · exact targetOrbitCertificateAt8_a015_b028 c hbc
  · exact targetOrbitCertificateAt8_a015_b029 c hbc
  · exact targetOrbitCertificateAt8_a015_b030 c hbc
  · exact targetOrbitCertificateAt8_a015_b031 c hbc
  · exact targetOrbitCertificateAt8_a015_b032 c hbc
  · exact targetOrbitCertificateAt8_a015_b033 c hbc
  · exact targetOrbitCertificateAt8_a015_b034 c hbc
  · exact targetOrbitCertificateAt8_a015_b035 c hbc
  · exact targetOrbitCertificateAt8_a015_b036 c hbc
  · exact targetOrbitCertificateAt8_a015_b037 c hbc
  · exact targetOrbitCertificateAt8_a015_b038 c hbc
  · exact targetOrbitCertificateAt8_a015_b039 c hbc
  · exact targetOrbitCertificateAt8_a015_b040 c hbc
  · exact targetOrbitCertificateAt8_a015_b041 c hbc
  · exact targetOrbitCertificateAt8_a015_b042 c hbc
  · exact targetOrbitCertificateAt8_a015_b043 c hbc
  · exact targetOrbitCertificateAt8_a015_b044 c hbc
  · exact targetOrbitCertificateAt8_a015_b045 c hbc
  · exact targetOrbitCertificateAt8_a015_b046 c hbc
  · exact targetOrbitCertificateAt8_a015_b047 c hbc
  · exact targetOrbitCertificateAt8_a015_b048 c hbc
  · exact targetOrbitCertificateAt8_a015_b049 c hbc
  · exact targetOrbitCertificateAt8_a015_b050 c hbc
  · exact targetOrbitCertificateAt8_a015_b051 c hbc
  · exact targetOrbitCertificateAt8_a015_b052 c hbc
  · exact targetOrbitCertificateAt8_a015_b053 c hbc
  · exact targetOrbitCertificateAt8_a015_b054 c hbc
  · exact targetOrbitCertificateAt8_a015_b055 c hbc
  · exact targetOrbitCertificateAt8_a015_b056 c hbc
  · exact targetOrbitCertificateAt8_a015_b057 c hbc
  · exact targetOrbitCertificateAt8_a015_b058 c hbc
  · exact targetOrbitCertificateAt8_a015_b059 c hbc
  · exact targetOrbitCertificateAt8_a015_b060 c hbc
  · exact targetOrbitCertificateAt8_a015_b061 c hbc
  · exact targetOrbitCertificateAt8_a015_b062 c hbc
  · exact targetOrbitCertificateAt8_a015_b063 c hbc
  · exact targetOrbitCertificateAt8_a015_b064 c hbc
  · exact targetOrbitCertificateAt8_a015_b065 c hbc
  · exact targetOrbitCertificateAt8_a015_b066 c hbc
  · exact targetOrbitCertificateAt8_a015_b067 c hbc
  · exact targetOrbitCertificateAt8_a015_b068 c hbc
  · exact targetOrbitCertificateAt8_a015_b069 c hbc
  · exact targetOrbitCertificateAt8_a015_b070 c hbc
  · exact targetOrbitCertificateAt8_a015_b071 c hbc
  · exact targetOrbitCertificateAt8_a015_b072 c hbc
  · exact targetOrbitCertificateAt8_a015_b073 c hbc
  · exact targetOrbitCertificateAt8_a015_b074 c hbc
  · exact targetOrbitCertificateAt8_a015_b075 c hbc
  · exact targetOrbitCertificateAt8_a015_b076 c hbc
  · exact targetOrbitCertificateAt8_a015_b077 c hbc
  · exact targetOrbitCertificateAt8_a015_b078 c hbc
  · exact targetOrbitCertificateAt8_a015_b079 c hbc
  · exact targetOrbitCertificateAt8_a015_b080 c hbc
  · exact targetOrbitCertificateAt8_a015_b081 c hbc
  · exact targetOrbitCertificateAt8_a015_b082 c hbc
  · exact targetOrbitCertificateAt8_a015_b083 c hbc
  · exact targetOrbitCertificateAt8_a015_b084 c hbc
  · exact targetOrbitCertificateAt8_a015_b085 c hbc
  · exact targetOrbitCertificateAt8_a015_b086 c hbc
  · exact targetOrbitCertificateAt8_a015_b087 c hbc
  · exact targetOrbitCertificateAt8_a015_b088 c hbc
  · exact targetOrbitCertificateAt8_a015_b089 c hbc
  · exact targetOrbitCertificateAt8_a015_b090 c hbc
  · exact targetOrbitCertificateAt8_a015_b091 c hbc
  · exact targetOrbitCertificateAt8_a015_b092 c hbc
  · exact targetOrbitCertificateAt8_a015_b093 c hbc
  · exact targetOrbitCertificateAt8_a015_b094 c hbc
  · exact targetOrbitCertificateAt8_a015_b095 c hbc
  · exact targetOrbitCertificateAt8_a015_b096 c hbc
  · exact targetOrbitCertificateAt8_a015_b097 c hbc
  · exact targetOrbitCertificateAt8_a015_b098 c hbc
  · exact targetOrbitCertificateAt8_a015_b099 c hbc
  · exact targetOrbitCertificateAt8_a015_b100 c hbc
  · exact targetOrbitCertificateAt8_a015_b101 c hbc
  · exact targetOrbitCertificateAt8_a015_b102 c hbc
  · exact targetOrbitCertificateAt8_a015_b103 c hbc
  · exact targetOrbitCertificateAt8_a015_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
