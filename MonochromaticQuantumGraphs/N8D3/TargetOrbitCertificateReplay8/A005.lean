import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A005B101_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A004

/-! # Dispatch over `b` for the fixed first index `a = 5` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a005
    (b c : Fin 105)
    (hab : (5 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (5 : Fin 105) b c := by
  fin_cases b
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a005_b005 c hbc
  · exact targetOrbitCertificateAt8_a005_b006 c hbc
  · exact targetOrbitCertificateAt8_a005_b007 c hbc
  · exact targetOrbitCertificateAt8_a005_b008 c hbc
  · exact targetOrbitCertificateAt8_a005_b009 c hbc
  · exact targetOrbitCertificateAt8_a005_b010 c hbc
  · exact targetOrbitCertificateAt8_a005_b011 c hbc
  · exact targetOrbitCertificateAt8_a005_b012 c hbc
  · exact targetOrbitCertificateAt8_a005_b013 c hbc
  · exact targetOrbitCertificateAt8_a005_b014 c hbc
  · exact targetOrbitCertificateAt8_a005_b015 c hbc
  · exact targetOrbitCertificateAt8_a005_b016 c hbc
  · exact targetOrbitCertificateAt8_a005_b017 c hbc
  · exact targetOrbitCertificateAt8_a005_b018 c hbc
  · exact targetOrbitCertificateAt8_a005_b019 c hbc
  · exact targetOrbitCertificateAt8_a005_b020 c hbc
  · exact targetOrbitCertificateAt8_a005_b021 c hbc
  · exact targetOrbitCertificateAt8_a005_b022 c hbc
  · exact targetOrbitCertificateAt8_a005_b023 c hbc
  · exact targetOrbitCertificateAt8_a005_b024 c hbc
  · exact targetOrbitCertificateAt8_a005_b025 c hbc
  · exact targetOrbitCertificateAt8_a005_b026 c hbc
  · exact targetOrbitCertificateAt8_a005_b027 c hbc
  · exact targetOrbitCertificateAt8_a005_b028 c hbc
  · exact targetOrbitCertificateAt8_a005_b029 c hbc
  · exact targetOrbitCertificateAt8_a005_b030 c hbc
  · exact targetOrbitCertificateAt8_a005_b031 c hbc
  · exact targetOrbitCertificateAt8_a005_b032 c hbc
  · exact targetOrbitCertificateAt8_a005_b033 c hbc
  · exact targetOrbitCertificateAt8_a005_b034 c hbc
  · exact targetOrbitCertificateAt8_a005_b035 c hbc
  · exact targetOrbitCertificateAt8_a005_b036 c hbc
  · exact targetOrbitCertificateAt8_a005_b037 c hbc
  · exact targetOrbitCertificateAt8_a005_b038 c hbc
  · exact targetOrbitCertificateAt8_a005_b039 c hbc
  · exact targetOrbitCertificateAt8_a005_b040 c hbc
  · exact targetOrbitCertificateAt8_a005_b041 c hbc
  · exact targetOrbitCertificateAt8_a005_b042 c hbc
  · exact targetOrbitCertificateAt8_a005_b043 c hbc
  · exact targetOrbitCertificateAt8_a005_b044 c hbc
  · exact targetOrbitCertificateAt8_a005_b045 c hbc
  · exact targetOrbitCertificateAt8_a005_b046 c hbc
  · exact targetOrbitCertificateAt8_a005_b047 c hbc
  · exact targetOrbitCertificateAt8_a005_b048 c hbc
  · exact targetOrbitCertificateAt8_a005_b049 c hbc
  · exact targetOrbitCertificateAt8_a005_b050 c hbc
  · exact targetOrbitCertificateAt8_a005_b051 c hbc
  · exact targetOrbitCertificateAt8_a005_b052 c hbc
  · exact targetOrbitCertificateAt8_a005_b053 c hbc
  · exact targetOrbitCertificateAt8_a005_b054 c hbc
  · exact targetOrbitCertificateAt8_a005_b055 c hbc
  · exact targetOrbitCertificateAt8_a005_b056 c hbc
  · exact targetOrbitCertificateAt8_a005_b057 c hbc
  · exact targetOrbitCertificateAt8_a005_b058 c hbc
  · exact targetOrbitCertificateAt8_a005_b059 c hbc
  · exact targetOrbitCertificateAt8_a005_b060 c hbc
  · exact targetOrbitCertificateAt8_a005_b061 c hbc
  · exact targetOrbitCertificateAt8_a005_b062 c hbc
  · exact targetOrbitCertificateAt8_a005_b063 c hbc
  · exact targetOrbitCertificateAt8_a005_b064 c hbc
  · exact targetOrbitCertificateAt8_a005_b065 c hbc
  · exact targetOrbitCertificateAt8_a005_b066 c hbc
  · exact targetOrbitCertificateAt8_a005_b067 c hbc
  · exact targetOrbitCertificateAt8_a005_b068 c hbc
  · exact targetOrbitCertificateAt8_a005_b069 c hbc
  · exact targetOrbitCertificateAt8_a005_b070 c hbc
  · exact targetOrbitCertificateAt8_a005_b071 c hbc
  · exact targetOrbitCertificateAt8_a005_b072 c hbc
  · exact targetOrbitCertificateAt8_a005_b073 c hbc
  · exact targetOrbitCertificateAt8_a005_b074 c hbc
  · exact targetOrbitCertificateAt8_a005_b075 c hbc
  · exact targetOrbitCertificateAt8_a005_b076 c hbc
  · exact targetOrbitCertificateAt8_a005_b077 c hbc
  · exact targetOrbitCertificateAt8_a005_b078 c hbc
  · exact targetOrbitCertificateAt8_a005_b079 c hbc
  · exact targetOrbitCertificateAt8_a005_b080 c hbc
  · exact targetOrbitCertificateAt8_a005_b081 c hbc
  · exact targetOrbitCertificateAt8_a005_b082 c hbc
  · exact targetOrbitCertificateAt8_a005_b083 c hbc
  · exact targetOrbitCertificateAt8_a005_b084 c hbc
  · exact targetOrbitCertificateAt8_a005_b085 c hbc
  · exact targetOrbitCertificateAt8_a005_b086 c hbc
  · exact targetOrbitCertificateAt8_a005_b087 c hbc
  · exact targetOrbitCertificateAt8_a005_b088 c hbc
  · exact targetOrbitCertificateAt8_a005_b089 c hbc
  · exact targetOrbitCertificateAt8_a005_b090 c hbc
  · exact targetOrbitCertificateAt8_a005_b091 c hbc
  · exact targetOrbitCertificateAt8_a005_b092 c hbc
  · exact targetOrbitCertificateAt8_a005_b093 c hbc
  · exact targetOrbitCertificateAt8_a005_b094 c hbc
  · exact targetOrbitCertificateAt8_a005_b095 c hbc
  · exact targetOrbitCertificateAt8_a005_b096 c hbc
  · exact targetOrbitCertificateAt8_a005_b097 c hbc
  · exact targetOrbitCertificateAt8_a005_b098 c hbc
  · exact targetOrbitCertificateAt8_a005_b099 c hbc
  · exact targetOrbitCertificateAt8_a005_b100 c hbc
  · exact targetOrbitCertificateAt8_a005_b101 c hbc
  · exact targetOrbitCertificateAt8_a005_b102 c hbc
  · exact targetOrbitCertificateAt8_a005_b103 c hbc
  · exact targetOrbitCertificateAt8_a005_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
