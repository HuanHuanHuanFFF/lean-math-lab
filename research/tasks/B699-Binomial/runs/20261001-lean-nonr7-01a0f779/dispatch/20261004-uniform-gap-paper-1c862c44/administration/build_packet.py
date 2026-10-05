"""Build a small source packet; this script performs no Lean or mathematical check."""
import hashlib, json, subprocess, zipfile
from datetime import datetime, timezone
from pathlib import Path

def sha(data): return hashlib.sha256(data).hexdigest()
def write_json(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
def git_bytes(root, commit, rel):
    return subprocess.check_output(["git", "-C", str(root), "show", f"{commit}:{rel}"])
def git_blob(root, commit, rel):
    return subprocess.check_output(["git", "-C", str(root), "rev-parse", f"{commit}:{rel}"]).decode().strip()

dispatch = Path(__file__).resolve().parent.parent
repo = Path(subprocess.check_output(["git", "-C", str(dispatch), "rev-parse", "--show-toplevel"]).decode().strip())
spec = json.loads((dispatch / "administration/build-spec.json").read_text(encoding="utf-8"))
ext = Path(spec["externalDir"]).resolve()
allowed = Path("D:/ResearchArtifacts/B699-paper-dispatch").resolve()
if not ext.is_relative_to(allowed): raise RuntimeError("External target outside authorized packet root")
payload = ext / "payload"
payload.mkdir(parents=True, exist_ok=True)
sources = []

def add_source(member, data, origin):
    dest = payload / member
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_bytes(data)
    sources.append({"member":member, "bytes":len(data), "sha256":sha(data), **origin})

for item in spec["selected"]:
    src = item["source"]
    data = git_bytes(repo, spec["repoBase"], src)
    add_source(item["member"], data, {
        "kind":"repository-original", "repository":"HuanHuanHuanFFF/lean-math-lab",
        "commit":spec["repoBase"], "originalPath":src,
        "gitBlob":git_blob(repo,spec["repoBase"],src),
        "retainedPath":str(repo / src).replace("\\","/"),
    })
mathlib = repo / ".lake/packages/mathlib"
for member, rel in [("evidence/mathlib/Chebyshev.lean","Mathlib/NumberTheory/Chebyshev.lean"),
                    ("evidence/mathlib/LICENSE","LICENSE")]:
    add_source(member,git_bytes(mathlib,spec["mathlibCommit"],rel),{
        "kind":"pinned-mathlib-original", "repository":"leanprover-community/mathlib4",
        "commit":spec["mathlibCommit"], "originalPath":rel,
        "gitBlob":git_blob(mathlib,spec["mathlibCommit"],rel),
        "retainedPath":str(mathlib/rel).replace("\\","/"),
    })
pdf = ext / "originals/Dusart-1002.0442v1.pdf"
pdfdata = pdf.read_bytes()
if sha(pdfdata) != spec["pdfSha"] or not pdfdata.startswith(b"%PDF-") or b"%%EOF" not in pdfdata[-2048:]:
    raise RuntimeError("Fixed primary PDF incomplete or changed")
add_source("evidence/papers/Dusart-1002.0442v1.pdf",pdfdata,{
    "kind":"official-primary-PDF", "url":"https://arxiv.org/pdf/1002.0442v1",
    "version":"1002.0442v1", "observedCheckedUtc":"2026-10-04T16:01:26Z",
    "retainedPath":str(pdf).replace("\\","/"), "mathematicalAcceptance":"primary-source-only",
})
terminalraw = git_bytes(repo,spec["repoBase"],spec["terminalSignature"])
terminal = json.loads(terminalraw)
summary = {key:terminal.get(key) for key in
           ["utc","verifier","status","fixedSourceCommit","run","archiveMembers","boundManifestMembers","fixedClosureSources"]}
summary.update({
    "kind":"administrative-selected-fields-not-new-verification",
    "originalSignaturePath":spec["terminalSignature"],"originalSignatureSha256":sha(terminalraw),
    "originalSignatureBytes":len(terminalraw), "sourceCommit":spec["repoBase"],
    "interpretation":"The accepted original_tail_of_gap consumer still needs a genuine G input; it is not an unconditional infinite-tail supplier.",
    "fullSignatureIncluded":False,
})
write_json(dispatch/"ORIGINAL-CONSUMER-ACCEPTANCE-SUMMARY.json",summary)
add_source("evidence/status/ORIGINAL-CONSUMER-ACCEPTANCE-SUMMARY.json",
           (dispatch/"ORIGINAL-CONSUMER-ACCEPTANCE-SUMMARY.json").read_bytes(),{
    "kind":"selected-fields-derivative","derivedFromCommit":spec["repoBase"],
    "derivedFromPath":spec["terminalSignature"],"derivedFromSha256":sha(terminalraw),
    "retainedPath":str(dispatch/"ORIGINAL-CONSUMER-ACCEPTANCE-SUMMARY.json").replace("\\","/"),
})
write_json(dispatch/"SOURCES.json",{
    "purpose":"source and byte provenance, not mathematical acceptance",
    "createdUtc":datetime.now(timezone.utc).isoformat(),"sources":sources,
    "notIncluded":["complete Mathlib dependency closure","compiled .olean files",
                   "old execution ZIPs or binary proof parts","missing analytic upstream proofs or computational tables"],
})
for name in ["README.md","TASK.md","PROMPT.md","CONTEXT.md","SOURCE-INDEX.md","SOURCES.json"]:
    (payload/name).write_bytes((dispatch/name).read_bytes())
review = dispatch/"reviews/SCOPE-SOURCE-REVIEW.md"
if not review.is_file(): raise RuntimeError("Named scope/source review is missing")
review_dest=payload/"reviews/SCOPE-SOURCE-REVIEW.md"
review_dest.parent.mkdir(parents=True,exist_ok=True)
review_dest.write_bytes(review.read_bytes())

members = []
for path in sorted(payload.rglob("*")):
    if path.is_file() and path.name != "CONTENTS.json":
        data=path.read_bytes()
        members.append({"member":path.relative_to(payload).as_posix(),"bytes":len(data),"sha256":sha(data),
                        "retainedPath":str(path).replace("\\","/")})
contents={"manifestSelfExcluded":True,"members":members}
write_json(dispatch/"CONTENTS.json",contents)
(payload/"CONTENTS.json").write_bytes((dispatch/"CONTENTS.json").read_bytes())
zip_path=ext/spec["zipName"]
with zipfile.ZipFile(zip_path,"w",zipfile.ZIP_DEFLATED,compresslevel=6) as z:
    for path in sorted(payload.rglob("*")):
        if path.is_file(): z.write(path,path.relative_to(payload).as_posix())
with zipfile.ZipFile(zip_path) as z:
    if z.testzip() is not None: raise RuntimeError("ZIP CRC failure")
    names=z.namelist()
    expected={m["member"] for m in members}|{"CONTENTS.json"}
    if len(names)!=len(set(names)) or set(names)!=expected: raise RuntimeError("ZIP member set mismatch")
    for item in members:
        data=z.read(item["member"])
        if len(data)!=item["bytes"] or sha(data)!=item["sha256"]:
            raise RuntimeError(f"ZIP member mismatch: {item['member']}")
        if Path(item["retainedPath"]).read_bytes()!=data: raise RuntimeError("Retained byte mismatch")
    if z.read("CONTENTS.json")!=(dispatch/"CONTENTS.json").read_bytes(): raise RuntimeError("Manifest mismatch")
    for mandatory in ["TASK.md","CONTEXT.md","SOURCE-INDEX.md","PROMPT.md",
                      "evidence/lean/ThetaTail.lean","evidence/lean/GapDefinitions.lean",
                      "evidence/papers/Dusart-1002.0442v1.pdf","reviews/SCOPE-SOURCE-REVIEW.md"]:
        if mandatory not in names: raise RuntimeError("Required cold-readable entry is absent")
zipdata=zip_path.read_bytes()
package={
    "status":"ready-not-dispatched","packetId":spec["id"],"archive":str(zip_path).replace("\\","/"),
    "archiveBytes":len(zipdata),"archiveSha256":sha(zipdata),"nativeMemberCount":len(names),
    "sourceMemberCount":len(sources),"uncompressedBytes":sum(m["bytes"] for m in members),
    "sourceBaseCommit":spec["repoBase"],"verifiedUtc":datetime.now(timezone.utc).isoformat(),
    "checks":{"CRC":True,"uniqueMemberSet":True,"allMemberSizeSha256":True,
              "retainedByteEquality":True,"coldReadableRequiredPaths":True},
    "acceptanceLimit":"Packaging and named source/scope review only; no new mathematical, Lean, or kernel acceptance.",
    "leanRunCount":0,"newCIRunCount":0,
}
write_json(dispatch/"PACKAGE.json",package)
print(json.dumps(package,ensure_ascii=False))
