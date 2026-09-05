import MonochromaticQuantumGraphs.LaurentPolynomialCertificate
import Mathlib.Data.Fintype.Pi
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.List.FinRange

/-!
# Computable finite-list boundary for Laurent certificates

The executable payload consists only of integer coefficients and finite
exponent vectors. `agrees` checks every exponent appearing in either list;
the theorem below transports a successful ordinary kernel computation to
the existing `Finsupp` Laurent semantics. No native decision axiom is used.
-/

namespace MonochromaticQuantumGraphs.LaurentList

open scoped BigOperators

abbrev Exponent (n : ℕ) := Fin n → ℤ
abbrev Polynomial (n : ℕ) := List (ℤ × Exponent n)

def coeffAt {n : ℕ} (p : Polynomial n) (e : Exponent n) : ℤ :=
  (p.map fun term => if term.2 = e then term.1 else 0).sum

def agrees {n : ℕ} (p q : Polynomial n) : Bool :=
  (p.map Prod.snd ++ q.map Prod.snd).all fun e =>
    decide (coeffAt p e = coeffAt q e)

noncomputable def toPolynomial {n : ℕ} (p : Polynomial n) :
    LaurentPolynomial (Fin n) :=
  (p.map fun term => Finsupp.single term.2 term.1).sum

theorem toPolynomial_apply {n : ℕ} (p : Polynomial n) (e : Exponent n) :
    toPolynomial p e = coeffAt p e := by
  induction p with
  | nil => simp [toPolynomial, coeffAt]
  | cons term rest ih =>
    simp only [toPolynomial, coeffAt, List.map_cons, List.sum_cons,
      Finsupp.add_apply] at *
    rw [ih]
    simp [Finsupp.single_apply]

theorem coeffAt_eq_zero_of_not_mem {n : ℕ} (p : Polynomial n) (e : Exponent n)
    (h : e ∉ p.map Prod.snd) : coeffAt p e = 0 := by
  induction p with
  | nil => simp [coeffAt]
  | cons term rest ih =>
    have he : term.2 ≠ e := by
      intro he
      apply h
      simp [he]
    have hr : e ∉ rest.map Prod.snd := by
      intro hr
      exact h (by simp [hr])
    simpa only [coeffAt, List.map_cons, List.sum_cons, if_neg he, zero_add]
      using ih hr

theorem toPolynomial_eq_of_agrees {n : ℕ} (p q : Polynomial n)
    (h : agrees p q = true) : toPolynomial p = toPolynomial q := by
  apply Finsupp.ext
  intro e
  rw [toPolynomial_apply, toPolynomial_apply]
  by_cases he : e ∈ p.map Prod.snd ++ q.map Prod.snd
  · have hcheck := (List.all_eq_true.mp h) e he
    exact of_decide_eq_true hcheck
  · have hp : e ∉ p.map Prod.snd := by
      intro hp
      exact he (List.mem_append_left _ hp)
    have hq : e ∉ q.map Prod.snd := by
      intro hq
      exact he (List.mem_append_right _ hq)
    rw [coeffAt_eq_zero_of_not_mem p e hp, coeffAt_eq_zero_of_not_mem q e hq]

def translate {n : ℕ} (shift : Exponent n) (p : Polynomial n) : Polynomial n :=
  p.map fun term => (term.1, shift + term.2)

def scale {n : ℕ} (c : ℤ) (p : Polynomial n) : Polynomial n :=
  p.map fun term => (c * term.1, term.2)

@[simp] theorem toPolynomial_nil {n : ℕ} :
    toPolynomial ([] : Polynomial n) = 0 := by
  simp [toPolynomial]

@[simp] theorem toPolynomial_cons {n : ℕ} (term : ℤ × Exponent n)
    (p : Polynomial n) :
    toPolynomial (term :: p) = Finsupp.single term.2 term.1 + toPolynomial p := by
  simp [toPolynomial]

@[simp] theorem toPolynomial_append {n : ℕ} (p q : Polynomial n) :
    toPolynomial (p ++ q) = toPolynomial p + toPolynomial q := by
  simp [toPolynomial]

