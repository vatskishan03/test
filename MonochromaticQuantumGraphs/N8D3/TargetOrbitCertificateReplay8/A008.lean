import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A008B104_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A007

/-! # Dispatch over `b` for the fixed first index `a = 8` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a008
    (b c : Fin 105)
    (hab : (8 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (8 : Fin 105) b c := by
  fin_cases b
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a008_b008 c hbc
  · exact targetOrbitCertificateAt8_a008_b009 c hbc
  · exact targetOrbitCertificateAt8_a008_b010 c hbc
  · exact targetOrbitCertificateAt8_a008_b011 c hbc
  · exact targetOrbitCertificateAt8_a008_b012 c hbc
  · exact targetOrbitCertificateAt8_a008_b013 c hbc
  · exact targetOrbitCertificateAt8_a008_b014 c hbc
  · exact targetOrbitCertificateAt8_a008_b015 c hbc
  · exact targetOrbitCertificateAt8_a008_b016 c hbc
  · exact targetOrbitCertificateAt8_a008_b017 c hbc
  · exact targetOrbitCertificateAt8_a008_b018 c hbc
  · exact targetOrbitCertificateAt8_a008_b019 c hbc
  · exact targetOrbitCertificateAt8_a008_b020 c hbc
  · exact targetOrbitCertificateAt8_a008_b021 c hbc
  · exact targetOrbitCertificateAt8_a008_b022 c hbc
  · exact targetOrbitCertificateAt8_a008_b023 c hbc
  · exact targetOrbitCertificateAt8_a008_b024 c hbc
  · exact targetOrbitCertificateAt8_a008_b025 c hbc
  · exact targetOrbitCertificateAt8_a008_b026 c hbc
  · exact targetOrbitCertificateAt8_a008_b027 c hbc
  · exact targetOrbitCertificateAt8_a008_b028 c hbc
  · exact targetOrbitCertificateAt8_a008_b029 c hbc
  · exact targetOrbitCertificateAt8_a008_b030 c hbc
  · exact targetOrbitCertificateAt8_a008_b031 c hbc
  · exact targetOrbitCertificateAt8_a008_b032 c hbc
  · exact targetOrbitCertificateAt8_a008_b033 c hbc
  · exact targetOrbitCertificateAt8_a008_b034 c hbc
  · exact targetOrbitCertificateAt8_a008_b035 c hbc
  · exact targetOrbitCertificateAt8_a008_b036 c hbc
  · exact targetOrbitCertificateAt8_a008_b037 c hbc
  · exact targetOrbitCertificateAt8_a008_b038 c hbc
  · exact targetOrbitCertificateAt8_a008_b039 c hbc
  · exact targetOrbitCertificateAt8_a008_b040 c hbc
  · exact targetOrbitCertificateAt8_a008_b041 c hbc
  · exact targetOrbitCertificateAt8_a008_b042 c hbc
  · exact targetOrbitCertificateAt8_a008_b043 c hbc
  · exact targetOrbitCertificateAt8_a008_b044 c hbc
  · exact targetOrbitCertificateAt8_a008_b045 c hbc
  · exact targetOrbitCertificateAt8_a008_b046 c hbc
  · exact targetOrbitCertificateAt8_a008_b047 c hbc
  · exact targetOrbitCertificateAt8_a008_b048 c hbc
  · exact targetOrbitCertificateAt8_a008_b049 c hbc
  · exact targetOrbitCertificateAt8_a008_b050 c hbc
  · exact targetOrbitCertificateAt8_a008_b051 c hbc
  · exact targetOrbitCertificateAt8_a008_b052 c hbc
  · exact targetOrbitCertificateAt8_a008_b053 c hbc
  · exact targetOrbitCertificateAt8_a008_b054 c hbc
  · exact targetOrbitCertificateAt8_a008_b055 c hbc
  · exact targetOrbitCertificateAt8_a008_b056 c hbc
  · exact targetOrbitCertificateAt8_a008_b057 c hbc
  · exact targetOrbitCertificateAt8_a008_b058 c hbc
  · exact targetOrbitCertificateAt8_a008_b059 c hbc
  · exact targetOrbitCertificateAt8_a008_b060 c hbc
  · exact targetOrbitCertificateAt8_a008_b061 c hbc
  · exact targetOrbitCertificateAt8_a008_b062 c hbc
  · exact targetOrbitCertificateAt8_a008_b063 c hbc
  · exact targetOrbitCertificateAt8_a008_b064 c hbc
  · exact targetOrbitCertificateAt8_a008_b065 c hbc
  · exact targetOrbitCertificateAt8_a008_b066 c hbc
  · exact targetOrbitCertificateAt8_a008_b067 c hbc
  · exact targetOrbitCertificateAt8_a008_b068 c hbc
  · exact targetOrbitCertificateAt8_a008_b069 c hbc
  · exact targetOrbitCertificateAt8_a008_b070 c hbc
  · exact targetOrbitCertificateAt8_a008_b071 c hbc
  · exact targetOrbitCertificateAt8_a008_b072 c hbc
  · exact targetOrbitCertificateAt8_a008_b073 c hbc
  · exact targetOrbitCertificateAt8_a008_b074 c hbc
  · exact targetOrbitCertificateAt8_a008_b075 c hbc
  · exact targetOrbitCertificateAt8_a008_b076 c hbc
  · exact targetOrbitCertificateAt8_a008_b077 c hbc
  · exact targetOrbitCertificateAt8_a008_b078 c hbc
  · exact targetOrbitCertificateAt8_a008_b079 c hbc
  · exact targetOrbitCertificateAt8_a008_b080 c hbc
  · exact targetOrbitCertificateAt8_a008_b081 c hbc
  · exact targetOrbitCertificateAt8_a008_b082 c hbc
  · exact targetOrbitCertificateAt8_a008_b083 c hbc
  · exact targetOrbitCertificateAt8_a008_b084 c hbc
  · exact targetOrbitCertificateAt8_a008_b085 c hbc
  · exact targetOrbitCertificateAt8_a008_b086 c hbc
  · exact targetOrbitCertificateAt8_a008_b087 c hbc
  · exact targetOrbitCertificateAt8_a008_b088 c hbc
  · exact targetOrbitCertificateAt8_a008_b089 c hbc
  · exact targetOrbitCertificateAt8_a008_b090 c hbc
  · exact targetOrbitCertificateAt8_a008_b091 c hbc
  · exact targetOrbitCertificateAt8_a008_b092 c hbc
  · exact targetOrbitCertificateAt8_a008_b093 c hbc
  · exact targetOrbitCertificateAt8_a008_b094 c hbc
  · exact targetOrbitCertificateAt8_a008_b095 c hbc
  · exact targetOrbitCertificateAt8_a008_b096 c hbc
  · exact targetOrbitCertificateAt8_a008_b097 c hbc
  · exact targetOrbitCertificateAt8_a008_b098 c hbc
  · exact targetOrbitCertificateAt8_a008_b099 c hbc
  · exact targetOrbitCertificateAt8_a008_b100 c hbc
  · exact targetOrbitCertificateAt8_a008_b101 c hbc
  · exact targetOrbitCertificateAt8_a008_b102 c hbc
  · exact targetOrbitCertificateAt8_a008_b103 c hbc
  · exact targetOrbitCertificateAt8_a008_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
