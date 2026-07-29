import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A007B103_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A006

/-! # Dispatch over `b` for the fixed first index `a = 7` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a007
    (b c : Fin 105)
    (hab : (7 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (7 : Fin 105) b c := by
  fin_cases b
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a007_b007 c hbc
  · exact targetOrbitCertificateAt8_a007_b008 c hbc
  · exact targetOrbitCertificateAt8_a007_b009 c hbc
  · exact targetOrbitCertificateAt8_a007_b010 c hbc
  · exact targetOrbitCertificateAt8_a007_b011 c hbc
  · exact targetOrbitCertificateAt8_a007_b012 c hbc
  · exact targetOrbitCertificateAt8_a007_b013 c hbc
  · exact targetOrbitCertificateAt8_a007_b014 c hbc
  · exact targetOrbitCertificateAt8_a007_b015 c hbc
  · exact targetOrbitCertificateAt8_a007_b016 c hbc
  · exact targetOrbitCertificateAt8_a007_b017 c hbc
  · exact targetOrbitCertificateAt8_a007_b018 c hbc
  · exact targetOrbitCertificateAt8_a007_b019 c hbc
  · exact targetOrbitCertificateAt8_a007_b020 c hbc
  · exact targetOrbitCertificateAt8_a007_b021 c hbc
  · exact targetOrbitCertificateAt8_a007_b022 c hbc
  · exact targetOrbitCertificateAt8_a007_b023 c hbc
  · exact targetOrbitCertificateAt8_a007_b024 c hbc
  · exact targetOrbitCertificateAt8_a007_b025 c hbc
  · exact targetOrbitCertificateAt8_a007_b026 c hbc
  · exact targetOrbitCertificateAt8_a007_b027 c hbc
  · exact targetOrbitCertificateAt8_a007_b028 c hbc
  · exact targetOrbitCertificateAt8_a007_b029 c hbc
  · exact targetOrbitCertificateAt8_a007_b030 c hbc
  · exact targetOrbitCertificateAt8_a007_b031 c hbc
  · exact targetOrbitCertificateAt8_a007_b032 c hbc
  · exact targetOrbitCertificateAt8_a007_b033 c hbc
  · exact targetOrbitCertificateAt8_a007_b034 c hbc
  · exact targetOrbitCertificateAt8_a007_b035 c hbc
  · exact targetOrbitCertificateAt8_a007_b036 c hbc
  · exact targetOrbitCertificateAt8_a007_b037 c hbc
  · exact targetOrbitCertificateAt8_a007_b038 c hbc
  · exact targetOrbitCertificateAt8_a007_b039 c hbc
  · exact targetOrbitCertificateAt8_a007_b040 c hbc
  · exact targetOrbitCertificateAt8_a007_b041 c hbc
  · exact targetOrbitCertificateAt8_a007_b042 c hbc
  · exact targetOrbitCertificateAt8_a007_b043 c hbc
  · exact targetOrbitCertificateAt8_a007_b044 c hbc
  · exact targetOrbitCertificateAt8_a007_b045 c hbc
  · exact targetOrbitCertificateAt8_a007_b046 c hbc
  · exact targetOrbitCertificateAt8_a007_b047 c hbc
  · exact targetOrbitCertificateAt8_a007_b048 c hbc
  · exact targetOrbitCertificateAt8_a007_b049 c hbc
  · exact targetOrbitCertificateAt8_a007_b050 c hbc
  · exact targetOrbitCertificateAt8_a007_b051 c hbc
  · exact targetOrbitCertificateAt8_a007_b052 c hbc
  · exact targetOrbitCertificateAt8_a007_b053 c hbc
  · exact targetOrbitCertificateAt8_a007_b054 c hbc
  · exact targetOrbitCertificateAt8_a007_b055 c hbc
  · exact targetOrbitCertificateAt8_a007_b056 c hbc
  · exact targetOrbitCertificateAt8_a007_b057 c hbc
  · exact targetOrbitCertificateAt8_a007_b058 c hbc
  · exact targetOrbitCertificateAt8_a007_b059 c hbc
  · exact targetOrbitCertificateAt8_a007_b060 c hbc
  · exact targetOrbitCertificateAt8_a007_b061 c hbc
  · exact targetOrbitCertificateAt8_a007_b062 c hbc
  · exact targetOrbitCertificateAt8_a007_b063 c hbc
  · exact targetOrbitCertificateAt8_a007_b064 c hbc
  · exact targetOrbitCertificateAt8_a007_b065 c hbc
  · exact targetOrbitCertificateAt8_a007_b066 c hbc
  · exact targetOrbitCertificateAt8_a007_b067 c hbc
  · exact targetOrbitCertificateAt8_a007_b068 c hbc
  · exact targetOrbitCertificateAt8_a007_b069 c hbc
  · exact targetOrbitCertificateAt8_a007_b070 c hbc
  · exact targetOrbitCertificateAt8_a007_b071 c hbc
  · exact targetOrbitCertificateAt8_a007_b072 c hbc
  · exact targetOrbitCertificateAt8_a007_b073 c hbc
  · exact targetOrbitCertificateAt8_a007_b074 c hbc
  · exact targetOrbitCertificateAt8_a007_b075 c hbc
  · exact targetOrbitCertificateAt8_a007_b076 c hbc
  · exact targetOrbitCertificateAt8_a007_b077 c hbc
  · exact targetOrbitCertificateAt8_a007_b078 c hbc
  · exact targetOrbitCertificateAt8_a007_b079 c hbc
  · exact targetOrbitCertificateAt8_a007_b080 c hbc
  · exact targetOrbitCertificateAt8_a007_b081 c hbc
  · exact targetOrbitCertificateAt8_a007_b082 c hbc
  · exact targetOrbitCertificateAt8_a007_b083 c hbc
  · exact targetOrbitCertificateAt8_a007_b084 c hbc
  · exact targetOrbitCertificateAt8_a007_b085 c hbc
  · exact targetOrbitCertificateAt8_a007_b086 c hbc
  · exact targetOrbitCertificateAt8_a007_b087 c hbc
  · exact targetOrbitCertificateAt8_a007_b088 c hbc
  · exact targetOrbitCertificateAt8_a007_b089 c hbc
  · exact targetOrbitCertificateAt8_a007_b090 c hbc
  · exact targetOrbitCertificateAt8_a007_b091 c hbc
  · exact targetOrbitCertificateAt8_a007_b092 c hbc
  · exact targetOrbitCertificateAt8_a007_b093 c hbc
  · exact targetOrbitCertificateAt8_a007_b094 c hbc
  · exact targetOrbitCertificateAt8_a007_b095 c hbc
  · exact targetOrbitCertificateAt8_a007_b096 c hbc
  · exact targetOrbitCertificateAt8_a007_b097 c hbc
  · exact targetOrbitCertificateAt8_a007_b098 c hbc
  · exact targetOrbitCertificateAt8_a007_b099 c hbc
  · exact targetOrbitCertificateAt8_a007_b100 c hbc
  · exact targetOrbitCertificateAt8_a007_b101 c hbc
  · exact targetOrbitCertificateAt8_a007_b102 c hbc
  · exact targetOrbitCertificateAt8_a007_b103 c hbc
  · exact targetOrbitCertificateAt8_a007_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
