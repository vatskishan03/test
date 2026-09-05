import MonochromaticQuantumGraphs.N8D3.Candidate129.Star

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def e0s00Rows : Fin 1 → SignedCharacterRow (Fin 143) :=
  ![center]

def e0c00 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 39 then (-1) else if i.val = 42 then (1) else 0), 0⟩

def e0s00Inferred : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 39 then (-1) else if i.val = 42 then (1) else 0), 0⟩

noncomputable def e0s00Uses : Fin 6 → CharacterReductionUse e0s00Rows :=
![
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 9 then (-1) else if i.val = 11 then (1) else if i.val = 20 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else if i.val = 70 then (1) else if i.val = 89 then (-1) else if i.val = 119 then (1) else 0)
    targetExponent := (fun i => if i.val = 1 then (1) else if i.val = 9 then (-1) else if i.val = 11 then (1) else if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 70 then (1) else if i.val = 89 then (-1) else if i.val = 119 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(1)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 9 then (1) else if i.val = 51 then (1) else if i.val = 75 then (1) else if i.val = 129 then (1) else 0)
    targetExponent := (fun i => if i.val = 1 then (1) else if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 75 then (1) else if i.val = 129 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(1)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 11 then (1) else if i.val = 42 then (1) else if i.val = 69 then (1) else if i.val = 138 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 11 then (1) else if i.val = 42 then (1) else if i.val = 69 then (1) else if i.val = 138 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 1 then (1) else if i.val = 9 then (-1) else if i.val = 11 then (1) else if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 70 then (1) else if i.val = 89 then (-1) else if i.val = 119 then (1) else 0)
    targetExponent := (fun i => if i.val = 1 then (1) else if i.val = 9 then (-1) else if i.val = 11 then (1) else if i.val = 20 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else if i.val = 70 then (1) else if i.val = 89 then (-1) else if i.val = 119 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 1 then (1) else if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 75 then (1) else if i.val = 129 then (1) else 0)
    targetExponent := (fun i => if i.val = 1 then (1) else if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 75 then (1) else if i.val = 129 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 1 then (1) else if i.val = 11 then (1) else if i.val = 39 then (1) else if i.val = 69 then (1) else if i.val = 138 then (1) else 0)
    targetExponent := (fun i => if i.val = 1 then (1) else if i.val = 11 then (1) else if i.val = 39 then (1) else if i.val = 69 then (1) else if i.val = 138 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } }
]

noncomputable def e0s00Certificate : LaurentCharacterCertificate (κ := Fin 6)
    e0s00Rows (toPolynomial p082) e0s00Inferred where
  unit := (1)
  unit_ne_zero := by decide
  shift := (fun i => if i.val = 1 then (1) else if i.val = 11 then (1) else if i.val = 39 then (1) else if i.val = 69 then (1) else if i.val = 138 then (1) else 0)
  reduction := by
    have h := reductionCertificate e0s00Rows p082
      (scale (1) (translate (fun i => if i.val = 1 then (1) else if i.val = 11 then (1) else if i.val = 39 then (1) else if i.val = 69 then (1) else if i.val = 138 then (1) else 0) (factor e0s00Inferred)))
      e0s00Uses (by decide) (by decide)
    simpa only [toPolynomial_scale, toPolynomial_translate, toPolynomial_factor] using h

def e0s00Augmented : Fin 2 → SignedCharacterRow (Fin 143) :=
  ![center, e0s00Inferred]

noncomputable def e0s00TargetCertificate : SignedCharacterRow.ImplicationCertificate
    (SignedCharacterRow.withParityGenerator e0s00Augmented) e0c00 :=
  {
    coeff := (fun s => match s with | .inl i => ![(0), (1)] i | .inr _ => (0))
    combination_eq := by
      apply row_eq_of_agrees
      decide
  }

theorem e0s00Holds (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x)
    (hrows : ∀ i, (e0s00Rows i).Holds x) : e0c00.Holds x := by
  have hi := holds_of_laurentCharacterCertificate x hx e0s00Rows
    (toPolynomial p082) e0s00Inferred e0s00Certificate hrows
    (holds082 x hx h)
  apply SignedCharacterRow.holds_of_implicationCertificate x hx
    (SignedCharacterRow.withParityGenerator e0s00Augmented) e0c00
    e0s00TargetCertificate
  apply SignedCharacterRow.withParityGenerator_holds
  intro i
  fin_cases i
  · exact hrows 0
  · exact hi

#print axioms e0s00Holds

end MonochromaticQuantumGraphs.N8D3.Candidate129
