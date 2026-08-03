import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentAMinimalData8

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs.FactorCoverCertificate

set_option maxHeartbeats 1000000 in
set_option maxRecDepth 10000 in
/-- Minimality replay for recovered Component A rows 0 through 8. -/
theorem componentACover8_minimal_shard0 (i : Fin 9) :
    IsMinimalVertexCover componentAFactorEdge8
      (componentACover8 (componentAMinimalIndex8 0 i)) := by
  revert i
  unfold IsMinimalVertexCover IsVertexCover
  decide

end MonochromaticQuantumGraphs.N8D3
