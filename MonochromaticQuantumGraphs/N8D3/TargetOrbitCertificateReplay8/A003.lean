import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A003B099_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A002

/-! # Dispatch over `b` for the fixed first index `a = 3` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a003
    (b c : Fin 105)
    (hab : (3 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (3 : Fin 105) b c := by
  fin_cases b
  · simp at hab
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a003_b003 c hbc
  · exact targetOrbitCertificateAt8_a003_b004 c hbc
  · exact targetOrbitCertificateAt8_a003_b005 c hbc
  · exact targetOrbitCertificateAt8_a003_b006 c hbc
  · exact targetOrbitCertificateAt8_a003_b007 c hbc
  · exact targetOrbitCertificateAt8_a003_b008 c hbc
  · exact targetOrbitCertificateAt8_a003_b009 c hbc
  · exact targetOrbitCertificateAt8_a003_b010 c hbc
  · exact targetOrbitCertificateAt8_a003_b011 c hbc
  · exact targetOrbitCertificateAt8_a003_b012 c hbc
  · exact targetOrbitCertificateAt8_a003_b013 c hbc
  · exact targetOrbitCertificateAt8_a003_b014 c hbc
  · exact targetOrbitCertificateAt8_a003_b015 c hbc
  · exact targetOrbitCertificateAt8_a003_b016 c hbc
  · exact targetOrbitCertificateAt8_a003_b017 c hbc
  · exact targetOrbitCertificateAt8_a003_b018 c hbc
  · exact targetOrbitCertificateAt8_a003_b019 c hbc
  · exact targetOrbitCertificateAt8_a003_b020 c hbc
  · exact targetOrbitCertificateAt8_a003_b021 c hbc
  · exact targetOrbitCertificateAt8_a003_b022 c hbc
  · exact targetOrbitCertificateAt8_a003_b023 c hbc
  · exact targetOrbitCertificateAt8_a003_b024 c hbc
  · exact targetOrbitCertificateAt8_a003_b025 c hbc
  · exact targetOrbitCertificateAt8_a003_b026 c hbc
  · exact targetOrbitCertificateAt8_a003_b027 c hbc
  · exact targetOrbitCertificateAt8_a003_b028 c hbc
  · exact targetOrbitCertificateAt8_a003_b029 c hbc
  · exact targetOrbitCertificateAt8_a003_b030 c hbc
  · exact targetOrbitCertificateAt8_a003_b031 c hbc
  · exact targetOrbitCertificateAt8_a003_b032 c hbc
  · exact targetOrbitCertificateAt8_a003_b033 c hbc
  · exact targetOrbitCertificateAt8_a003_b034 c hbc
  · exact targetOrbitCertificateAt8_a003_b035 c hbc
  · exact targetOrbitCertificateAt8_a003_b036 c hbc
  · exact targetOrbitCertificateAt8_a003_b037 c hbc
  · exact targetOrbitCertificateAt8_a003_b038 c hbc
  · exact targetOrbitCertificateAt8_a003_b039 c hbc
  · exact targetOrbitCertificateAt8_a003_b040 c hbc
  · exact targetOrbitCertificateAt8_a003_b041 c hbc
  · exact targetOrbitCertificateAt8_a003_b042 c hbc
  · exact targetOrbitCertificateAt8_a003_b043 c hbc
  · exact targetOrbitCertificateAt8_a003_b044 c hbc
  · exact targetOrbitCertificateAt8_a003_b045 c hbc
  · exact targetOrbitCertificateAt8_a003_b046 c hbc
  · exact targetOrbitCertificateAt8_a003_b047 c hbc
  · exact targetOrbitCertificateAt8_a003_b048 c hbc
  · exact targetOrbitCertificateAt8_a003_b049 c hbc
  · exact targetOrbitCertificateAt8_a003_b050 c hbc
  · exact targetOrbitCertificateAt8_a003_b051 c hbc
  · exact targetOrbitCertificateAt8_a003_b052 c hbc
  · exact targetOrbitCertificateAt8_a003_b053 c hbc
  · exact targetOrbitCertificateAt8_a003_b054 c hbc
  · exact targetOrbitCertificateAt8_a003_b055 c hbc
  · exact targetOrbitCertificateAt8_a003_b056 c hbc
  · exact targetOrbitCertificateAt8_a003_b057 c hbc
  · exact targetOrbitCertificateAt8_a003_b058 c hbc
  · exact targetOrbitCertificateAt8_a003_b059 c hbc
  · exact targetOrbitCertificateAt8_a003_b060 c hbc
  · exact targetOrbitCertificateAt8_a003_b061 c hbc
  · exact targetOrbitCertificateAt8_a003_b062 c hbc
  · exact targetOrbitCertificateAt8_a003_b063 c hbc
  · exact targetOrbitCertificateAt8_a003_b064 c hbc
  · exact targetOrbitCertificateAt8_a003_b065 c hbc
  · exact targetOrbitCertificateAt8_a003_b066 c hbc
  · exact targetOrbitCertificateAt8_a003_b067 c hbc
  · exact targetOrbitCertificateAt8_a003_b068 c hbc
  · exact targetOrbitCertificateAt8_a003_b069 c hbc
  · exact targetOrbitCertificateAt8_a003_b070 c hbc
  · exact targetOrbitCertificateAt8_a003_b071 c hbc
  · exact targetOrbitCertificateAt8_a003_b072 c hbc
  · exact targetOrbitCertificateAt8_a003_b073 c hbc
  · exact targetOrbitCertificateAt8_a003_b074 c hbc
  · exact targetOrbitCertificateAt8_a003_b075 c hbc
  · exact targetOrbitCertificateAt8_a003_b076 c hbc
  · exact targetOrbitCertificateAt8_a003_b077 c hbc
  · exact targetOrbitCertificateAt8_a003_b078 c hbc
  · exact targetOrbitCertificateAt8_a003_b079 c hbc
  · exact targetOrbitCertificateAt8_a003_b080 c hbc
  · exact targetOrbitCertificateAt8_a003_b081 c hbc
  · exact targetOrbitCertificateAt8_a003_b082 c hbc
  · exact targetOrbitCertificateAt8_a003_b083 c hbc
  · exact targetOrbitCertificateAt8_a003_b084 c hbc
  · exact targetOrbitCertificateAt8_a003_b085 c hbc
  · exact targetOrbitCertificateAt8_a003_b086 c hbc
  · exact targetOrbitCertificateAt8_a003_b087 c hbc
  · exact targetOrbitCertificateAt8_a003_b088 c hbc
  · exact targetOrbitCertificateAt8_a003_b089 c hbc
  · exact targetOrbitCertificateAt8_a003_b090 c hbc
  · exact targetOrbitCertificateAt8_a003_b091 c hbc
  · exact targetOrbitCertificateAt8_a003_b092 c hbc
  · exact targetOrbitCertificateAt8_a003_b093 c hbc
  · exact targetOrbitCertificateAt8_a003_b094 c hbc
  · exact targetOrbitCertificateAt8_a003_b095 c hbc
  · exact targetOrbitCertificateAt8_a003_b096 c hbc
  · exact targetOrbitCertificateAt8_a003_b097 c hbc
  · exact targetOrbitCertificateAt8_a003_b098 c hbc
  · exact targetOrbitCertificateAt8_a003_b099 c hbc
  · exact targetOrbitCertificateAt8_a003_b100 c hbc
  · exact targetOrbitCertificateAt8_a003_b101 c hbc
  · exact targetOrbitCertificateAt8_a003_b102 c hbc
  · exact targetOrbitCertificateAt8_a003_b103 c hbc
  · exact targetOrbitCertificateAt8_a003_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
