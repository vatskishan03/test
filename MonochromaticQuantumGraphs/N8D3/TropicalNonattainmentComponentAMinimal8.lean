import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentAMinimal8.Shard0
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentAMinimal8.Shard1
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentAMinimal8.Shard2
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentAMinimal8.Shard3
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentAMinimal8.Shard4
import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentAMinimal8.Shard5

/-!
# Complete minimality audit for the 54 Component A covers

This module recombines six bounded nine-row kernel replays.  The cover-table
completeness theorem lives in `TropicalNonattainmentComponentA8`; minimality is
an independent audit property and is not used to strengthen its dispatch.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraphs.FactorCoverCertificate

/-- Every one of the 54 recovered Component A rows is a minimal vertex cover
of the reconstructed 15-class factor graph. -/
theorem componentACover8_minimal (i : Fin 54) :
    IsMinimalVertexCover componentAFactorEdge8 (componentACover8 i) := by
  rw [← componentAMinimalIndex_recombine8 i]
  generalize componentAMinimalShard8 i = shard
  fin_cases shard
  · exact componentACover8_minimal_shard0 (componentAMinimalRow8 i)
  · exact componentACover8_minimal_shard1 (componentAMinimalRow8 i)
  · exact componentACover8_minimal_shard2 (componentAMinimalRow8 i)
  · exact componentACover8_minimal_shard3 (componentAMinimalRow8 i)
  · exact componentACover8_minimal_shard4 (componentAMinimalRow8 i)
  · exact componentACover8_minimal_shard5 (componentAMinimalRow8 i)

end MonochromaticQuantumGraphs.N8D3
