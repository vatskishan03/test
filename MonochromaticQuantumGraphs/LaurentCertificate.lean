import Mathlib.Data.Complex.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.NormNum

/-!
# Kernel-checkable Laurent character certificates

This module provides the small algebraic checker used by the support-specific
`N = 8`, `D = 3` non-attainment proof.  Discovery programs may propose an
integer combination of signed character rows; Lean checks the combination
coordinate by coordinate and then derives the corresponding equality of
nonzero Laurent monomials.

No quotient normal form or external integer-lattice solver is trusted here.
The certificate boundary is the raw exponent vector and its integer sign
exponent.
-/

namespace MonochromaticQuantumGraphs

open scoped BigOperators

noncomputable section

/-- A finite Laurent exponent vector. -/
abbrev LaurentExponent (ι : Type*) := ι → ℤ

/-- Evaluation of a Laurent exponent at a tuple of field elements. -/
def laurentEval {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (e : LaurentExponent ι) : ℂ :=
  ∏ i, x i ^ e i

@[simp] theorem laurentEval_zero {ι : Type*} [Fintype ι]
    (x : ι → ℂ) : laurentEval x 0 = 1 := by
  simp [laurentEval]

theorem laurentEval_add {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (e f : LaurentExponent ι) :
    laurentEval x (e + f) = laurentEval x e * laurentEval x f := by
  simp only [laurentEval, Pi.add_apply, zpow_add₀ (hx _)]
  exact Finset.prod_mul_distrib

theorem laurentEval_neg {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (e : LaurentExponent ι) :
    laurentEval x (-e) = (laurentEval x e)⁻¹ := by
  simp [laurentEval]

theorem laurentEval_sub {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (e f : LaurentExponent ι) :
    laurentEval x (e - f) = laurentEval x e / laurentEval x f := by
  rw [sub_eq_add_neg, laurentEval_add x hx, laurentEval_neg]
  rfl

theorem laurentEval_zsmul {ι : Type*} [Fintype ι]
    (x : ι → ℂ) (e : LaurentExponent ι) (n : ℤ) :
    laurentEval x (n • e) = laurentEval x e ^ n := by
  simp only [laurentEval, Pi.smul_apply, smul_eq_mul]
  rw [← Finset.prod_zpow]
  apply Finset.prod_congr rfl
  intro i _
  rw [Int.mul_comm, zpow_mul]

theorem laurentEval_finset_sum {ι κ : Type*} [Fintype ι]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (s : Finset κ) (e : κ → LaurentExponent ι) :
    laurentEval x (∑ j ∈ s, e j) = ∏ j ∈ s, laurentEval x (e j) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
      simp only [Finset.sum_insert ha, Finset.prod_insert ha]
      rw [laurentEval_add x hx, ih]

/-- A signed character row.  `signExponent` represents the scalar
`(-1) ^ signExponent`; retaining an integer instead of a Boolean makes raw
integer combinations transparent. -/
structure SignedCharacterRow (ι : Type*) where
  exponent : LaurentExponent ι
  signExponent : ℤ

namespace SignedCharacterRow

/-- Semantic validity of one signed-character row at nonzero coordinates. -/
def Holds {ι : Type*} [Fintype ι] (x : ι → ℂ)
    (row : SignedCharacterRow ι) : Prop :=
  laurentEval x row.exponent = (-1 : ℂ) ^ row.signExponent

/-- The universally valid signed row `1 = (-1) ^ 2`.  Exact integer-lattice
witnesses use this row to record even changes in the sign exponent instead of
silently reducing signs modulo two. -/
def parityGenerator (ι : Type*) : SignedCharacterRow ι where
  exponent := 0
  signExponent := 2

/-- Append the universal parity generator to a declared character basis. -/
def withParityGenerator {ι χ : Type*}
    (rows : χ → SignedCharacterRow ι) :
    Sum χ Unit → SignedCharacterRow ι
  | .inl c => rows c
  | .inr _ => parityGenerator ι

/-- The parity generator holds at every Laurent point. -/
theorem parityGenerator_holds
    {ι : Type*} [Fintype ι] (x : ι → ℂ) :
    (parityGenerator ι).Holds x := by
  norm_num [Holds, parityGenerator]

/-- Validity of a character basis extends to the basis with its universal
parity row. -/
theorem withParityGenerator_holds
    {ι χ : Type*} [Fintype ι]
    (x : ι → ℂ) (rows : χ → SignedCharacterRow ι)
    (hrows : ∀ c, (rows c).Holds x) :
    ∀ c, (withParityGenerator rows c).Holds x := by
  intro c
  cases c with
  | inl c => exact hrows c
  | inr _ => exact parityGenerator_holds x

/-- Raw integer linear combination of signed character rows. -/
def linearCombination {ι κ : Type*} [Fintype κ]
    (rows : κ → SignedCharacterRow ι) (coeff : κ → ℤ) :
    SignedCharacterRow ι where
  exponent := ∑ j, coeff j • (rows j).exponent
  signExponent := ∑ j, coeff j * (rows j).signExponent

theorem holds_linearCombination {ι κ : Type*} [Fintype ι] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (rows : κ → SignedCharacterRow ι) (coeff : κ → ℤ)
    (hrows : ∀ j, (rows j).Holds x) :
    (linearCombination rows coeff).Holds x := by
  classical
  unfold Holds linearCombination
  change laurentEval x (∑ j, coeff j • (rows j).exponent) =
    (-1 : ℂ) ^ ∑ j, coeff j * (rows j).signExponent
  rw [laurentEval_finset_sum x hx Finset.univ]
  have hterm (j : κ) :
      laurentEval x (coeff j • (rows j).exponent) =
        (-1 : ℂ) ^ (coeff j * (rows j).signExponent) := by
    calc
      laurentEval x (coeff j • (rows j).exponent) =
          laurentEval x (rows j).exponent ^ coeff j :=
        laurentEval_zsmul x (rows j).exponent (coeff j)
      _ = ((-1 : ℂ) ^ (rows j).signExponent) ^ coeff j := by
        rw [show laurentEval x (rows j).exponent =
            (-1 : ℂ) ^ (rows j).signExponent from hrows j]
      _ = (-1 : ℂ) ^ ((rows j).signExponent * coeff j) := by
        rw [zpow_mul]
      _ = (-1 : ℂ) ^ (coeff j * (rows j).signExponent) := by
        rw [Int.mul_comm]
  refine (Finset.prod_congr rfl fun j _ => hterm j).trans ?_
  induction (Finset.univ : Finset κ) using Finset.induction_on with
  | empty => simp
  | @insert j s hj ih =>
      rw [Finset.prod_insert hj, Finset.sum_insert hj, ih,
        zpow_add₀ (by norm_num : (-1 : ℂ) ≠ 0)]

/-- A proof-producing implication certificate.  Its trusted payload is an
explicit integer coefficient vector and an equality with the raw target row. -/
structure ImplicationCertificate {ι κ : Type*} [Fintype κ]
    (rows : κ → SignedCharacterRow ι) (target : SignedCharacterRow ι) where
  coeff : κ → ℤ
  combination_eq : linearCombination rows coeff = target

theorem holds_of_implicationCertificate
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (rows : κ → SignedCharacterRow ι) (target : SignedCharacterRow ι)
    (cert : ImplicationCertificate rows target)
    (hrows : ∀ j, (rows j).Holds x) :
    target.Holds x := by
  rw [← cert.combination_eq]
  exact holds_linearCombination x hx rows cert.coeff hrows

/-- The canonical inconsistent signed character `1 = -1`. -/
def contradictionRow (ι : Type*) : SignedCharacterRow ι where
  exponent := 0
  signExponent := 1

theorem false_of_contradictionRow
    {ι : Type*} [Fintype ι] (x : ι → ℂ)
    (h : (contradictionRow ι).Holds x) : False := by
  have hbad : (1 : ℂ) = -1 := by
    simpa [Holds, contradictionRow] using h
  norm_num at hbad

theorem false_of_inconsistencyCertificate
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (x : ι → ℂ) (hx : ∀ i, x i ≠ 0)
    (rows : κ → SignedCharacterRow ι)
    (cert : ImplicationCertificate rows (contradictionRow ι))
    (hrows : ∀ j, (rows j).Holds x) : False :=
  false_of_contradictionRow x
    (holds_of_implicationCertificate x hx rows (contradictionRow ι) cert hrows)

end SignedCharacterRow

end

end MonochromaticQuantumGraphs
