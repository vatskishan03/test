import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Shard0
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Shard1
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Shard2
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Shard3
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Shard4
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Shard5
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Shard6
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Shard7
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Shard8
import MonochromaticQuantumGraphs.N8D3.TropicalBaseRelations8.Shard9

/-!
# Support replay for the 200 N8D3 base relations

The ten bounded shards prove that each retained coloring has exactly the six
canonical supported matchings.  This module assembles those shard theorems
without repeating their finite computation.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph
open scoped BigOperators Matrix

noncomputable section

set_option maxRecDepth 100000

/-- The first retained row decodes exactly as in the canonical manifest. -/
theorem tropicalBaseColoring8_zero :
    tropicalBaseColoring8 0 = ![2, 1, 0, 1, 0, 0, 1, 0] := by
  decide

/-- None of the retained source rows is monochromatic, so the official
equation system makes every corresponding perfect-matching sum zero. -/
theorem tropicalBaseColoring8_not_allEqual (r : Fin 200) :
    ¬ allEqual (tropicalBaseColoring8 r) := by
  revert r
  decide

/-- At every one of the 200 retained colorings, the canonical support keeps
exactly the same six perfect matchings. -/
theorem tropicalBaseSupportedMatchingSet8 (r : Fin 200) :
    Finset.univ.filter (fun m : Fin 105 ↦
      tropicalMatchingSupported8 (tropicalBaseColoring8 r) m = true) =
        tropicalBaseMatchingSet8 := by
  let s : Fin 10 := ⟨r.val / 20, by omega⟩
  let i : Fin 20 := ⟨r.val % 20, Nat.mod_lt _ (by omega)⟩
  have hrow : tropicalBaseRowOfShard8 s i = r := by
    apply Fin.ext
    dsimp [tropicalBaseRowOfShard8, s, i]
    have hdiv := Nat.mod_add_div r.val 20
    omega
  rw [← hrow]
  generalize s = shard
  fin_cases shard
  · exact tropicalBaseSupportedMatchingSet8_shard0 i
  · exact tropicalBaseSupportedMatchingSet8_shard1 i
  · exact tropicalBaseSupportedMatchingSet8_shard2 i
  · exact tropicalBaseSupportedMatchingSet8_shard3 i
  · exact tropicalBaseSupportedMatchingSet8_shard4 i
  · exact tropicalBaseSupportedMatchingSet8_shard5 i
  · exact tropicalBaseSupportedMatchingSet8_shard6 i
  · exact tropicalBaseSupportedMatchingSet8_shard7 i
  · exact tropicalBaseSupportedMatchingSet8_shard8 i
  · exact tropicalBaseSupportedMatchingSet8_shard9 i

/-- In particular every one of the six reconstructed base monomials is
supported. -/
theorem tropicalBaseMatching8_supported (r : Fin 200) (j : Fin 6) :
    tropicalMatchingSupported8 (tropicalBaseColoring8 r)
      (tropicalBaseMatching8 j) = true := by
  have hj : tropicalBaseMatching8 j ∈ tropicalBaseMatchingSet8 := by
    fin_cases j <;>
      simp [tropicalBaseMatching8, tropicalBaseMatchingSet8]
  have hmem :
      tropicalBaseMatching8 j ∈
        Finset.univ.filter (fun m : Fin 105 ↦
          tropicalMatchingSupported8 (tropicalBaseColoring8 r) m = true) := by
    rw [tropicalBaseSupportedMatchingSet8 r]
    exact hj
  exact (Finset.mem_filter.mp hmem).2

end


end MonochromaticQuantumGraphs.N8D3
