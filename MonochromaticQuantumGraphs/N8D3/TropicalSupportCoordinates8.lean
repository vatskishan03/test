import MonochromaticQuantumGraphs.N8D3.TropicalSupportCoordinates8.Decoder
import MonochromaticQuantumGraphs.N8D3.TropicalSupportCoordinates8.Enumeration
import MonochromaticQuantumGraphs.N8D3.TropicalSupportCoordinates8.Support

/-!
# Support-local coordinates for the canonical N8D3 support

This module assembles the independently checked decoder and enumeration
shards and exposes nonzero support-local weights for later Laurent proofs.
-/

namespace MonochromaticQuantumGraphs.N8D3

open MonochromaticQuantumGraph

/-- Exact support makes every one of the 144 local Laurent coordinates
nonzero. -/
theorem tropicalSupportWeight8_ne_zero
    {W : WeightsN 8 3 ℂ} (hSupport : TropicalExactSupport8 W) :
    ∀ i, tropicalSupportWeight8 W i ≠ 0 := by
  intro i
  apply (hSupport _).2
  change tropicalEdgeSupported8
    (tropicalEdgeOfGlobalCoordinate8 (tropicalSupportGlobalCoordinate8 i)) = true
  rw [tropicalEdgeSupported8_edgeOfGlobalCoordinate8]
  exact tropicalSupportGlobalCoordinate8_supported i

end MonochromaticQuantumGraphs.N8D3
