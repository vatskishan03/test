import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A081B081_088
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A081B089_096
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A081B097_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A074

/-! # Dispatch over `b` for the fixed first index `a = 81` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a081
    (b c : Fin 105)
    (hab : (81 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (81 : Fin 105) b c := by
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
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a081_b081 c hbc
  · exact targetOrbitCertificateAt8_a081_b082 c hbc
  · exact targetOrbitCertificateAt8_a081_b083 c hbc
  · exact targetOrbitCertificateAt8_a081_b084 c hbc
  · exact targetOrbitCertificateAt8_a081_b085 c hbc
  · exact targetOrbitCertificateAt8_a081_b086 c hbc
  · exact targetOrbitCertificateAt8_a081_b087 c hbc
  · exact targetOrbitCertificateAt8_a081_b088 c hbc
  · exact targetOrbitCertificateAt8_a081_b089 c hbc
  · exact targetOrbitCertificateAt8_a081_b090 c hbc
  · exact targetOrbitCertificateAt8_a081_b091 c hbc
  · exact targetOrbitCertificateAt8_a081_b092 c hbc
  · exact targetOrbitCertificateAt8_a081_b093 c hbc
  · exact targetOrbitCertificateAt8_a081_b094 c hbc
  · exact targetOrbitCertificateAt8_a081_b095 c hbc
  · exact targetOrbitCertificateAt8_a081_b096 c hbc
  · exact targetOrbitCertificateAt8_a081_b097 c hbc
  · exact targetOrbitCertificateAt8_a081_b098 c hbc
  · exact targetOrbitCertificateAt8_a081_b099 c hbc
  · exact targetOrbitCertificateAt8_a081_b100 c hbc
  · exact targetOrbitCertificateAt8_a081_b101 c hbc
  · exact targetOrbitCertificateAt8_a081_b102 c hbc
  · exact targetOrbitCertificateAt8_a081_b103 c hbc
  · exact targetOrbitCertificateAt8_a081_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
