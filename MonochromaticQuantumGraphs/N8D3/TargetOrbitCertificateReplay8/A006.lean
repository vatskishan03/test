import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A006B102_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A005

/-! # Dispatch over `b` for the fixed first index `a = 6` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a006
    (b c : Fin 105)
    (hab : (6 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (6 : Fin 105) b c := by
  fin_cases b
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a006_b006 c hbc
  · exact targetOrbitCertificateAt8_a006_b007 c hbc
  · exact targetOrbitCertificateAt8_a006_b008 c hbc
  · exact targetOrbitCertificateAt8_a006_b009 c hbc
  · exact targetOrbitCertificateAt8_a006_b010 c hbc
  · exact targetOrbitCertificateAt8_a006_b011 c hbc
  · exact targetOrbitCertificateAt8_a006_b012 c hbc
  · exact targetOrbitCertificateAt8_a006_b013 c hbc
  · exact targetOrbitCertificateAt8_a006_b014 c hbc
  · exact targetOrbitCertificateAt8_a006_b015 c hbc
  · exact targetOrbitCertificateAt8_a006_b016 c hbc
  · exact targetOrbitCertificateAt8_a006_b017 c hbc
  · exact targetOrbitCertificateAt8_a006_b018 c hbc
  · exact targetOrbitCertificateAt8_a006_b019 c hbc
  · exact targetOrbitCertificateAt8_a006_b020 c hbc
  · exact targetOrbitCertificateAt8_a006_b021 c hbc
  · exact targetOrbitCertificateAt8_a006_b022 c hbc
  · exact targetOrbitCertificateAt8_a006_b023 c hbc
  · exact targetOrbitCertificateAt8_a006_b024 c hbc
  · exact targetOrbitCertificateAt8_a006_b025 c hbc
  · exact targetOrbitCertificateAt8_a006_b026 c hbc
  · exact targetOrbitCertificateAt8_a006_b027 c hbc
  · exact targetOrbitCertificateAt8_a006_b028 c hbc
  · exact targetOrbitCertificateAt8_a006_b029 c hbc
  · exact targetOrbitCertificateAt8_a006_b030 c hbc
  · exact targetOrbitCertificateAt8_a006_b031 c hbc
  · exact targetOrbitCertificateAt8_a006_b032 c hbc
  · exact targetOrbitCertificateAt8_a006_b033 c hbc
  · exact targetOrbitCertificateAt8_a006_b034 c hbc
  · exact targetOrbitCertificateAt8_a006_b035 c hbc
  · exact targetOrbitCertificateAt8_a006_b036 c hbc
  · exact targetOrbitCertificateAt8_a006_b037 c hbc
  · exact targetOrbitCertificateAt8_a006_b038 c hbc
  · exact targetOrbitCertificateAt8_a006_b039 c hbc
  · exact targetOrbitCertificateAt8_a006_b040 c hbc
  · exact targetOrbitCertificateAt8_a006_b041 c hbc
  · exact targetOrbitCertificateAt8_a006_b042 c hbc
  · exact targetOrbitCertificateAt8_a006_b043 c hbc
  · exact targetOrbitCertificateAt8_a006_b044 c hbc
  · exact targetOrbitCertificateAt8_a006_b045 c hbc
  · exact targetOrbitCertificateAt8_a006_b046 c hbc
  · exact targetOrbitCertificateAt8_a006_b047 c hbc
  · exact targetOrbitCertificateAt8_a006_b048 c hbc
  · exact targetOrbitCertificateAt8_a006_b049 c hbc
  · exact targetOrbitCertificateAt8_a006_b050 c hbc
  · exact targetOrbitCertificateAt8_a006_b051 c hbc
  · exact targetOrbitCertificateAt8_a006_b052 c hbc
  · exact targetOrbitCertificateAt8_a006_b053 c hbc
  · exact targetOrbitCertificateAt8_a006_b054 c hbc
  · exact targetOrbitCertificateAt8_a006_b055 c hbc
  · exact targetOrbitCertificateAt8_a006_b056 c hbc
  · exact targetOrbitCertificateAt8_a006_b057 c hbc
  · exact targetOrbitCertificateAt8_a006_b058 c hbc
  · exact targetOrbitCertificateAt8_a006_b059 c hbc
  · exact targetOrbitCertificateAt8_a006_b060 c hbc
  · exact targetOrbitCertificateAt8_a006_b061 c hbc
  · exact targetOrbitCertificateAt8_a006_b062 c hbc
  · exact targetOrbitCertificateAt8_a006_b063 c hbc
  · exact targetOrbitCertificateAt8_a006_b064 c hbc
  · exact targetOrbitCertificateAt8_a006_b065 c hbc
  · exact targetOrbitCertificateAt8_a006_b066 c hbc
  · exact targetOrbitCertificateAt8_a006_b067 c hbc
  · exact targetOrbitCertificateAt8_a006_b068 c hbc
  · exact targetOrbitCertificateAt8_a006_b069 c hbc
  · exact targetOrbitCertificateAt8_a006_b070 c hbc
  · exact targetOrbitCertificateAt8_a006_b071 c hbc
  · exact targetOrbitCertificateAt8_a006_b072 c hbc
  · exact targetOrbitCertificateAt8_a006_b073 c hbc
  · exact targetOrbitCertificateAt8_a006_b074 c hbc
  · exact targetOrbitCertificateAt8_a006_b075 c hbc
  · exact targetOrbitCertificateAt8_a006_b076 c hbc
  · exact targetOrbitCertificateAt8_a006_b077 c hbc
  · exact targetOrbitCertificateAt8_a006_b078 c hbc
  · exact targetOrbitCertificateAt8_a006_b079 c hbc
  · exact targetOrbitCertificateAt8_a006_b080 c hbc
  · exact targetOrbitCertificateAt8_a006_b081 c hbc
  · exact targetOrbitCertificateAt8_a006_b082 c hbc
  · exact targetOrbitCertificateAt8_a006_b083 c hbc
  · exact targetOrbitCertificateAt8_a006_b084 c hbc
  · exact targetOrbitCertificateAt8_a006_b085 c hbc
  · exact targetOrbitCertificateAt8_a006_b086 c hbc
  · exact targetOrbitCertificateAt8_a006_b087 c hbc
  · exact targetOrbitCertificateAt8_a006_b088 c hbc
  · exact targetOrbitCertificateAt8_a006_b089 c hbc
  · exact targetOrbitCertificateAt8_a006_b090 c hbc
  · exact targetOrbitCertificateAt8_a006_b091 c hbc
  · exact targetOrbitCertificateAt8_a006_b092 c hbc
  · exact targetOrbitCertificateAt8_a006_b093 c hbc
  · exact targetOrbitCertificateAt8_a006_b094 c hbc
  · exact targetOrbitCertificateAt8_a006_b095 c hbc
  · exact targetOrbitCertificateAt8_a006_b096 c hbc
  · exact targetOrbitCertificateAt8_a006_b097 c hbc
  · exact targetOrbitCertificateAt8_a006_b098 c hbc
  · exact targetOrbitCertificateAt8_a006_b099 c hbc
  · exact targetOrbitCertificateAt8_a006_b100 c hbc
  · exact targetOrbitCertificateAt8_a006_b101 c hbc
  · exact targetOrbitCertificateAt8_a006_b102 c hbc
  · exact targetOrbitCertificateAt8_a006_b103 c hbc
  · exact targetOrbitCertificateAt8_a006_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
