import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A009B081_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A008

/-! # Dispatch over `b` for the fixed first index `a = 9` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a009
    (b c : Fin 105)
    (hab : (9 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (9 : Fin 105) b c := by
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
  · exact targetOrbitCertificateAt8_a009_b009 c hbc
  · exact targetOrbitCertificateAt8_a009_b010 c hbc
  · exact targetOrbitCertificateAt8_a009_b011 c hbc
  · exact targetOrbitCertificateAt8_a009_b012 c hbc
  · exact targetOrbitCertificateAt8_a009_b013 c hbc
  · exact targetOrbitCertificateAt8_a009_b014 c hbc
  · exact targetOrbitCertificateAt8_a009_b015 c hbc
  · exact targetOrbitCertificateAt8_a009_b016 c hbc
  · exact targetOrbitCertificateAt8_a009_b017 c hbc
  · exact targetOrbitCertificateAt8_a009_b018 c hbc
  · exact targetOrbitCertificateAt8_a009_b019 c hbc
  · exact targetOrbitCertificateAt8_a009_b020 c hbc
  · exact targetOrbitCertificateAt8_a009_b021 c hbc
  · exact targetOrbitCertificateAt8_a009_b022 c hbc
  · exact targetOrbitCertificateAt8_a009_b023 c hbc
  · exact targetOrbitCertificateAt8_a009_b024 c hbc
  · exact targetOrbitCertificateAt8_a009_b025 c hbc
  · exact targetOrbitCertificateAt8_a009_b026 c hbc
  · exact targetOrbitCertificateAt8_a009_b027 c hbc
  · exact targetOrbitCertificateAt8_a009_b028 c hbc
  · exact targetOrbitCertificateAt8_a009_b029 c hbc
  · exact targetOrbitCertificateAt8_a009_b030 c hbc
  · exact targetOrbitCertificateAt8_a009_b031 c hbc
  · exact targetOrbitCertificateAt8_a009_b032 c hbc
  · exact targetOrbitCertificateAt8_a009_b033 c hbc
  · exact targetOrbitCertificateAt8_a009_b034 c hbc
  · exact targetOrbitCertificateAt8_a009_b035 c hbc
  · exact targetOrbitCertificateAt8_a009_b036 c hbc
  · exact targetOrbitCertificateAt8_a009_b037 c hbc
  · exact targetOrbitCertificateAt8_a009_b038 c hbc
  · exact targetOrbitCertificateAt8_a009_b039 c hbc
  · exact targetOrbitCertificateAt8_a009_b040 c hbc
  · exact targetOrbitCertificateAt8_a009_b041 c hbc
  · exact targetOrbitCertificateAt8_a009_b042 c hbc
  · exact targetOrbitCertificateAt8_a009_b043 c hbc
  · exact targetOrbitCertificateAt8_a009_b044 c hbc
  · exact targetOrbitCertificateAt8_a009_b045 c hbc
  · exact targetOrbitCertificateAt8_a009_b046 c hbc
  · exact targetOrbitCertificateAt8_a009_b047 c hbc
  · exact targetOrbitCertificateAt8_a009_b048 c hbc
  · exact targetOrbitCertificateAt8_a009_b049 c hbc
  · exact targetOrbitCertificateAt8_a009_b050 c hbc
  · exact targetOrbitCertificateAt8_a009_b051 c hbc
  · exact targetOrbitCertificateAt8_a009_b052 c hbc
  · exact targetOrbitCertificateAt8_a009_b053 c hbc
  · exact targetOrbitCertificateAt8_a009_b054 c hbc
  · exact targetOrbitCertificateAt8_a009_b055 c hbc
  · exact targetOrbitCertificateAt8_a009_b056 c hbc
  · exact targetOrbitCertificateAt8_a009_b057 c hbc
  · exact targetOrbitCertificateAt8_a009_b058 c hbc
  · exact targetOrbitCertificateAt8_a009_b059 c hbc
  · exact targetOrbitCertificateAt8_a009_b060 c hbc
  · exact targetOrbitCertificateAt8_a009_b061 c hbc
  · exact targetOrbitCertificateAt8_a009_b062 c hbc
  · exact targetOrbitCertificateAt8_a009_b063 c hbc
  · exact targetOrbitCertificateAt8_a009_b064 c hbc
  · exact targetOrbitCertificateAt8_a009_b065 c hbc
  · exact targetOrbitCertificateAt8_a009_b066 c hbc
  · exact targetOrbitCertificateAt8_a009_b067 c hbc
  · exact targetOrbitCertificateAt8_a009_b068 c hbc
  · exact targetOrbitCertificateAt8_a009_b069 c hbc
  · exact targetOrbitCertificateAt8_a009_b070 c hbc
  · exact targetOrbitCertificateAt8_a009_b071 c hbc
  · exact targetOrbitCertificateAt8_a009_b072 c hbc
  · exact targetOrbitCertificateAt8_a009_b073 c hbc
  · exact targetOrbitCertificateAt8_a009_b074 c hbc
  · exact targetOrbitCertificateAt8_a009_b075 c hbc
  · exact targetOrbitCertificateAt8_a009_b076 c hbc
  · exact targetOrbitCertificateAt8_a009_b077 c hbc
  · exact targetOrbitCertificateAt8_a009_b078 c hbc
  · exact targetOrbitCertificateAt8_a009_b079 c hbc
  · exact targetOrbitCertificateAt8_a009_b080 c hbc
  · exact targetOrbitCertificateAt8_a009_b081 c hbc
  · exact targetOrbitCertificateAt8_a009_b082 c hbc
  · exact targetOrbitCertificateAt8_a009_b083 c hbc
  · exact targetOrbitCertificateAt8_a009_b084 c hbc
  · exact targetOrbitCertificateAt8_a009_b085 c hbc
  · exact targetOrbitCertificateAt8_a009_b086 c hbc
  · exact targetOrbitCertificateAt8_a009_b087 c hbc
  · exact targetOrbitCertificateAt8_a009_b088 c hbc
  · exact targetOrbitCertificateAt8_a009_b089 c hbc
  · exact targetOrbitCertificateAt8_a009_b090 c hbc
  · exact targetOrbitCertificateAt8_a009_b091 c hbc
  · exact targetOrbitCertificateAt8_a009_b092 c hbc
  · exact targetOrbitCertificateAt8_a009_b093 c hbc
  · exact targetOrbitCertificateAt8_a009_b094 c hbc
  · exact targetOrbitCertificateAt8_a009_b095 c hbc
  · exact targetOrbitCertificateAt8_a009_b096 c hbc
  · exact targetOrbitCertificateAt8_a009_b097 c hbc
  · exact targetOrbitCertificateAt8_a009_b098 c hbc
  · exact targetOrbitCertificateAt8_a009_b099 c hbc
  · exact targetOrbitCertificateAt8_a009_b100 c hbc
  · exact targetOrbitCertificateAt8_a009_b101 c hbc
  · exact targetOrbitCertificateAt8_a009_b102 c hbc
  · exact targetOrbitCertificateAt8_a009_b103 c hbc
  · exact targetOrbitCertificateAt8_a009_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
