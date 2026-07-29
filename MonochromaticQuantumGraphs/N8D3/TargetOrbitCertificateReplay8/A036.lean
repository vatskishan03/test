import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A036B036_043
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A036B044_051
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A036B052_059
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A036B060_067
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A036B068_075
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A036B076_083
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A036B084_091
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A036B092_099
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A036B100_104
import MonochromaticQuantumGraphs.N8D3.TargetOrbitCertificateReplay8.A035

/-! # Dispatch over `b` for the fixed first index `a = 36` -/

namespace MonochromaticQuantumGraphs.N8D3

theorem targetOrbitCertificateAt8_a036
    (b c : Fin 105)
    (hab : (36 : Fin 105) ≤ b) (hbc : b ≤ c) :
    targetOrbitCertificateAt8 (36 : Fin 105) b c := by
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
  · exact targetOrbitCertificateAt8_a036_b036 c hbc
  · exact targetOrbitCertificateAt8_a036_b037 c hbc
  · exact targetOrbitCertificateAt8_a036_b038 c hbc
  · exact targetOrbitCertificateAt8_a036_b039 c hbc
  · exact targetOrbitCertificateAt8_a036_b040 c hbc
  · exact targetOrbitCertificateAt8_a036_b041 c hbc
  · exact targetOrbitCertificateAt8_a036_b042 c hbc
  · exact targetOrbitCertificateAt8_a036_b043 c hbc
  · exact targetOrbitCertificateAt8_a036_b044 c hbc
  · exact targetOrbitCertificateAt8_a036_b045 c hbc
  · exact targetOrbitCertificateAt8_a036_b046 c hbc
  · exact targetOrbitCertificateAt8_a036_b047 c hbc
  · exact targetOrbitCertificateAt8_a036_b048 c hbc
  · exact targetOrbitCertificateAt8_a036_b049 c hbc
  · exact targetOrbitCertificateAt8_a036_b050 c hbc
  · exact targetOrbitCertificateAt8_a036_b051 c hbc
  · exact targetOrbitCertificateAt8_a036_b052 c hbc
  · exact targetOrbitCertificateAt8_a036_b053 c hbc
  · exact targetOrbitCertificateAt8_a036_b054 c hbc
  · exact targetOrbitCertificateAt8_a036_b055 c hbc
  · exact targetOrbitCertificateAt8_a036_b056 c hbc
  · exact targetOrbitCertificateAt8_a036_b057 c hbc
  · exact targetOrbitCertificateAt8_a036_b058 c hbc
  · exact targetOrbitCertificateAt8_a036_b059 c hbc
  · exact targetOrbitCertificateAt8_a036_b060 c hbc
  · exact targetOrbitCertificateAt8_a036_b061 c hbc
  · exact targetOrbitCertificateAt8_a036_b062 c hbc
  · exact targetOrbitCertificateAt8_a036_b063 c hbc
  · exact targetOrbitCertificateAt8_a036_b064 c hbc
  · exact targetOrbitCertificateAt8_a036_b065 c hbc
  · exact targetOrbitCertificateAt8_a036_b066 c hbc
  · exact targetOrbitCertificateAt8_a036_b067 c hbc
  · exact targetOrbitCertificateAt8_a036_b068 c hbc
  · exact targetOrbitCertificateAt8_a036_b069 c hbc
  · exact targetOrbitCertificateAt8_a036_b070 c hbc
  · exact targetOrbitCertificateAt8_a036_b071 c hbc
  · exact targetOrbitCertificateAt8_a036_b072 c hbc
  · exact targetOrbitCertificateAt8_a036_b073 c hbc
  · exact targetOrbitCertificateAt8_a036_b074 c hbc
  · exact targetOrbitCertificateAt8_a036_b075 c hbc
  · exact targetOrbitCertificateAt8_a036_b076 c hbc
  · exact targetOrbitCertificateAt8_a036_b077 c hbc
  · exact targetOrbitCertificateAt8_a036_b078 c hbc
  · exact targetOrbitCertificateAt8_a036_b079 c hbc
  · exact targetOrbitCertificateAt8_a036_b080 c hbc
  · exact targetOrbitCertificateAt8_a036_b081 c hbc
  · exact targetOrbitCertificateAt8_a036_b082 c hbc
  · exact targetOrbitCertificateAt8_a036_b083 c hbc
  · exact targetOrbitCertificateAt8_a036_b084 c hbc
  · exact targetOrbitCertificateAt8_a036_b085 c hbc
  · exact targetOrbitCertificateAt8_a036_b086 c hbc
  · exact targetOrbitCertificateAt8_a036_b087 c hbc
  · exact targetOrbitCertificateAt8_a036_b088 c hbc
  · exact targetOrbitCertificateAt8_a036_b089 c hbc
  · exact targetOrbitCertificateAt8_a036_b090 c hbc
  · exact targetOrbitCertificateAt8_a036_b091 c hbc
  · exact targetOrbitCertificateAt8_a036_b092 c hbc
  · exact targetOrbitCertificateAt8_a036_b093 c hbc
  · exact targetOrbitCertificateAt8_a036_b094 c hbc
  · exact targetOrbitCertificateAt8_a036_b095 c hbc
  · exact targetOrbitCertificateAt8_a036_b096 c hbc
  · exact targetOrbitCertificateAt8_a036_b097 c hbc
  · exact targetOrbitCertificateAt8_a036_b098 c hbc
  · exact targetOrbitCertificateAt8_a036_b099 c hbc
  · exact targetOrbitCertificateAt8_a036_b100 c hbc
  · exact targetOrbitCertificateAt8_a036_b101 c hbc
  · exact targetOrbitCertificateAt8_a036_b102 c hbc
  · exact targetOrbitCertificateAt8_a036_b103 c hbc
  · exact targetOrbitCertificateAt8_a036_b104 c hbc

end MonochromaticQuantumGraphs.N8D3
