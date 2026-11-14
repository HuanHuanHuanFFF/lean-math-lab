import Cache.Requests

open Cache.IO Cache.Hashing Cache.Requests

def main (args : List String) : IO Unit := CacheM.run do
  let roots ← parseArgs ("get-" :: args)
  if roots.isEmpty then throw <| IO.userError "focused modules are required"
  -- Official hashes, with the unrelated Mathlib umbrella root omitted.
  let memo := (← StateT.run (roots.toArray.mapM fun
    ⟨name, source⟩ => getHash name source) { rootHash := ← getRootHash }).2
  let (_, repo) ← resolveRepo none (← read).mathlibDepPath
  let goodCurl ← validateCurl
  IO.println s!"source-selected cache closure: {memo.hashMap.size}"
  -- Same trusted default containers/read path; no unsafe or fork scopes,
  -- no decompression, uploads, cleanup or publication.
  getFiles repo memo.hashMap false false goodCurl false
