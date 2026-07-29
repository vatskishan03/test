import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A004B100_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A003

/-! # Dispatch over `b` for the fixed first index `a = 4` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a004
    (b c : Fin 105)
    (hab : (4 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (4 : Fin 105) b c := by
  fin_cases b
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a004_b004 c hbc
  · exact targetOrbitCertificateAt8_a004_b005 c hbc
  · exact targetOrbitCertificateAt8_a004_b006 c hbc
  · exact targetOrbitCertificateAt8_a004_b007 c hbc
  · exact targetOrbitCertificateAt8_a004_b008 c hbc
  · exact targetOrbitCertificateAt8_a004_b009 c hbc
  · exact targetOrbitCertificateAt8_a004_b010 c hbc
  · exact targetOrbitCertificateAt8_a004_b011 c hbc
  · exact targetOrbitCertificateAt8_a004_b012 c hbc
  · exact targetOrbitCertificateAt8_a004_b013 c hbc
  · exact targetOrbitCertificateAt8_a004_b014 c hbc
  · exact targetOrbitCertificateAt8_a004_b015 c hbc
  · exact targetOrbitCertificateAt8_a004_b016 c hbc
  · exact targetOrbitCertificateAt8_a004_b017 c hbc
  · exact targetOrbitCertificateAt8_a004_b018 c hbc
  · exact targetOrbitCertificateAt8_a004_b019 c hbc
  · exact targetOrbitCertificateAt8_a004_b020 c hbc
  · exact targetOrbitCertificateAt8_a004_b021 c hbc
  · exact targetOrbitCertificateAt8_a004_b022 c hbc
  · exact targetOrbitCertificateAt8_a004_b023 c hbc
  · exact targetOrbitCertificateAt8_a004_b024 c hbc
  · exact targetOrbitCertificateAt8_a004_b025 c hbc
  · exact targetOrbitCertificateAt8_a004_b026 c hbc
  · exact targetOrbitCertificateAt8_a004_b027 c hbc
  · exact targetOrbitCertificateAt8_a004_b028 c hbc
  · exact targetOrbitCertificateAt8_a004_b029 c hbc
  · exact targetOrbitCertificateAt8_a004_b030 c hbc
  · exact targetOrbitCertificateAt8_a004_b031 c hbc
  · exact targetOrbitCertificateAt8_a004_b032 c hbc
  · exact targetOrbitCertificateAt8_a004_b033 c hbc
  · exact targetOrbitCertificateAt8_a004_b034 c hbc
  · exact targetOrbitCertificateAt8_a004_b035 c hbc
  · exact targetOrbitCertificateAt8_a004_b036 c hbc
  · exact targetOrbitCertificateAt8_a004_b037 c hbc
  · exact targetOrbitCertificateAt8_a004_b038 c hbc
  · exact targetOrbitCertificateAt8_a004_b039 c hbc
  · exact targetOrbitCertificateAt8_a004_b040 c hbc
  · exact targetOrbitCertificateAt8_a004_b041 c hbc
  · exact targetOrbitCertificateAt8_a004_b042 c hbc
  · exact targetOrbitCertificateAt8_a004_b043 c hbc
  · exact targetOrbitCertificateAt8_a004_b044 c hbc
  · exact targetOrbitCertificateAt8_a004_b045 c hbc
  · exact targetOrbitCertificateAt8_a004_b046 c hbc
  · exact targetOrbitCertificateAt8_a004_b047 c hbc
  · exact targetOrbitCertificateAt8_a004_b048 c hbc
  · exact targetOrbitCertificateAt8_a004_b049 c hbc
  · exact targetOrbitCertificateAt8_a004_b050 c hbc
  · exact targetOrbitCertificateAt8_a004_b051 c hbc
  · exact targetOrbitCertificateAt8_a004_b052 c hbc
  · exact targetOrbitCertificateAt8_a004_b053 c hbc
  · exact targetOrbitCertificateAt8_a004_b054 c hbc
  · exact targetOrbitCertificateAt8_a004_b055 c hbc
  · exact targetOrbitCertificateAt8_a004_b056 c hbc
  · exact targetOrbitCertificateAt8_a004_b057 c hbc
  · exact targetOrbitCertificateAt8_a004_b058 c hbc
  · exact targetOrbitCertificateAt8_a004_b059 c hbc
  · exact targetOrbitCertificateAt8_a004_b060 c hbc
  · exact targetOrbitCertificateAt8_a004_b061 c hbc
  · exact targetOrbitCertificateAt8_a004_b062 c hbc
  · exact targetOrbitCertificateAt8_a004_b063 c hbc
  · exact targetOrbitCertificateAt8_a004_b064 c hbc
  · exact targetOrbitCertificateAt8_a004_b065 c hbc
  · exact targetOrbitCertificateAt8_a004_b066 c hbc
  · exact targetOrbitCertificateAt8_a004_b067 c hbc
  · exact targetOrbitCertificateAt8_a004_b068 c hbc
  · exact targetOrbitCertificateAt8_a004_b069 c hbc
  · exact targetOrbitCertificateAt8_a004_b070 c hbc
  · exact targetOrbitCertificateAt8_a004_b071 c hbc
  · exact targetOrbitCertificateAt8_a004_b072 c hbc
  · exact targetOrbitCertificateAt8_a004_b073 c hbc
  · exact targetOrbitCertificateAt8_a004_b074 c hbc
  · exact targetOrbitCertificateAt8_a004_b075 c hbc
  · exact targetOrbitCertificateAt8_a004_b076 c hbc
  · exact targetOrbitCertificateAt8_a004_b077 c hbc
  · exact targetOrbitCertificateAt8_a004_b078 c hbc
  · exact targetOrbitCertificateAt8_a004_b079 c hbc
  · exact targetOrbitCertificateAt8_a004_b080 c hbc
  · exact targetOrbitCertificateAt8_a004_b081 c hbc
  · exact targetOrbitCertificateAt8_a004_b082 c hbc
  · exact targetOrbitCertificateAt8_a004_b083 c hbc
  · exact targetOrbitCertificateAt8_a004_b084 c hbc
  · exact targetOrbitCertificateAt8_a004_b085 c hbc
  · exact targetOrbitCertificateAt8_a004_b086 c hbc
  · exact targetOrbitCertificateAt8_a004_b087 c hbc
  · exact targetOrbitCertificateAt8_a004_b088 c hbc
  · exact targetOrbitCertificateAt8_a004_b089 c hbc
  · exact targetOrbitCertificateAt8_a004_b090 c hbc
  · exact targetOrbitCertificateAt8_a004_b091 c hbc
  · exact targetOrbitCertificateAt8_a004_b092 c hbc
  · exact targetOrbitCertificateAt8_a004_b093 c hbc
  · exact targetOrbitCertificateAt8_a004_b094 c hbc
  · exact targetOrbitCertificateAt8_a004_b095 c hbc
  · exact targetOrbitCertificateAt8_a004_b096 c hbc
  · exact targetOrbitCertificateAt8_a004_b097 c hbc
  · exact targetOrbitCertificateAt8_a004_b098 c hbc
  · exact targetOrbitCertificateAt8_a004_b099 c hbc
  · exact targetOrbitCertificateAt8_a004_b100 c hbc
  · exact targetOrbitCertificateAt8_a004_b101 c hbc
  · exact targetOrbitCertificateAt8_a004_b102 c hbc
  · exact targetOrbitCertificateAt8_a004_b103 c hbc
  · exact targetOrbitCertificateAt8_a004_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