theorem toPolynomial_translate {n : ℕ} (shift : Exponent n) (p : Polynomial n) :
    toPolynomial (translate shift p) = LaurentPolynomial.translate shift (toPolynomial p) := by
  induction p with
  | nil => simp [translate, LaurentPolynomial.translate]
  | cons term rest ih =>
    simp only [translate, List.map_cons, toPolynomial_cons] at *
    rw [ih, LaurentPolynomial.translate_add, LaurentPolynomial.translate_single]

theorem toPolynomial_scale {n : ℕ} (c : ℤ) (p : Polynomial n) :
    toPolynomial (scale c p) = c • toPolynomial p := by
  induction p with
  | nil => simp [scale]
  | cons term rest ih =>
    simp only [scale, List.map_cons, toPolynomial_cons] at *
    rw [ih, smul_add]
    simp

theorem holds_of_combination {n : ℕ} (x : Fin n → ℂ) (hx : ∀ i, x i ≠ 0)
    (left right target : Polynomial n) (c d : ℤ) (shiftLeft shiftRight : Exponent n)
    (hcheck : agrees
      (scale c (translate shiftLeft left) ++ scale d (translate shiftRight right))
      target = true)
    (hl : (toPolynomial left).Holds x) (hr : (toPolynomial right).Holds x) :
    (toPolynomial target).Holds x := by
  have hid := toPolynomial_eq_of_agrees _ _ hcheck
  rw [toPolynomial_append, toPolynomial_scale, toPolynomial_translate,
    toPolynomial_scale, toPolynomial_translate] at hid
  unfold LaurentPolynomial.Holds at *
  rw [← hid, LaurentPolynomial.eval_add, LaurentPolynomial.eval_zsmul,
    LaurentPolynomial.eval_zsmul, LaurentPolynomial.eval_translate x hx,
    LaurentPolynomial.eval_translate x hx, hl, hr]
  simp

theorem holds_of_unit_translate {n : ℕ} (x : Fin n → ℂ) (hx : ∀ i, x i ≠ 0)
    (source target : Polynomial n) (c : ℤ) (shift : Exponent n)
    (hcheck : agrees (scale c (translate shift source)) target = true)
    (hs : (toPolynomial source).Holds x) : (toPolynomial target).Holds x := by
  have hid := toPolynomial_eq_of_agrees _ _ hcheck
  rw [toPolynomial_scale, toPolynomial_translate] at hid
  unfold LaurentPolynomial.Holds at *
  rw [← hid, LaurentPolynomial.eval_zsmul, LaurentPolynomial.eval_translate x hx, hs]
  simp

/-- The exponent vector of a product of variables, retaining repetitions. -/
def exponentOfVariables {n : ℕ} : List (Fin n) → Exponent n
  | [] => 0
  | i :: rest => (fun j => if i.val = j.val then 1 else 0) + exponentOfVariables rest

theorem eval_variable {n : ℕ} (x : Fin n → ℂ) (i : Fin n) :
    laurentEval x (fun j => if i.val = j.val then 1 else 0) = x i := by
  simp only [← Fin.ext_iff]
  simp [laurentEval]

theorem eval_exponentOfVariables {n : ℕ} (x : Fin n → ℂ) (hx : ∀ i, x i ≠ 0)
    (indices : List (Fin n)) :
    laurentEval x (exponentOfVariables indices) = (indices.map x).prod := by
  induction indices with
  | nil => simp [exponentOfVariables]
  | cons i rest ih =>
    rw [exponentOfVariables, laurentEval_add x hx, eval_variable, ih]
    rfl

def sum {n k : ℕ} (p : Fin k → Polynomial n) : Polynomial n :=
  ((List.range k).pmap (fun i hi => p ⟨i, hi⟩) fun _ => List.mem_range.1).flatten

theorem toPolynomial_sum {n k : ℕ} (p : Fin k → Polynomial n) :
    toPolynomial (sum p) = ∑ i, toPolynomial (p i) := by
  simp [sum, ← List.ofFn_eq_pmap, toPolynomial,
    List.map_flatten, List.sum_flatten, Fin.sum_ofFn]

theorem eval_sum {n k : ℕ} (x : Fin n → ℂ) (p : Fin k → Polynomial n) :
    (toPolynomial (sum p)).eval x = ∑ i, (toPolynomial (p i)).eval x := by
  rw [toPolynomial_sum, LaurentPolynomial.eval_finset_sum]

