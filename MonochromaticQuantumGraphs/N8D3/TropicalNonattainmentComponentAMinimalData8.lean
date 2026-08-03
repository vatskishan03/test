import MonochromaticQuantumGraphs.N8D3.TropicalNonattainmentComponentA8

/-!
# Bounded-shard indexing for the Component A minimality audit

The 54 recovered covers are split into six shards of nine rows.  Keeping each
kernel reduction in a separate module prevents the finite proof term from
exceeding the compiler memory guard.
-/

namespace MonochromaticQuantumGraphs.N8D3

/-- Row `row` in minimality shard `shard`, using the original table order. -/
def componentAMinimalIndex8 (shard : Fin 6) (row : Fin 9) : Fin 54 :=
  ⟨shard.val * 9 + row.val, by omega⟩

/-- The shard containing an original table index. -/
def componentAMinimalShard8 (i : Fin 54) : Fin 6 :=
  ⟨i.val / 9, by omega⟩

/-- The row within the nine-row shard containing an original table index. -/
def componentAMinimalRow8 (i : Fin 54) : Fin 9 :=
  ⟨i.val % 9, Nat.mod_lt _ (by omega)⟩

/-- Quotient and remainder reconstruct every one of the 54 table indices. -/
theorem componentAMinimalIndex_recombine8 (i : Fin 54) :
    componentAMinimalIndex8 (componentAMinimalShard8 i)
      (componentAMinimalRow8 i) = i := by
  apply Fin.ext
  simp [componentAMinimalIndex8, componentAMinimalShard8,
    componentAMinimalRow8]
  omega

end MonochromaticQuantumGraphs.N8D3
