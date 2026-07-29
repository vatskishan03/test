import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A010B082_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A009

/-! # Dispatch over `b` for the fixed first index `a = 10` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a010
    (b c : Fin 105)
    (hab : (10 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (10 : Fin 105) b c := by
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
  · exact targetOrbitCertificateAt8_a010_b010 c hbc
  · exact targetOrbitCertificateAt8_a010_b011 c hbc
  · exact targetOrbitCertificateAt8_a010_b012 c hbc
  · exact targetOrbitCertificateAt8_a010_b013 c hbc
  · exact targetOrbitCertificateAt8_a010_b014 c hbc
  · exact targetOrbitCertificateAt8_a010_b015 c hbc
  · exact targetOrbitCertificateAt8_a010_b016 c hbc
  · exact targetOrbitCertificateAt8_a010_b017 c hbc
  · exact targetOrbitCertificateAt8_a010_b018 c hbc
  · exact targetOrbitCertificateAt8_a010_b019 c hbc
  · exact targetOrbitCertificateAt8_a010_b020 c hbc
  · exact targetOrbitCertificateAt8_a010_b021 c hbc
  · exact targetOrbitCertificateAt8_a010_b022 c hbc
  · exact targetOrbitCertificateAt8_a010_b023 c hbc
  · exact targetOrbitCertificateAt8_a010_b024 c hbc
  · exact targetOrbitCertificateAt8_a010_b025 c hbc
  · exact targetOrbitCertificateAt8_a010_b026 c hbc
  · exact targetOrbitCertificateAt8_a010_b027 c hbc
  · exact targetOrbitCertificateAt8_a010_b028 c hbc
  · exact targetOrbitCertificateAt8_a010_b029 c hbc
  · exact targetOrbitCertificateAt8_a010_b030 c hbc
  · exact targetOrbitCertificateAt8_a010_b031 c hbc
  · exact targetOrbitCertificateAt8_a010_b032 c hbc
  · exact targetOrbitCertificateAt8_a010_b033 c hbc
  · exact targetOrbitCertificateAt8_a010_b034 c hbc
  · exact targetOrbitCertificateAt8_a010_b035 c hbc
  · exact targetOrbitCertificateAt8_a010_b036 c hbc
  · exact targetOrbitCertificateAt8_a010_b037 c hbc
  · exact targetOrbitCertificateAt8_a010_b038 c hbc
  · exact targetOrbitCertificateAt8_a010_b039 c hbc
  · exact targetOrbitCertificateAt8_a010_b040 c hbc
  · exact targetOrbitCertificateAt8_a010_b041 c hbc
  · exact targetOrbitCertificateAt8_a010_b042 c hbc
  · exact targetOrbitCertificateAt8_a010_b043 c hbc
  · exact targetOrbitCertificateAt8_a010_b044 c hbc
  · exact targetOrbitCertificateAt8_a010_b045 c hbc
  · exact targetOrbitCertificateAt8_a010_b046 c hbc
  · exact targetOrbitCertificateAt8_a010_b047 c hbc
  · exact targetOrbitCertificateAt8_a010_b048 c hbc
  · exact targetOrbitCertificateAt8_a010_b049 c hbc
  · exact targetOrbitCertificateAt8_a010_b050 c hbc
  · exact targetOrbitCertificateAt8_a010_b051 c hbc
  · exact targetOrbitCertificateAt8_a010_b052 c hbc
  · exact targetOrbitCertificateAt8_a010_b053 c hbc
  · exact targetOrbitCertificateAt8_a010_b054 c hbc
  · exact targetOrbitCertificateAt8_a010_b055 c hbc
  · exact targetOrbitCertificateAt8_a010_b056 c hbc
  · exact targetOrbitCertificateAt8_a010_b057 c hbc
  · exact targetOrbitCertificateAt8_a010_b058 c hbc
  · exact targetOrbitCertificateAt8_a010_b059 c hbc
  · exact targetOrbitCertificateAt8_a010_b060 c hbc
  · exact targetOrbitCertificateAt8_a010_b061 c hbc
  · exact targetOrbitCertificateAt8_a010_b062 c hbc
  · exact targetOrbitCertificateAt8_a010_b063 c hbc
  · exact targetOrbitCertificateAt8_a010_b064 c hbc
  · exact targetOrbitCertificateAt8_a010_b065 c hbc
  · exact targetOrbitCertificateAt8_a010_b066 c hbc
  · exact targetOrbitCertificateAt8_a010_b067 c hbc
  · exact targetOrbitCertificateAt8_a010_b068 c hbc
  · exact targetOrbitCertificateAt8_a010_b069 c hbc
  · exact targetOrbitCertificateAt8_a010_b070 c hbc
  · exact targetOrbitCertificateAt8_a010_b071 c hbc
  · exact targetOrbitCertificateAt8_a010_b072 c hbc
  · exact targetOrbitCertificateAt8_a010_b073 c hbc
  · exact targetOrbitCertificateAt8_a010_b074 c hbc
  · exact targetOrbitCertificateAt8_a010_b075 c hbc
  · exact targetOrbitCertificateAt8_a010_b076 c hbc
  · exact targetOrbitCertificateAt8_a010_b077 c hbc
  · exact targetOrbitCertificateAt8_a010_b078 c hbc
  · exact targetOrbitCertificateAt8_a010_b079 c hbc
  · exact targetOrbitCertificateAt8_a010_b080 c hbc
  · exact targetOrbitCertificateAt8_a010_b081 c hbc
  · exact targetOrbitCertificateAt8_a010_b082 c hbc
  · exact targetOrbitCertificateAt8_a010_b083 c hbc
  · exact targetOrbitCertificateAt8_a010_b084 c hbc
  · exact targetOrbitCertificateAt8_a010_b085 c hbc
  · exact targetOrbitCertificateAt8_a010_b086 c hbc
  · exact targetOrbitCertificateAt8_a010_b087 c hbc
  · exact targetOrbitCertificateAt8_a010_b088 c hbc
  · exact targetOrbitCertificateAt8_a010_b089 c hbc
  · exact targetOrbitCertificateAt8_a010_b090 c hbc
  · exact targetOrbitCertificateAt8_a010_b091 c hbc
  · exact targetOrbitCertificateAt8_a010_b092 c hbc
  · exact targetOrbitCertificateAt8_a010_b093 c hbc
  · exact targetOrbitCertificateAt8_a010_b094 c hbc
  · exact targetOrbitCertificateAt8_a010_b095 c hbc
  · exact targetOrbitCertificateAt8_a010_b096 c hbc
  · exact targetOrbitCertificateAt8_a010_b097 c hbc
  · exact targetOrbitCertificateAt8_a010_b098 c hbc
  · exact targetOrbitCertificateAt8_a010_b099 c hbc
  · exact targetOrbitCertificateAt8_a010_b100 c hbc
  · exact targetOrbitCertificateAt8_a010_b101 c hbc
  · exact targetOrbitCertificateAt8_a010_b102 c hbc
  · exact targetOrbitCertificateAt8_a010_b103 c hbc
  · exact targetOrbitCertificateAt8_a010_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
