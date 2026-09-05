import MonochromaticQuantumGraphs.N8D3.Basic
import MonochromaticQuantumGraphs.N8D3.Candidate129.SupportChecks

/-! Official weight semantics for the exact 143-coordinate support. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraph

def globalEdge (g : Fin 252) : EdgeN 8 3 :=
  let e := decodeCoordinate g
  mkEdge e.1 e.2.1 e.2.2.1 e.2.2.2

def supportWeight (W : WeightsN 8 3 ℂ) : Fin 143 → ℂ :=
  fun i => W (globalEdge (supportGlobal i))

/-- Exact support on all 252 canonical coordinates. Unused reversed and loop
coordinates in the official record type remain unrestricted. -/
def ExactSupport (W : WeightsN 8 3 ℂ) : Prop :=
  ∀ g : Fin 252, W (globalEdge g) ≠ 0 ↔ (localIndex g).isSome = true

end MonochromaticQuantumGraphs.N8D3.Candidate129
