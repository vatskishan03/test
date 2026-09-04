import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A075B075_082
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A075B083_090
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A075B091_098
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A075B099_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A068

/-! # Dispatch over `b` for the fixed first index `a = 75` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a075
    (b c : Fin 105)
    (hab : (75 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (75 : Fin 105) b c := by
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
  · exact targetOrbitCertificateAt8_a075_b075 c hbc
  · exact targetOrbitCertificateAt8_a075_b076 c hbc
  · exact targetOrbitCertificateAt8_a075_b077 c hbc
  · exact targetOrbitCertificateAt8_a075_b078 c hbc
  · exact targetOrbitCertificateAt8_a075_b079 c hbc
  · exact targetOrbitCertificateAt8_a075_b080 c hbc
  · exact targetOrbitCertificateAt8_a075_b081 c hbc
  · exact targetOrbitCertificateAt8_a075_b082 c hbc
  · exact targetOrbitCertificateAt8_a075_b083 c hbc
  · exact targetOrbitCertificateAt8_a075_b084 c hbc
  · exact targetOrbitCertificateAt8_a075_b085 c hbc
  · exact targetOrbitCertificateAt8_a075_b086 c hbc
  · exact targetOrbitCertificateAt8_a075_b087 c hbc
  · exact targetOrbitCertificateAt8_a075_b088 c hbc
  · exact targetOrbitCertificateAt8_a075_b089 c hbc
  · exact targetOrbitCertificateAt8_a075_b090 c hbc
  · exact targetOrbitCertificateAt8_a075_b091 c hbc
  · exact targetOrbitCertificateAt8_a075_b092 c hbc
  · exact targetOrbitCertificateAt8_a075_b093 c hbc
  · exact targetOrbitCertificateAt8_a075_b094 c hbc
  · exact targetOrbitCertificateAt8_a075_b095 c hbc
  · exact targetOrbitCertificateAt8_a075_b096 c hbc
  · exact targetOrbitCertificateAt8_a075_b097 c hbc
  · exact targetOrbitCertificateAt8_a075_b098 c hbc
  · exact targetOrbitCertificateAt8_a075_b099 c hbc
  · exact targetOrbitCertificateAt8_a075_b100 c hbc
  · exact targetOrbitCertificateAt8_a075_b101 c hbc
  · exact targetOrbitCertificateAt8_a075_b102 c hbc
  · exact targetOrbitCertificateAt8_a075_b103 c hbc
  · exact targetOrbitCertificateAt8_a075_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
