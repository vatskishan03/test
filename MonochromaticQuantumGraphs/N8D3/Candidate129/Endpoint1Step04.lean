import MonochromaticQuantumGraphs.N8D3.Candidate129.Endpoint1Step03

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def e1s04Rows : Fin 15 → SignedCharacterRow (Fin 143) :=
  ![leaf00, leaf01, leaf02, leaf03, leaf04, leaf05, leaf06, leaf07, leaf08, leaf09, leaf10, e1c00, e1c01, e1c02, e1c03]

def e1c04 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 9 then (1) else if i.val = 11 then (-1) else if i.val = 15 then (-1) else if i.val = 17 then (1) else 0), 0⟩

def e1s04Inferred : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 9 then (1) else if i.val = 11 then (-1) else if i.val = 15 then (-1) else if i.val = 17 then (1) else 0), 0⟩

noncomputable def e1s04Uses : Fin 4 → CharacterReductionUse e1s04Rows :=
![
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 15 then (1) else if i.val = 51 then (1) else if i.val = 75 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 9 then (-1) else if i.val = 11 then (1) else if i.val = 15 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(2), (2), (2), (1), (1), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 0 then (1) else if i.val = 17 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else 0)
    targetExponent := (fun i => if i.val = 0 then (1) else if i.val = 17 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := -1
    sourceExponent := (fun i => if i.val = 7 then (1) else if i.val = 9 then (1) else if i.val = 48 then (1) else if i.val = 75 then (1) else 0)
    targetExponent := (fun i => if i.val = 7 then (1) else if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(2), (2), (2), (1), (1), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } },
  { coefficient := 1
    sourceExponent := (fun i => if i.val = 7 then (1) else if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else 0)
    targetExponent := (fun i => if i.val = 7 then (1) else if i.val = 11 then (1) else if i.val = 48 then (1) else if i.val = 69 then (1) else 0)
    reduction := {
      signExponent := 0
      implication := {
        coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0)] i | .inr _ => (0))
        combination_eq := by
          apply row_eq_of_agrees
          decide
      }
    } }
]

noncomputable def e1s04Certificate : LaurentCharacterCertificate (κ := Fin 4)
    e1s04Rows (toPolynomial p115) e1s04Inferred where
  unit := (-1)
  unit_ne_zero := by decide
  shift := (fun i => if i.val = 0 then (1) else if i.val = 9 then (-1) else if i.val = 11 then (1) else if i.val = 15 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else 0)
  reduction := by
    have h := reductionCertificate e1s04Rows p115
      (scale (-1) (translate (fun i => if i.val = 0 then (1) else if i.val = 9 then (-1) else if i.val = 11 then (1) else if i.val = 15 then (1) else if i.val = 51 then (1) else if i.val = 69 then (1) else 0) (factor e1s04Inferred)))
      e1s04Uses (by decide) (by decide)
    simpa only [toPolynomial_scale, toPolynomial_translate, toPolynomial_factor] using h

def e1s04Augmented : Fin 16 → SignedCharacterRow (Fin 143) :=
  ![leaf00, leaf01, leaf02, leaf03, leaf04, leaf05, leaf06, leaf07, leaf08, leaf09, leaf10, e1c00, e1c01, e1c02, e1c03, e1s04Inferred]

noncomputable def e1s04TargetCertificate : SignedCharacterRow.ImplicationCertificate
    (SignedCharacterRow.withParityGenerator e1s04Augmented) e1c04 :=
  {
    coeff := (fun s => match s with | .inl i => ![(0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (0), (1)] i | .inr _ => (0))
    combination_eq := by
      apply row_eq_of_agrees
      decide
  }

theorem e1s04Holds (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x)
    (hrows : ∀ i, (e1s04Rows i).Holds x) : e1c04.Holds x := by
  have hi := holds_of_laurentCharacterCertificate x hx e1s04Rows
    (toPolynomial p115) e1s04Inferred e1s04Certificate hrows
    (holds115 x hx h)
  apply SignedCharacterRow.holds_of_implicationCertificate x hx
    (SignedCharacterRow.withParityGenerator e1s04Augmented) e1c04
    e1s04TargetCertificate
  apply SignedCharacterRow.withParityGenerator_holds
  intro i
  fin_cases i
  · exact hrows 0
  · exact hrows 1
  · exact hrows 2
  · exact hrows 3
  · exact hrows 4
  · exact hrows 5
  · exact hrows 6
  · exact hrows 7
  · exact hrows 8
  · exact hrows 9
  · exact hrows 10
  · exact hrows 11
  · exact hrows 12
  · exact hrows 13
  · exact hrows 14
  · exact hi

#print axioms e1s04Holds

end MonochromaticQuantumGraphs.N8D3.Candidate129
