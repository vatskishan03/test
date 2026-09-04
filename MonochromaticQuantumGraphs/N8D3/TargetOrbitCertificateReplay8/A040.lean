import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A040B040_047
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A040B048_055
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A040B056_063
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A040B064_071
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A040B072_079
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A040B080_087
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A040B088_095
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A040B096_103
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A040B104_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A035

/-! # Dispatch over `b` for the fixed first index `a = 40` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a040
    (b c : Fin 105)
    (hab : (40 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (40 : Fin 105) b c := by
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
  · exact targetOrbitCertificateAt8_a040_b040 c hbc
  · exact targetOrbitCertificateAt8_a040_b041 c hbc
  · exact targetOrbitCertificateAt8_a040_b042 c hbc
  · exact targetOrbitCertificateAt8_a040_b043 c hbc
  · exact targetOrbitCertificateAt8_a040_b044 c hbc
  · exact targetOrbitCertificateAt8_a040_b045 c hbc
  · exact targetOrbitCertificateAt8_a040_b046 c hbc
  · exact targetOrbitCertificateAt8_a040_b047 c hbc
  · exact targetOrbitCertificateAt8_a040_b048 c hbc
  · exact targetOrbitCertificateAt8_a040_b049 c hbc
  · exact targetOrbitCertificateAt8_a040_b050 c hbc
  · exact targetOrbitCertificateAt8_a040_b051 c hbc
  · exact targetOrbitCertificateAt8_a040_b052 c hbc
  · exact targetOrbitCertificateAt8_a040_b053 c hbc
  · exact targetOrbitCertificateAt8_a040_b054 c hbc
  · exact targetOrbitCertificateAt8_a040_b055 c hbc
  · exact targetOrbitCertificateAt8_a040_b056 c hbc
  · exact targetOrbitCertificateAt8_a040_b057 c hbc
  · exact targetOrbitCertificateAt8_a040_b058 c hbc
  · exact targetOrbitCertificateAt8_a040_b059 c hbc
  · exact targetOrbitCertificateAt8_a040_b060 c hbc
  · exact targetOrbitCertificateAt8_a040_b061 c hbc
  · exact targetOrbitCertificateAt8_a040_b062 c hbc
  · exact targetOrbitCertificateAt8_a040_b063 c hbc
  · exact targetOrbitCertificateAt8_a040_b064 c hbc
  · exact targetOrbitCertificateAt8_a040_b065 c hbc
  · exact targetOrbitCertificateAt8_a040_b066 c hbc
  · exact targetOrbitCertificateAt8_a040_b067 c hbc
  · exact targetOrbitCertificateAt8_a040_b068 c hbc
  · exact targetOrbitCertificateAt8_a040_b069 c hbc
  · exact targetOrbitCertificateAt8_a040_b070 c hbc
  · exact targetOrbitCertificateAt8_a040_b071 c hbc
  · exact targetOrbitCertificateAt8_a040_b072 c hbc
  · exact targetOrbitCertificateAt8_a040_b073 c hbc
  · exact targetOrbitCertificateAt8_a040_b074 c hbc
  · exact targetOrbitCertificateAt8_a040_b075 c hbc
  · exact targetOrbitCertificateAt8_a040_b076 c hbc
  · exact targetOrbitCertificateAt8_a040_b077 c hbc
  · exact targetOrbitCertificateAt8_a040_b078 c hbc
  · exact targetOrbitCertificateAt8_a040_b079 c hbc
  · exact targetOrbitCertificateAt8_a040_b080 c hbc
  · exact targetOrbitCertificateAt8_a040_b081 c hbc
  · exact targetOrbitCertificateAt8_a040_b082 c hbc
  · exact targetOrbitCertificateAt8_a040_b083 c hbc
  · exact targetOrbitCertificateAt8_a040_b084 c hbc
  · exact targetOrbitCertificateAt8_a040_b085 c hbc
  · exact targetOrbitCertificateAt8_a040_b086 c hbc
  · exact targetOrbitCertificateAt8_a040_b087 c hbc
  · exact targetOrbitCertificateAt8_a040_b088 c hbc
  · exact targetOrbitCertificateAt8_a040_b089 c hbc
  · exact targetOrbitCertificateAt8_a040_b090 c hbc
  · exact targetOrbitCertificateAt8_a040_b091 c hbc
  · exact targetOrbitCertificateAt8_a040_b092 c hbc
  · exact targetOrbitCertificateAt8_a040_b093 c hbc
  · exact targetOrbitCertificateAt8_a040_b094 c hbc
  · exact targetOrbitCertificateAt8_a040_b095 c hbc
  · exact targetOrbitCertificateAt8_a040_b096 c hbc
  · exact targetOrbitCertificateAt8_a040_b097 c hbc
  · exact targetOrbitCertificateAt8_a040_b098 c hbc
  · exact targetOrbitCertificateAt8_a040_b099 c hbc
  · exact targetOrbitCertificateAt8_a040_b100 c hbc
  · exact targetOrbitCertificateAt8_a040_b101 c hbc
  · exact targetOrbitCertificateAt8_a040_b102 c hbc
  · exact targetOrbitCertificateAt8_a040_b103 c hbc
  · exact targetOrbitCertificateAt8_a040_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
