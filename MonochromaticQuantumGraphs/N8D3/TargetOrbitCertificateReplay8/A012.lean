import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A012B084_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A011

/-! # Dispatch over `b` for the fixed first index `a = 12` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a012
    (b c : Fin 105)
    (hab : (12 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (12 : Fin 105) b c := by
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
  · exact targetOrbitCertificateAt8_a012_b012 c hbc
  · exact targetOrbitCertificateAt8_a012_b013 c hbc
  · exact targetOrbitCertificateAt8_a012_b014 c hbc
  · exact targetOrbitCertificateAt8_a012_b015 c hbc
  · exact targetOrbitCertificateAt8_a012_b016 c hbc
  · exact targetOrbitCertificateAt8_a012_b017 c hbc
  · exact targetOrbitCertificateAt8_a012_b018 c hbc
  · exact targetOrbitCertificateAt8_a012_b019 c hbc
  · exact targetOrbitCertificateAt8_a012_b020 c hbc
  · exact targetOrbitCertificateAt8_a012_b021 c hbc
  · exact targetOrbitCertificateAt8_a012_b022 c hbc
  · exact targetOrbitCertificateAt8_a012_b023 c hbc
  · exact targetOrbitCertificateAt8_a012_b024 c hbc
  · exact targetOrbitCertificateAt8_a012_b025 c hbc
  · exact targetOrbitCertificateAt8_a012_b026 c hbc
  · exact targetOrbitCertificateAt8_a012_b027 c hbc
  · exact targetOrbitCertificateAt8_a012_b028 c hbc
  · exact targetOrbitCertificateAt8_a012_b029 c hbc
  · exact targetOrbitCertificateAt8_a012_b030 c hbc
  · exact targetOrbitCertificateAt8_a012_b031 c hbc
  · exact targetOrbitCertificateAt8_a012_b032 c hbc
  · exact targetOrbitCertificateAt8_a012_b033 c hbc
  · exact targetOrbitCertificateAt8_a012_b034 c hbc
  · exact targetOrbitCertificateAt8_a012_b035 c hbc
  · exact targetOrbitCertificateAt8_a012_b036 c hbc
  · exact targetOrbitCertificateAt8_a012_b037 c hbc
  · exact targetOrbitCertificateAt8_a012_b038 c hbc
  · exact targetOrbitCertificateAt8_a012_b039 c hbc
  · exact targetOrbitCertificateAt8_a012_b040 c hbc
  · exact targetOrbitCertificateAt8_a012_b041 c hbc
  · exact targetOrbitCertificateAt8_a012_b042 c hbc
  · exact targetOrbitCertificateAt8_a012_b043 c hbc
  · exact targetOrbitCertificateAt8_a012_b044 c hbc
  · exact targetOrbitCertificateAt8_a012_b045 c hbc
  · exact targetOrbitCertificateAt8_a012_b046 c hbc
  · exact targetOrbitCertificateAt8_a012_b047 c hbc
  · exact targetOrbitCertificateAt8_a012_b048 c hbc
  · exact targetOrbitCertificateAt8_a012_b049 c hbc
  · exact targetOrbitCertificateAt8_a012_b050 c hbc
  · exact targetOrbitCertificateAt8_a012_b051 c hbc
  · exact targetOrbitCertificateAt8_a012_b052 c hbc
  · exact targetOrbitCertificateAt8_a012_b053 c hbc
  · exact targetOrbitCertificateAt8_a012_b054 c hbc
  · exact targetOrbitCertificateAt8_a012_b055 c hbc
  · exact targetOrbitCertificateAt8_a012_b056 c hbc
  · exact targetOrbitCertificateAt8_a012_b057 c hbc
  · exact targetOrbitCertificateAt8_a012_b058 c hbc
  · exact targetOrbitCertificateAt8_a012_b059 c hbc
  · exact targetOrbitCertificateAt8_a012_b060 c hbc
  · exact targetOrbitCertificateAt8_a012_b061 c hbc
  · exact targetOrbitCertificateAt8_a012_b062 c hbc
  · exact targetOrbitCertificateAt8_a012_b063 c hbc
  · exact targetOrbitCertificateAt8_a012_b064 c hbc
  · exact targetOrbitCertificateAt8_a012_b065 c hbc
  · exact targetOrbitCertificateAt8_a012_b066 c hbc
  · exact targetOrbitCertificateAt8_a012_b067 c hbc
  · exact targetOrbitCertificateAt8_a012_b068 c hbc
  · exact targetOrbitCertificateAt8_a012_b069 c hbc
  · exact targetOrbitCertificateAt8_a012_b070 c hbc
  · exact targetOrbitCertificateAt8_a012_b071 c hbc
  · exact targetOrbitCertificateAt8_a012_b072 c hbc
  · exact targetOrbitCertificateAt8_a012_b073 c hbc
  · exact targetOrbitCertificateAt8_a012_b074 c hbc
  · exact targetOrbitCertificateAt8_a012_b075 c hbc
  · exact targetOrbitCertificateAt8_a012_b076 c hbc
  · exact targetOrbitCertificateAt8_a012_b077 c hbc
  · exact targetOrbitCertificateAt8_a012_b078 c hbc
  · exact targetOrbitCertificateAt8_a012_b079 c hbc
  · exact targetOrbitCertificateAt8_a012_b080 c hbc
  · exact targetOrbitCertificateAt8_a012_b081 c hbc
  · exact targetOrbitCertificateAt8_a012_b082 c hbc
  · exact targetOrbitCertificateAt8_a012_b083 c hbc
  · exact targetOrbitCertificateAt8_a012_b084 c hbc
  · exact targetOrbitCertificateAt8_a012_b085 c hbc
  · exact targetOrbitCertificateAt8_a012_b086 c hbc
  · exact targetOrbitCertificateAt8_a012_b087 c hbc
  · exact targetOrbitCertificateAt8_a012_b088 c hbc
  · exact targetOrbitCertificateAt8_a012_b089 c hbc
  · exact targetOrbitCertificateAt8_a012_b090 c hbc
  · exact targetOrbitCertificateAt8_a012_b091 c hbc
  · exact targetOrbitCertificateAt8_a012_b092 c hbc
  · exact targetOrbitCertificateAt8_a012_b093 c hbc
  · exact targetOrbitCertificateAt8_a012_b094 c hbc
  · exact targetOrbitCertificateAt8_a012_b095 c hbc
  · exact targetOrbitCertificateAt8_a012_b096 c hbc
  · exact targetOrbitCertificateAt8_a012_b097 c hbc
  · exact targetOrbitCertificateAt8_a012_b098 c hbc
  · exact targetOrbitCertificateAt8_a012_b099 c hbc
  · exact targetOrbitCertificateAt8_a012_b100 c hbc
  · exact targetOrbitCertificateAt8_a012_b101 c hbc
  · exact targetOrbitCertificateAt8_a012_b102 c hbc
  · exact targetOrbitCertificateAt8_a012_b103 c hbc
  · exact targetOrbitCertificateAt8_a012_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
