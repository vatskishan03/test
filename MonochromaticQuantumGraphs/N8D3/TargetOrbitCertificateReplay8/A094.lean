import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A094B094_101
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A094B102_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A087

/-! # Dispatch over `b` for the fixed first index `a = 94` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a094
    (b c : Fin 105)
    (hab : (94 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (94 : Fin 105) b c := by
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
  · exact targetOrbitCertificateAt8_a094_b094 c hbc
  · exact targetOrbitCertificateAt8_a094_b095 c hbc
  · exact targetOrbitCertificateAt8_a094_b096 c hbc
  · exact targetOrbitCertificateAt8_a094_b097 c hbc
  · exact targetOrbitCertificateAt8_a094_b098 c hbc
  · exact targetOrbitCertificateAt8_a094_b099 c hbc
  · exact targetOrbitCertificateAt8_a094_b100 c hbc
  · exact targetOrbitCertificateAt8_a094_b101 c hbc
  · exact targetOrbitCertificateAt8_a094_b102 c hbc
  · exact targetOrbitCertificateAt8_a094_b103 c hbc
  · exact targetOrbitCertificateAt8_a094_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
