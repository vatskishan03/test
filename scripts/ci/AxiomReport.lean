import Lean

/-!
# Axiom reporting without tactic/editor extension initialization

Run only after the requested module has been built. This uses the very same
`Lean.CollectAxioms.collect` function as `#print axioms`, on the imported kernel
environment. The only difference is `loadExts := false`: collecting constant
dependencies needs no simp sets, tactic registries or editor extensions.
-/

open Lean

def main (args : List String) : IO UInt32 := do
  let moduleName :: names := args
    | throw <| IO.userError "usage: AxiomReport.lean MODULE THEOREM [THEOREM ...]"
  if names.isEmpty then
    throw <| IO.userError "at least one theorem name is required"
  initSearchPath (← findSysroot)
  IO.eprintln s!"[axiom-report] importing kernel environment: {moduleName}"
  let env ← importModules #[{ module := moduleName.toName }] {}
    (trustLevel := 0) (loadExts := false)
  IO.eprintln "[axiom-report] import complete; collecting constant dependencies"
  for name in names do
    let constant := name.toName
    if (env.checked.get.find? constant).isNone then
      throw <| IO.userError s!"unknown kernel declaration: {name}"
    let (_, result) := ((CollectAxioms.collect constant).run env).run {}
    let axioms := result.axioms.qsort Name.lt
    if axioms.isEmpty then
      IO.println s!"'{name}' does not depend on any axioms"
    else
      IO.println s!"'{name}' depends on axioms: {axioms.toList}"
  return 0
