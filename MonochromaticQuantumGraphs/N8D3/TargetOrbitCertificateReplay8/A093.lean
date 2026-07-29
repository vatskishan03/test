import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A093B093_100
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A093B101_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A086

/-! # Dispatch over `b` for the fixed first index `a = 93` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a093
    (b c : Fin 105)
    (hab : (93 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (93 : Fin 105) b c := by
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
  · exact targetOrbitCertificateAt8_a093_b093 c hbc
  · exact targetOrbitCertificateAt8_a093_b094 c hbc
  · exact targetOrbitCertificateAt8_a093_b095 c hbc
  · exact targetOrbitCertificateAt8_a093_b096 c hbc
  · exact targetOrbitCertificateAt8_a093_b097 c hbc
  · exact targetOrbitCertificateAt8_a093_b098 c hbc
  · exact targetOrbitCertificateAt8_a093_b099 c hbc
  · exact targetOrbitCertificateAt8_a093_b100 c hbc
  · exact targetOrbitCertificateAt8_a093_b101 c hbc
  · exact targetOrbitCertificateAt8_a093_b102 c hbc
  · exact targetOrbitCertificateAt8_a093_b103 c hbc
  · exact targetOrbitCertificateAt8_a093_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
