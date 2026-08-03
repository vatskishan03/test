import MonochromaticQuantumGraphs.LaurentFaceCertificate
import MonochromaticQuantumGraphs.LaurentPolynomialCertificate

/-!
# Provenance for signed-character certificate bases

Terminal certificates normalize and deduplicate a mixture of initially known
characters and raw factor characters selected by a class cover.  This module
keeps the source of every basis row explicit, so a generated integer lattice
witness cannot silently treat an unavailable factor as known.
-/

namespace MonochromaticQuantumGraphs

noncomputable section

/-- Provenance of one row in a signed-character basis. -/
inductive FactorBasisSource (χ R : Type*)
  | base : χ → FactorBasisSource χ R
  | raw : R → FactorBasisSource χ R
  deriving DecidableEq

namespace FactorBasisSource

/-- Interpret an explicitly tagged basis source as its signed-character row. -/
def row {ι χ R : Type*}
    (baseRow : χ → SignedCharacterRow ι)
    (rawRow : R → SignedCharacterRow ι) :
    FactorBasisSource χ R → SignedCharacterRow ι
  | .base c => baseRow c
  | .raw r => rawRow r

/-- Semantic validity follows from the validity of the tagged source family. -/
theorem row_holds
    {ι χ R : Type*} [Fintype ι]
    (x : ι → ℂ)
    (baseRow : χ → SignedCharacterRow ι)
    (rawRow : R → SignedCharacterRow ι)
    (hbase : ∀ c, (baseRow c).Holds x)
    (hraw : ∀ r, (rawRow r).Holds x) :
    ∀ s : FactorBasisSource χ R, (row baseRow rawRow s).Holds x := by
  intro s
  cases s with
  | base c => exact hbase c
  | raw r => exact hraw r

end FactorBasisSource

namespace FactorCoverCertificate

/-- Every raw factor in an all-zero class supplies its signed character. -/
theorem rawCharacter_holds_of_allZeroInClass
    {ι C R : Type*} [Fintype ι] [DecidableEq R]
    (x : ι → ℂ) (members : C → Finset R)
    (rawRow : R → SignedCharacterRow ι)
    {c : C} (hzero : AllZeroInClass members
      (fun r ↦ (rawRow r).factorValue x) c)
    {r : R} (hr : r ∈ members c) :
    (rawRow r).Holds x := by
  exact (SignedCharacterRow.factorValue_eq_zero_iff x (rawRow r)).mp
    (hzero r hr)

/-- A listed all-zero class cover supplies every explicitly class-tagged raw
factor character used by a terminal basis. -/
theorem rawCharacter_holds_of_listed_allZero_cover
    {ι C R : Type*} [Fintype ι] [DecidableEq C] [DecidableEq R]
    (x : ι → ℂ) (members : C → Finset R)
    (rawRow : R → SignedCharacterRow ι)
    (cover : Finset C)
    (hcover : ∀ c ∈ cover, AllZeroInClass members
      (fun r ↦ (rawRow r).factorValue x) c)
    {c : C} (hc : c ∈ cover) {r : R} (hr : r ∈ members c) :
    (rawRow r).Holds x :=
  rawCharacter_holds_of_allZeroInClass x members rawRow
    (hcover c hc) hr

end FactorCoverCertificate

end

end MonochromaticQuantumGraphs
