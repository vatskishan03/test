import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A001B097_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A000

/-! # Dispatch over `b` for the fixed first index `a = 1` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a001
    (b c : Fin 105)
    (hab : (1 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (1 : Fin 105) b c := by
  fin_cases b
  · simp at hab
  · exact targetOrbitCertificateAt8_a001_b001 c hbc
  · exact targetOrbitCertificateAt8_a001_b002 c hbc
  · exact targetOrbitCertificateAt8_a001_b003 c hbc
  · exact targetOrbitCertificateAt8_a001_b004 c hbc
  · exact targetOrbitCertificateAt8_a001_b005 c hbc
  · exact targetOrbitCertificateAt8_a001_b006 c hbc
  · exact targetOrbitCertificateAt8_a001_b007 c hbc
  · exact targetOrbitCertificateAt8_a001_b008 c hbc
  · exact targetOrbitCertificateAt8_a001_b009 c hbc
  · exact targetOrbitCertificateAt8_a001_b010 c hbc
  · exact targetOrbitCertificateAt8_a001_b011 c hbc
  · exact targetOrbitCertificateAt8_a001_b012 c hbc
  · exact targetOrbitCertificateAt8_a001_b013 c hbc
  · exact targetOrbitCertificateAt8_a001_b014 c hbc
  · exact targetOrbitCertificateAt8_a001_b015 c hbc
  · exact targetOrbitCertificateAt8_a001_b016 c hbc
  · exact targetOrbitCertificateAt8_a001_b017 c hbc
  · exact targetOrbitCertificateAt8_a001_b018 c hbc
  · exact targetOrbitCertificateAt8_a001_b019 c hbc
  · exact targetOrbitCertificateAt8_a001_b020 c hbc
  · exact targetOrbitCertificateAt8_a001_b021 c hbc
  · exact targetOrbitCertificateAt8_a001_b022 c hbc
  · exact targetOrbitCertificateAt8_a001_b023 c hbc
  · exact targetOrbitCertificateAt8_a001_b024 c hbc
  · exact targetOrbitCertificateAt8_a001_b025 c hbc
  · exact targetOrbitCertificateAt8_a001_b026 c hbc
  · exact targetOrbitCertificateAt8_a001_b027 c hbc
  · exact targetOrbitCertificateAt8_a001_b028 c hbc
  · exact targetOrbitCertificateAt8_a001_b029 c hbc
  · exact targetOrbitCertificateAt8_a001_b030 c hbc
  · exact targetOrbitCertificateAt8_a001_b031 c hbc
  · exact targetOrbitCertificateAt8_a001_b032 c hbc
  · exact targetOrbitCertificateAt8_a001_b033 c hbc
  · exact targetOrbitCertificateAt8_a001_b034 c hbc
  · exact targetOrbitCertificateAt8_a001_b035 c hbc
  · exact targetOrbitCertificateAt8_a001_b036 c hbc
  · exact targetOrbitCertificateAt8_a001_b037 c hbc
  · exact targetOrbitCertificateAt8_a001_b038 c hbc
  · exact targetOrbitCertificateAt8_a001_b039 c hbc
  · exact targetOrbitCertificateAt8_a001_b040 c hbc
  · exact targetOrbitCertificateAt8_a001_b041 c hbc
  · exact targetOrbitCertificateAt8_a001_b042 c hbc
  · exact targetOrbitCertificateAt8_a001_b043 c hbc
  · exact targetOrbitCertificateAt8_a001_b044 c hbc
  · exact targetOrbitCertificateAt8_a001_b045 c hbc
  · exact targetOrbitCertificateAt8_a001_b046 c hbc
  · exact targetOrbitCertificateAt8_a001_b047 c hbc
  · exact targetOrbitCertificateAt8_a001_b048 c hbc
  · exact targetOrbitCertificateAt8_a001_b049 c hbc
  · exact targetOrbitCertificateAt8_a001_b050 c hbc
  · exact targetOrbitCertificateAt8_a001_b051 c hbc
  · exact targetOrbitCertificateAt8_a001_b052 c hbc
  · exact targetOrbitCertificateAt8_a001_b053 c hbc
  · exact targetOrbitCertificateAt8_a001_b054 c hbc
  · exact targetOrbitCertificateAt8_a001_b055 c hbc
  · exact targetOrbitCertificateAt8_a001_b056 c hbc
  · exact targetOrbitCertificateAt8_a001_b057 c hbc
  · exact targetOrbitCertificateAt8_a001_b058 c hbc
  · exact targetOrbitCertificateAt8_a001_b059 c hbc
  · exact targetOrbitCertificateAt8_a001_b060 c hbc
  · exact targetOrbitCertificateAt8_a001_b061 c hbc
  · exact targetOrbitCertificateAt8_a001_b062 c hbc
  · exact targetOrbitCertificateAt8_a001_b063 c hbc
  · exact targetOrbitCertificateAt8_a001_b064 c hbc
  · exact targetOrbitCertificateAt8_a001_b065 c hbc
  · exact targetOrbitCertificateAt8_a001_b066 c hbc
  · exact targetOrbitCertificateAt8_a001_b067 c hbc
  · exact targetOrbitCertificateAt8_a001_b068 c hbc
  · exact targetOrbitCertificateAt8_a001_b069 c hbc
  · exact targetOrbitCertificateAt8_a001_b070 c hbc
  · exact targetOrbitCertificateAt8_a001_b071 c hbc
  · exact targetOrbitCertificateAt8_a001_b072 c hbc
  · exact targetOrbitCertificateAt8_a001_b073 c hbc
  · exact targetOrbitCertificateAt8_a001_b074 c hbc
  · exact targetOrbitCertificateAt8_a001_b075 c hbc
  · exact targetOrbitCertificateAt8_a001_b076 c hbc
  · exact targetOrbitCertificateAt8_a001_b077 c hbc
  · exact targetOrbitCertificateAt8_a001_b078 c hbc
  · exact targetOrbitCertificateAt8_a001_b079 c hbc
  · exact targetOrbitCertificateAt8_a001_b080 c hbc
  · exact targetOrbitCertificateAt8_a001_b081 c hbc
  · exact targetOrbitCertificateAt8_a001_b082 c hbc
  · exact targetOrbitCertificateAt8_a001_b083 c hbc
  · exact targetOrbitCertificateAt8_a001_b084 c hbc
  · exact targetOrbitCertificateAt8_a001_b085 c hbc
  · exact targetOrbitCertificateAt8_a001_b086 c hbc
  · exact targetOrbitCertificateAt8_a001_b087 c hbc
  · exact targetOrbitCertificateAt8_a001_b088 c hbc
  · exact targetOrbitCertificateAt8_a001_b089 c hbc
  · exact targetOrbitCertificateAt8_a001_b090 c hbc
  · exact targetOrbitCertificateAt8_a001_b091 c hbc
  · exact targetOrbitCertificateAt8_a001_b092 c hbc
  · exact targetOrbitCertificateAt8_a001_b093 c hbc
  · exact targetOrbitCertificateAt8_a001_b094 c hbc
  · exact targetOrbitCertificateAt8_a001_b095 c hbc
  · exact targetOrbitCertificateAt8_a001_b096 c hbc
  · exact targetOrbitCertificateAt8_a001_b097 c hbc
  · exact targetOrbitCertificateAt8_a001_b098 c hbc
  · exact targetOrbitCertificateAt8_a001_b099 c hbc
  · exact targetOrbitCertificateAt8_a001_b100 c hbc
  · exact targetOrbitCertificateAt8_a001_b101 c hbc
  · exact targetOrbitCertificateAt8_a001_b102 c hbc
  · exact targetOrbitCertificateAt8_a001_b103 c hbc
  · exact targetOrbitCertificateAt8_a001_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
