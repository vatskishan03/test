import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A096B096_103
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A096B104_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A089

/-! # Dispatch over `b` for the fixed first index `a = 96` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a096
    (b c : Fin 105)
    (hab : (96 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (96 : Fin 105) b c := by
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
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a096_b096 c hbc
  · exact targetOrbitCertificateAt8_a096_b097 c hbc
  · exact targetOrbitCertificateAt8_a096_b098 c hbc
  · exact targetOrbitCertificateAt8_a096_b099 c hbc
  · exact targetOrbitCertificateAt8_a096_b100 c hbc
  · exact targetOrbitCertificateAt8_a096_b101 c hbc
  · exact targetOrbitCertificateAt8_a096_b102 c hbc
  · exact targetOrbitCertificateAt8_a096_b103 c hbc
  · exact targetOrbitCertificateAt8_a096_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
