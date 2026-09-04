import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A095B095_102
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A095B103_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A088

/-! # Dispatch over `b` for the fixed first index `a = 95` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a095
    (b c : Fin 105)
    (hab : (95 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (95 : Fin 105) b c := by
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
  · exact targetOrbitCertificateAt8_a095_b095 c hbc
  · exact targetOrbitCertificateAt8_a095_b096 c hbc
  · exact targetOrbitCertificateAt8_a095_b097 c hbc
  · exact targetOrbitCertificateAt8_a095_b098 c hbc
  · exact targetOrbitCertificateAt8_a095_b099 c hbc
  · exact targetOrbitCertificateAt8_a095_b100 c hbc
  · exact targetOrbitCertificateAt8_a095_b101 c hbc
  · exact targetOrbitCertificateAt8_a095_b102 c hbc
  · exact targetOrbitCertificateAt8_a095_b103 c hbc
  · exact targetOrbitCertificateAt8_a095_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
