import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A104B104_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A097

/-! # Dispatch over `b` for the fixed first index `a = 104` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a104
    (b c : Fin 105)
    (hab : (104 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (104 : Fin 105) b c := by
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
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · simp at hab
  · exact targetOrbitCertificateAt8_a104_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
