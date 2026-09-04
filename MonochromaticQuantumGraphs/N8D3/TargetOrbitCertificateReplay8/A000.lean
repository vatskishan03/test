import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A000B096_104

/-! # Dispatch over `b` for the fixed first index `a = 0` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a000
    (b c : Fin 105)
    (hab : (0 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (0 : Fin 105) b c := by
  fin_cases b
  · exact targetOrbitCertificateAt8_a000_b000 c hbc
  · exact targetOrbitCertificateAt8_a000_b001 c hbc
  · exact targetOrbitCertificateAt8_a000_b002 c hbc
  · exact targetOrbitCertificateAt8_a000_b003 c hbc
  · exact targetOrbitCertificateAt8_a000_b004 c hbc
  · exact targetOrbitCertificateAt8_a000_b005 c hbc
  · exact targetOrbitCertificateAt8_a000_b006 c hbc
  · exact targetOrbitCertificateAt8_a000_b007 c hbc
  · exact targetOrbitCertificateAt8_a000_b008 c hbc
  · exact targetOrbitCertificateAt8_a000_b009 c hbc
  · exact targetOrbitCertificateAt8_a000_b010 c hbc
  · exact targetOrbitCertificateAt8_a000_b011 c hbc
  · exact targetOrbitCertificateAt8_a000_b012 c hbc
  · exact targetOrbitCertificateAt8_a000_b013 c hbc
  · exact targetOrbitCertificateAt8_a000_b014 c hbc
  · exact targetOrbitCertificateAt8_a000_b015 c hbc
  · exact targetOrbitCertificateAt8_a000_b016 c hbc
  · exact targetOrbitCertificateAt8_a000_b017 c hbc
  · exact targetOrbitCertificateAt8_a000_b018 c hbc
  · exact targetOrbitCertificateAt8_a000_b019 c hbc
  · exact targetOrbitCertificateAt8_a000_b020 c hbc
  · exact targetOrbitCertificateAt8_a000_b021 c hbc
  · exact targetOrbitCertificateAt8_a000_b022 c hbc
  · exact targetOrbitCertificateAt8_a000_b023 c hbc
  · exact targetOrbitCertificateAt8_a000_b024 c hbc
  · exact targetOrbitCertificateAt8_a000_b025 c hbc
  · exact targetOrbitCertificateAt8_a000_b026 c hbc
  · exact targetOrbitCertificateAt8_a000_b027 c hbc
  · exact targetOrbitCertificateAt8_a000_b028 c hbc
  · exact targetOrbitCertificateAt8_a000_b029 c hbc
  · exact targetOrbitCertificateAt8_a000_b030 c hbc
  · exact targetOrbitCertificateAt8_a000_b031 c hbc
  · exact targetOrbitCertificateAt8_a000_b032 c hbc
  · exact targetOrbitCertificateAt8_a000_b033 c hbc
  · exact targetOrbitCertificateAt8_a000_b034 c hbc
  · exact targetOrbitCertificateAt8_a000_b035 c hbc
  · exact targetOrbitCertificateAt8_a000_b036 c hbc
  · exact targetOrbitCertificateAt8_a000_b037 c hbc
  · exact targetOrbitCertificateAt8_a000_b038 c hbc
  · exact targetOrbitCertificateAt8_a000_b039 c hbc
  · exact targetOrbitCertificateAt8_a000_b040 c hbc
  · exact targetOrbitCertificateAt8_a000_b041 c hbc
  · exact targetOrbitCertificateAt8_a000_b042 c hbc
  · exact targetOrbitCertificateAt8_a000_b043 c hbc
  · exact targetOrbitCertificateAt8_a000_b044 c hbc
  · exact targetOrbitCertificateAt8_a000_b045 c hbc
  · exact targetOrbitCertificateAt8_a000_b046 c hbc
  · exact targetOrbitCertificateAt8_a000_b047 c hbc
  · exact targetOrbitCertificateAt8_a000_b048 c hbc
  · exact targetOrbitCertificateAt8_a000_b049 c hbc
  · exact targetOrbitCertificateAt8_a000_b050 c hbc
  · exact targetOrbitCertificateAt8_a000_b051 c hbc
  · exact targetOrbitCertificateAt8_a000_b052 c hbc
  · exact targetOrbitCertificateAt8_a000_b053 c hbc
  · exact targetOrbitCertificateAt8_a000_b054 c hbc
  · exact targetOrbitCertificateAt8_a000_b055 c hbc
  · exact targetOrbitCertificateAt8_a000_b056 c hbc
  · exact targetOrbitCertificateAt8_a000_b057 c hbc
  · exact targetOrbitCertificateAt8_a000_b058 c hbc
  · exact targetOrbitCertificateAt8_a000_b059 c hbc
  · exact targetOrbitCertificateAt8_a000_b060 c hbc
  · exact targetOrbitCertificateAt8_a000_b061 c hbc
  · exact targetOrbitCertificateAt8_a000_b062 c hbc
  · exact targetOrbitCertificateAt8_a000_b063 c hbc
  · exact targetOrbitCertificateAt8_a000_b064 c hbc
  · exact targetOrbitCertificateAt8_a000_b065 c hbc
  · exact targetOrbitCertificateAt8_a000_b066 c hbc
  · exact targetOrbitCertificateAt8_a000_b067 c hbc
  · exact targetOrbitCertificateAt8_a000_b068 c hbc
  · exact targetOrbitCertificateAt8_a000_b069 c hbc
  · exact targetOrbitCertificateAt8_a000_b070 c hbc
  · exact targetOrbitCertificateAt8_a000_b071 c hbc
  · exact targetOrbitCertificateAt8_a000_b072 c hbc
  · exact targetOrbitCertificateAt8_a000_b073 c hbc
  · exact targetOrbitCertificateAt8_a000_b074 c hbc
  · exact targetOrbitCertificateAt8_a000_b075 c hbc
  · exact targetOrbitCertificateAt8_a000_b076 c hbc
  · exact targetOrbitCertificateAt8_a000_b077 c hbc
  · exact targetOrbitCertificateAt8_a000_b078 c hbc
  · exact targetOrbitCertificateAt8_a000_b079 c hbc
  · exact targetOrbitCertificateAt8_a000_b080 c hbc
  · exact targetOrbitCertificateAt8_a000_b081 c hbc
  · exact targetOrbitCertificateAt8_a000_b082 c hbc
  · exact targetOrbitCertificateAt8_a000_b083 c hbc
  · exact targetOrbitCertificateAt8_a000_b084 c hbc
  · exact targetOrbitCertificateAt8_a000_b085 c hbc
  · exact targetOrbitCertificateAt8_a000_b086 c hbc
  · exact targetOrbitCertificateAt8_a000_b087 c hbc
  · exact targetOrbitCertificateAt8_a000_b088 c hbc
  · exact targetOrbitCertificateAt8_a000_b089 c hbc
  · exact targetOrbitCertificateAt8_a000_b090 c hbc
  · exact targetOrbitCertificateAt8_a000_b091 c hbc
  · exact targetOrbitCertificateAt8_a000_b092 c hbc
  · exact targetOrbitCertificateAt8_a000_b093 c hbc
  · exact targetOrbitCertificateAt8_a000_b094 c hbc
  · exact targetOrbitCertificateAt8_a000_b095 c hbc
  · exact targetOrbitCertificateAt8_a000_b096 c hbc
  · exact targetOrbitCertificateAt8_a000_b097 c hbc
  · exact targetOrbitCertificateAt8_a000_b098 c hbc
  · exact targetOrbitCertificateAt8_a000_b099 c hbc
  · exact targetOrbitCertificateAt8_a000_b100 c hbc
  · exact targetOrbitCertificateAt8_a000_b101 c hbc
  · exact targetOrbitCertificateAt8_a000_b102 c hbc
  · exact targetOrbitCertificateAt8_a000_b103 c hbc
  · exact targetOrbitCertificateAt8_a000_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