theorem eval_of_agrees {n : ℕ} (x : Fin n → ℂ) (p q : Polynomial n)
    (h : agrees p q = true) : (toPolynomial p).eval x = (toPolynomial q).eval x := by
  rw [toPolynomial_eq_of_agrees p q h]

def rowAgrees {n : ℕ} (p q : SignedCharacterRow (Fin n)) : Bool :=
  decide (∀ i, p.exponent i = q.exponent i) &&
    decide (p.signExponent = q.signExponent)

theorem row_eq_of_agrees {n : ℕ} (p q : SignedCharacterRow (Fin n))
    (h : rowAgrees p q = true) : p = q := by
  have hparts : (∀ i, p.exponent i = q.exponent i) ∧ p.signExponent = q.signExponent := by
    simpa [rowAgrees] using h
  have heq : p.exponent = q.exponent := funext hparts.1
  have hsign : p.signExponent = q.signExponent := hparts.2
  cases p
  cases q
  cases heq
  cases hsign
  rfl

def factor {n : ℕ} (row : SignedCharacterRow (Fin n)) : Polynomial n :=
  [(1, row.exponent), (-signedCoefficient row.signExponent 1, 0)]

theorem toPolynomial_factor {n : ℕ} (row : SignedCharacterRow (Fin n)) :
    toPolynomial (factor row) = row.factorPolynomial := by
  simp [factor, SignedCharacterRow.factorPolynomial, sub_eq_add_neg]

def factorProduct {n : ℕ} (left right : SignedCharacterRow (Fin n)) : Polynomial n :=
  [(1, left.exponent + right.exponent),
   (-signedCoefficient right.signExponent 1, left.exponent),
   (-signedCoefficient left.signExponent 1, right.exponent),
   (signedCoefficient left.signExponent 1 * signedCoefficient right.signExponent 1, 0)]

theorem toPolynomial_factorProduct {n : ℕ} (left right : SignedCharacterRow (Fin n)) :
    toPolynomial (factorProduct left right) = left.factorProductPolynomial right := by
  simp [factorProduct, SignedCharacterRow.factorProductPolynomial, sub_eq_add_neg, add_assoc]

theorem factorProduct_holds {n : ℕ} (x : Fin n → ℂ) (hx : ∀ i, x i ≠ 0)
    (source : Polynomial n) (left right : SignedCharacterRow (Fin n))
    (c : ℤ) (shift : Exponent n)
    (hcheck : agrees (scale c (translate shift source)) (factorProduct left right) = true)
    (hs : (toPolynomial source).Holds x) :
    left.factorValue x * right.factorValue x = 0 := by
  have h := holds_of_unit_translate x hx source (factorProduct left right) c shift hcheck hs
  unfold LaurentPolynomial.Holds at h
  rw [toPolynomial_factorProduct, SignedCharacterRow.eval_factorProductPolynomial x hx] at h
  exact h

theorem toPolynomial_ofFn {n k : ℕ} (terms : Fin k → ℤ × Exponent n) :
    toPolynomial (List.ofFn terms) = ∑ i, Finsupp.single (terms i).2 (terms i).1 := by
  simp [toPolynomial, Fin.sum_ofFn]

/-- The source and target aggregations are checked independently of each
signed-character implication used for an individual term. -/
noncomputable def reductionCertificate {n k r : ℕ}
    (chars : Fin r → SignedCharacterRow (Fin n)) (source target : Polynomial n)
    (use : Fin k → CharacterReductionUse chars)
    (hsource : agrees (List.ofFn fun i => ((use i).coefficient, (use i).sourceExponent)) source = true)
    (htarget : agrees (List.ofFn fun i =>
      (signedCoefficient (use i).reduction.signExponent (use i).coefficient,
        (use i).targetExponent)) target = true) :
    CharacterReductionCertificate (κ := Fin k) chars (toPolynomial source) (toPolynomial target) where
  use := use
  source_eq := by
    have h := toPolynomial_eq_of_agrees _ _ hsource
    rw [toPolynomial_ofFn] at h
    exact h
  target_eq := by
    have h := toPolynomial_eq_of_agrees _ _ htarget
    rw [toPolynomial_ofFn] at h
    exact h

end MonochromaticQuantumGraphs.LaurentList
