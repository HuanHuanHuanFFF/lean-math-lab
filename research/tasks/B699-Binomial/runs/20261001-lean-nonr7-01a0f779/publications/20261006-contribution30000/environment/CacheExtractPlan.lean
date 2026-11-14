import Cache.Hashing

open Cache.IO Cache.Hashing

def main (args : List String) : IO Unit := CacheM.run do
  let output := args.headD ""
  if output.isEmpty then throw <| IO.userError "provide output JSON and module names"
  let roots ← parseArgs ("plan" :: args.drop 1)
  if roots.isEmpty then throw <| IO.userError "at least one fixed module is required"
  -- Same official getRootHash/getHash recurrence; omit the unrelated Mathlib
  -- umbrella root that getHashMemo normally adds before filtering it away.
  let memo := (← StateT.run (roots.toArray.mapM fun
    ⟨name, source⟩ => getHash name source) { rootHash := ← getRootHash }).2
  let hashes := memo.hashMap
  let existing ← hashes.filterExists true
  let config ← mkLeanTarConfig existing
  IO.FS.writeFile output (Lean.Json.arr config |>.compress)
  IO.println s!"selected cached modules: {existing.size}; source closure: {hashes.size}"
