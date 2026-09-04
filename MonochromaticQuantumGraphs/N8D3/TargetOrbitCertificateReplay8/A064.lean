import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A064B064_071
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A064B072_079
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A064B080_087
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A064B088_095
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A064B096_103
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A064B104_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A057

/-! # Dispatch over `b` for the fixed first index `a = 64` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a064
    (b c : Fin 105)
    (hab : (64 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (64 : Fin 105) b c := by
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
  · exact targetOrbitCertificateAt8_a064_b064 c hbc
  · exact targetOrbitCertificateAt8_a064_b065 c hbc
  · exact targetOrbitCertificateAt8_a064_b066 c hbc
  · exact targetOrbitCertificateAt8_a064_b067 c hbc
  · exact targetOrbitCertificateAt8_a064_b068 c hbc
  · exact targetOrbitCertificateAt8_a064_b069 c hbc
  · exact targetOrbitCertificateAt8_a064_b070 c hbc
  · exact targetOrbitCertificateAt8_a064_b071 c hbc
  · exact targetOrbitCertificateAt8_a064_b072 c hbc
  · exact targetOrbitCertificateAt8_a064_b073 c hbc
  · exact targetOrbitCertificateAt8_a064_b074 c hbc
  · exact targetOrbitCertificateAt8_a064_b075 c hbc
  · exact targetOrbitCertificateAt8_a064_b076 c hbc
  · exact targetOrbitCertificateAt8_a064_b077 c hbc
  · exact targetOrbitCertificateAt8_a064_b078 c hbc
  · exact targetOrbitCertificateAt8_a064_b079 c hbc
  · exact targetOrbitCertificateAt8_a064_b080 c hbc
  · exact targetOrbitCertificateAt8_a064_b081 c hbc
  · exact targetOrbitCertificateAt8_a064_b082 c hbc
  · exact targetOrbitCertificateAt8_a064_b083 c hbc
  · exact targetOrbitCertificateAt8_a064_b084 c hbc
  · exact targetOrbitCertificateAt8_a064_b085 c hbc
  · exact targetOrbitCertificateAt8_a064_b086 c hbc
  · exact targetOrbitCertificateAt8_a064_b087 c hbc
  · exact targetOrbitCertificateAt8_a064_b088 c hbc
  · exact targetOrbitCertificateAt8_a064_b089 c hbc
  · exact targetOrbitCertificateAt8_a064_b090 c hbc
  · exact targetOrbitCertificateAt8_a064_b091 c hbc
  · exact targetOrbitCertificateAt8_a064_b092 c hbc
  · exact targetOrbitCertificateAt8_a064_b093 c hbc
  · exact targetOrbitCertificateAt8_a064_b094 c hbc
  · exact targetOrbitCertificateAt8_a064_b095 c hbc
  · exact targetOrbitCertificateAt8_a064_b096 c hbc
  · exact targetOrbitCertificateAt8_a064_b097 c hbc
  · exact targetOrbitCertificateAt8_a064_b098 c hbc
  · exact targetOrbitCertificateAt8_a064_b099 c hbc
  · exact targetOrbitCertificateAt8_a064_b100 c hbc
  · exact targetOrbitCertificateAt8_a064_b101 c hbc
  · exact targetOrbitCertificateAt8_a064_b102 c hbc
  · exact targetOrbitCertificateAt8_a064_b103 c hbc
  · exact targetOrbitCertificateAt8_a064_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
