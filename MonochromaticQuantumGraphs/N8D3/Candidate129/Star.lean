import MonochromaticQuantumGraphs.N8D3.Candidate129.Overlaps43
import Mathlib.Tactic.FinCases
import Mathlib.Data.Fin.VecNotation

/-! Generated Candidate129 certificate data or ordinary-kernel replay. -/

namespace MonochromaticQuantumGraphs.N8D3.Candidate129

open MonochromaticQuantumGraphs.LaurentList

set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

open scoped Matrix

def center : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 0 then (1) else if i.val = 1 then (-1) else if i.val = 48 then (-1) else if i.val = 51 then (1) else 0), 0⟩

def leaf00 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 64 then (1) else if i.val = 65 then (-1) else if i.val = 87 then (-1) else if i.val = 90 then (1) else 0), 0⟩

def leaf01 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 63 then (1) else if i.val = 64 then (-2) else if i.val = 65 then (1) else if i.val = 84 then (-1) else if i.val = 87 then (2) else if i.val = 90 then (-1) else 0), 0⟩

def leaf02 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 58 then (1) else if i.val = 59 then (-1) else if i.val = 63 then (-1) else if i.val = 64 then (1) else if i.val = 84 then (1) else if i.val = 87 then (-2) else if i.val = 90 then (1) else 0), 0⟩

def leaf03 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 57 then (1) else if i.val = 58 then (-2) else if i.val = 59 then (1) else if i.val = 84 then (-1) else if i.val = 87 then (2) else if i.val = 90 then (-1) else 0), 0⟩

def leaf04 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 9 then (1) else if i.val = 11 then (-1) else if i.val = 57 then (-1) else if i.val = 59 then (1) else if i.val = 69 then (-1) else if i.val = 75 then (1) else if i.val = 84 then (1) else if i.val = 90 then (-1) else 0), 0⟩

def leaf05 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 9 then (1) else if i.val = 11 then (-1) else if i.val = 57 then (-1) else if i.val = 59 then (1) else if i.val = 70 then (-1) else if i.val = 76 then (1) else if i.val = 84 then (1) else if i.val = 90 then (-1) else 0), 0⟩

def leaf06 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 9 then (1) else if i.val = 11 then (-1) else if i.val = 57 then (-1) else if i.val = 59 then (1) else if i.val = 71 then (-1) else if i.val = 77 then (1) else if i.val = 84 then (1) else if i.val = 90 then (-1) else 0), 0⟩

def leaf07 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 9 then (1) else if i.val = 11 then (-1) else if i.val = 69 then (-1) else if i.val = 77 then (1) else if i.val = 104 then (1) else if i.val = 106 then (-1) else 0), 0⟩

def leaf08 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 9 then (1) else if i.val = 11 then (-1) else if i.val = 69 then (-1) else if i.val = 77 then (1) else if i.val = 91 then (1) else if i.val = 93 then (-1) else 0), 0⟩

def leaf09 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 9 then (1) else if i.val = 11 then (-1) else if i.val = 69 then (-1) else if i.val = 76 then (1) else if i.val = 104 then (1) else if i.val = 105 then (-1) else 0), 0⟩

def leaf10 : SignedCharacterRow (Fin 143) :=
  ⟨(fun i => if i.val = 9 then (1) else if i.val = 11 then (-1) else if i.val = 69 then (-1) else if i.val = 76 then (1) else if i.val = 91 then (1) else if i.val = 92 then (-1) else 0), 0⟩

def leaves : Fin 11 → SignedCharacterRow (Fin 143) :=
  ![leaf00, leaf01, leaf02, leaf03, leaf04, leaf05, leaf06, leaf07, leaf08, leaf09, leaf10]

theorem product00 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf00.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p006 leaf00 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 48 then (-1) else if i.val = 65 then (-1) else if i.val = 87 then (-1) else 0) _ (holds006 x hx h)
  decide

theorem product01 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf01.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p011 leaf01 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 48 then (-1) else if i.val = 64 then (-2) else if i.val = 84 then (-1) else if i.val = 90 then (-1) else 0) _ (holds011 x hx h)
  decide

theorem product02 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf02.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p019 leaf02 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 48 then (-1) else if i.val = 59 then (-1) else if i.val = 63 then (-1) else if i.val = 87 then (-2) else 0) _ (holds019 x hx h)
  decide

theorem product03 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf03.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p024 leaf03 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 48 then (-1) else if i.val = 58 then (-2) else if i.val = 84 then (-1) else if i.val = 90 then (-1) else 0) _ (holds024 x hx h)
  decide

theorem product04 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf04.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p033 leaf04 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 11 then (-1) else if i.val = 48 then (-1) else if i.val = 57 then (-1) else if i.val = 69 then (-1) else if i.val = 90 then (-1) else 0) _ (holds033 x hx h)
  decide

theorem product05 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf05.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p041 leaf05 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 11 then (-1) else if i.val = 48 then (-1) else if i.val = 57 then (-1) else if i.val = 70 then (-1) else if i.val = 90 then (-1) else 0) _ (holds041 x hx h)
  decide

theorem product06 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf06.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p049 leaf06 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 11 then (-1) else if i.val = 48 then (-1) else if i.val = 57 then (-1) else if i.val = 71 then (-1) else if i.val = 90 then (-1) else 0) _ (holds049 x hx h)
  decide

theorem product07 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf07.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p058 leaf07 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 11 then (-1) else if i.val = 48 then (-1) else if i.val = 69 then (-1) else if i.val = 106 then (-1) else 0) _ (holds058 x hx h)
  decide

theorem product08 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf08.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p069 leaf08 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 11 then (-1) else if i.val = 48 then (-1) else if i.val = 69 then (-1) else if i.val = 93 then (-1) else 0) _ (holds069 x hx h)
  decide

theorem product09 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf09.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p075 leaf09 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 11 then (-1) else if i.val = 48 then (-1) else if i.val = 69 then (-1) else if i.val = 105 then (-1) else 0) _ (holds075 x hx h)
  decide

theorem product10 (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) :
    leaf10.factorValue x * center.factorValue x = 0 := by
  apply factorProduct_holds x hx p081 leaf10 center (1)
    (fun i => if i.val = 1 then (-1) else if i.val = 11 then (-1) else if i.val = 48 then (-1) else if i.val = 69 then (-1) else if i.val = 92 then (-1) else 0) _ (holds081 x hx h)
  decide

theorem star_cases (x : Fin 143 → ℂ) (hx : ∀ i, x i ≠ 0)
    (h : AmplitudePremises x) : center.Holds x ∨ ∀ i, (leaves i).Holds x := by
  by_cases hc : center.factorValue x = 0
  · exact Or.inl ((SignedCharacterRow.factorValue_eq_zero_iff x center).mp hc)
  · right
    intro i
    apply (SignedCharacterRow.factorValue_eq_zero_iff x (leaves i)).mp
    have hp : (leaves i).factorValue x * center.factorValue x = 0 := by
      fin_cases i
      · exact product00 x hx h
      · exact product01 x hx h
      · exact product02 x hx h
      · exact product03 x hx h
      · exact product04 x hx h
      · exact product05 x hx h
      · exact product06 x hx h
      · exact product07 x hx h
      · exact product08 x hx h
      · exact product09 x hx h
      · exact product10 x hx h
    exact (mul_eq_zero.mp hp).resolve_right hc

#print axioms star_cases

end MonochromaticQuantumGraphs.N8D3.Candidate129
