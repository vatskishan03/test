import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A002B098_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A001

/-! # Dispatch over `b` for the fixed first index `a = 2` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a002
    (b c : Fin 105)
    (hab : (2 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (2 : Fin 105) b c := by
  fin_cases b
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a002_b002 c hbc
  · exact targetOrbitCertificateAt8_a002_b003 c hbc
  · exact targetOrbitCertificateAt8_a002_b004 c hbc
  · exact targetOrbitCertificateAt8_a002_b005 c hbc
  · exact targetOrbitCertificateAt8_a002_b006 c hbc
  · exact targetOrbitCertificateAt8_a002_b007 c hbc
  · exact targetOrbitCertificateAt8_a002_b008 c hbc
  · exact targetOrbitCertificateAt8_a002_b009 c hbc
  · exact targetOrbitCertificateAt8_a002_b010 c hbc
  · exact targetOrbitCertificateAt8_a002_b011 c hbc
  · exact targetOrbitCertificateAt8_a002_b012 c hbc
  · exact targetOrbitCertificateAt8_a002_b013 c hbc
  · exact targetOrbitCertificateAt8_a002_b014 c hbc
  · exact targetOrbitCertificateAt8_a002_b015 c hbc
  · exact targetOrbitCertificateAt8_a002_b016 c hbc
  · exact targetOrbitCertificateAt8_a002_b017 c hbc
  · exact targetOrbitCertificateAt8_a002_b018 c hbc
  · exact targetOrbitCertificateAt8_a002_b019 c hbc
  · exact targetOrbitCertificateAt8_a002_b020 c hbc
  · exact targetOrbitCertificateAt8_a002_b021 c hbc
  · exact targetOrbitCertificateAt8_a002_b022 c hbc
  · exact targetOrbitCertificateAt8_a002_b023 c hbc
  · exact targetOrbitCertificateAt8_a002_b024 c hbc
  · exact targetOrbitCertificateAt8_a002_b025 c hbc
  · exact targetOrbitCertificateAt8_a002_b026 c hbc
  · exact targetOrbitCertificateAt8_a002_b027 c hbc
  · exact targetOrbitCertificateAt8_a002_b028 c hbc
  · exact targetOrbitCertificateAt8_a002_b029 c hbc
  · exact targetOrbitCertificateAt8_a002_b030 c hbc
  · exact targetOrbitCertificateAt8_a002_b031 c hbc
  · exact targetOrbitCertificateAt8_a002_b032 c hbc
  · exact targetOrbitCertificateAt8_a002_b033 c hbc
  · exact targetOrbitCertificateAt8_a002_b034 c hbc
  · exact targetOrbitCertificateAt8_a002_b035 c hbc
  · exact targetOrbitCertificateAt8_a002_b036 c hbc
  · exact targetOrbitCertificateAt8_a002_b037 c hbc
  · exact targetOrbitCertificateAt8_a002_b038 c hbc
  · exact targetOrbitCertificateAt8_a002_b039 c hbc
  · exact targetOrbitCertificateAt8_a002_b040 c hbc
  · exact targetOrbitCertificateAt8_a002_b041 c hbc
  · exact targetOrbitCertificateAt8_a002_b042 c hbc
  · exact targetOrbitCertificateAt8_a002_b043 c hbc
  · exact targetOrbitCertificateAt8_a002_b044 c hbc
  · exact targetOrbitCertificateAt8_a002_b045 c hbc
  · exact targetOrbitCertificateAt8_a002_b046 c hbc
  · exact targetOrbitCertificateAt8_a002_b047 c hbc
  · exact targetOrbitCertificateAt8_a002_b048 c hbc
  · exact targetOrbitCertificateAt8_a002_b049 c hbc
  · exact targetOrbitCertificateAt8_a002_b050 c hbc
  · exact targetOrbitCertificateAt8_a002_b051 c hbc
  · exact targetOrbitCertificateAt8_a002_b052 c hbc
  · exact targetOrbitCertificateAt8_a002_b053 c hbc
  · exact targetOrbitCertificateAt8_a002_b054 c hbc
  · exact targetOrbitCertificateAt8_a002_b055 c hbc
  · exact targetOrbitCertificateAt8_a002_b056 c hbc
  · exact targetOrbitCertificateAt8_a002_b057 c hbc
  · exact targetOrbitCertificateAt8_a002_b058 c hbc
  · exact targetOrbitCertificateAt8_a002_b059 c hbc
  · exact targetOrbitCertificateAt8_a002_b060 c hbc
  · exact targetOrbitCertificateAt8_a002_b061 c hbc
  · exact targetOrbitCertificateAt8_a002_b062 c hbc
  · exact targetOrbitCertificateAt8_a002_b063 c hbc
  · exact targetOrbitCertificateAt8_a002_b064 c hbc
  · exact targetOrbitCertificateAt8_a002_b065 c hbc
  · exact targetOrbitCertificateAt8_a002_b066 c hbc
  · exact targetOrbitCertificateAt8_a002_b067 c hbc
  · exact targetOrbitCertificateAt8_a002_b068 c hbc
  · exact targetOrbitCertificateAt8_a002_b069 c hbc
  · exact targetOrbitCertificateAt8_a002_b070 c hbc
  · exact targetOrbitCertificateAt8_a002_b071 c hbc
  · exact targetOrbitCertificateAt8_a002_b072 c hbc
  · exact targetOrbitCertificateAt8_a002_b073 c hbc
  · exact targetOrbitCertificateAt8_a002_b074 c hbc
  · exact targetOrbitCertificateAt8_a002_b075 c hbc
  · exact targetOrbitCertificateAt8_a002_b076 c hbc
  · exact targetOrbitCertificateAt8_a002_b077 c hbc
  · exact targetOrbitCertificateAt8_a002_b078 c hbc
  · exact targetOrbitCertificateAt8_a002_b079 c hbc
  · exact targetOrbitCertificateAt8_a002_b080 c hbc
  · exact targetOrbitCertificateAt8_a002_b081 c hbc
  · exact targetOrbitCertificateAt8_a002_b082 c hbc
  · exact targetOrbitCertificateAt8_a002_b083 c hbc
  · exact targetOrbitCertificateAt8_a002_b084 c hbc
  · exact targetOrbitCertificateAt8_a002_b085 c hbc
  · exact targetOrbitCertificateAt8_a002_b086 c hbc
  · exact targetOrbitCertificateAt8_a002_b087 c hbc
  · exact targetOrbitCertificateAt8_a002_b088 c hbc
  · exact targetOrbitCertificateAt8_a002_b089 c hbc
  · exact targetOrbitCertificateAt8_a002_b090 c hbc
  · exact targetOrbitCertificateAt8_a002_b091 c hbc
  · exact targetOrbitCertificateAt8_a002_b092 c hbc
  · exact targetOrbitCertificateAt8_a002_b093 c hbc
  · exact targetOrbitCertificateAt8_a002_b094 c hbc
  · exact targetOrbitCertificateAt8_a002_b095 c hbc
  · exact targetOrbitCertificateAt8_a002_b096 c hbc
  · exact targetOrbitCertificateAt8_a002_b097 c hbc
  · exact targetOrbitCertificateAt8_a002_b098 c hbc
  · exact targetOrbitCertificateAt8_a002_b099 c hbc
  · exact targetOrbitCertificateAt8_a002_b100 c hbc
  · exact targetOrbitCertificateAt8_a002_b101 c hbc
  · exact targetOrbitCertificateAt8_a002_b102 c hbc
  · exact targetOrbitCertificateAt8_a002_b103 c hbc
  · exact targetOrbitCertificateAt8_a002_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
