import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A098B098_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A091

/-! # Dispatch over `b` for the fixed first index `a = 98` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a098
    (b c : Fin 105)
    (hab : (98 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (98 : Fin 105) b c := by
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
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a098_b098 c hbc
  · exact targetOrbitCertificateAt8_a098_b099 c hbc
  · exact targetOrbitCertificateAt8_a098_b100 c hbc
  · exact targetOrbitCertificateAt8_a098_b101 c hbc
  · exact targetOrbitCertificateAt8_a098_b102 c hbc
  · exact targetOrbitCertificateAt8_a098_b103 c hbc
  · exact targetOrbitCertificateAt8_a098_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
